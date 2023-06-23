<?php

namespace App\Service;

use Aws\Credentials\CredentialProvider;
use Aws\Exception\AwsException;
use Aws\S3\S3Client;
use App\Service\ServiceInterface;
use Symfony\Component\HttpFoundation\File\UploadedFile;

class SaveUploadedFileService implements ServiceInterface
{

    /**
     * @var UploadedFile
     */
    private $uploadedFile;

    /**
     * @var string
     */
    private $tmpFolderPath;

    public function setUploadedFile(UploadedFile $uploadedFile): void
    {
        $this->uploadedFile = $uploadedFile;
    }

    public function setTmpFolderPath(string $tmpFolderPath): void
    {
        $this->tmpFolderPath = $tmpFolderPath;
    }

    public function call(): bool
    {
        $bucket = getenv('S3_BUCKET');
        $fileName = md5(uniqid($bucket . '_', false)) . '.' . $this->uploadedFile->guessExtension();

        $this->uploadedFile->move(
            $this->tmpFolderPath,
            $fileName
        );

        try {
            $s3Client = new S3Client([
                'region' => 'us-east-2',
                'version' => 'latest',
                'credentials' => CredentialProvider::env()
            ]);

            $s3Client->putObject([
                'Bucket'     => $bucket,
                'Key'        => $fileName,
                'SourceFile' => $this->tmpFolderPath . $fileName,
            ]);
        } catch (AwsException $e) {
            echo $e->getMessage() . "\n";
            return false;
        }

        return true;
    }
}
