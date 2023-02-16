<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20230216152625 extends AbstractMigration
{
    public function getDescription(): string
    {
        return '';
    }

    public function up(Schema $schema): void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE step_recipe DROP FOREIGN KEY FK_F7967C4D84A0A3ED');
        $this->addSql('DROP TABLE step_recipe');
    }

    public function down(Schema $schema): void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('CREATE TABLE step_recipe (id INT AUTO_INCREMENT NOT NULL, content_id INT NOT NULL, INDEX IDX_F7967C4D84A0A3ED (content_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB COMMENT = \'\' ');
        $this->addSql('ALTER TABLE step_recipe ADD CONSTRAINT FK_F7967C4D84A0A3ED FOREIGN KEY (content_id) REFERENCES recipe (id)');
    }
}
