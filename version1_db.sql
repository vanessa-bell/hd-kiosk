-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `kioskdb` DEFAULT CHARACTER SET utf8 ;
USE `kioskdb` ;

-- -----------------------------------------------------
-- Table `mydb`.`FAQs`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `kioskdb`.`FAQs` (
  `id` INT UNSIGNED NOT NULL,
  `question` VARCHAR(400) NULL,
  `answer` NVARCHAR(700) NULL,
  `counter` INT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Statistics`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `kioskdb`.`Statistics` (
  `id` INT UNSIGNED NOT NULL,
  `timestamp` DATETIME NULL,
  `FAQs_id` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`id`, `FAQs_id`),
  INDEX `fk_Statistics_FAQs_idx` (`FAQs_id` ASC),
  CONSTRAINT `fk_Statistics_FAQs`
    FOREIGN KEY (`FAQs_id`)
    REFERENCES `kioskdb`.`FAQs` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

INSERT INTO `FAQs` ( id, question, answer, counter ) 
VALUES ( 1, 'What is Hacker Dojo?', 'Hacker Dojo is a community of engineers, artists, scientists, activists, entrepreneurs and other creative people centered around a co-working and social facility in Mountain View, CA. Feel free to drop by and see for yourself what the Dojo is all about. The best times to visit are when one of the many events is taking place.', 0 );

INSERT INTO `FAQs` ( id, question, answer, counter ) 
VALUES ( 2, 'What does the name "Hacker Dojo" mean? What is a hacker?', 'A hacker is anyone that is skilled at what he or she does; an artisan.  A dojo is a place where one learns or trains.', 0 );

INSERT INTO `FAQs` ( id, question, answer, counter ) 
VALUES ( 3, 'What is the history of Hacker Dojo?', "We've actually got a whole history page for that.", 0 );

INSERT INTO `FAQs` ( id, question, answer, counter ) 
VALUES ( 4, 'Who are the Members?', "Quite various.   See the current list on-line.", 0 );

INSERT INTO `FAQs` ( id, question, answer, counter ) 
VALUES ( 5, 'How much does membership cost?', "The regular membership is $125/mo. The hardship rate is available for people who are currently full time students.  We're a non-profit (and a start-up, like most of our members!) Without our members supporting us, we would cease to exist. We'd love to foster the spirit of entrepreneurship as much as we can, but the hardship rate is not for start-ups.", 0 );

INSERT INTO `FAQs` ( id, question, answer, counter ) 
VALUES ( 6, 'What are the benefits of membership?', "If you are a creative, entrepreneurial spirit who loves what you do and wants to meet like-minded people in Silicon Valley, then Hacker Dojo is the place for you to meet kindred spirits.   Hacker Dojo is the world's greatest coffeehouse, where the WiFi is fast, the coffee is free, and you can choose a chatty room or a quiet one. Read more about the Benefits of membership: Benefits of the Dojo", 0 );

INSERT INTO `FAQs` ( id, question, answer, counter ) 
VALUES ( 7, "I'm going on vacation for a month. Can I put my membership on hold?", "You can log into dashboard.hackerdojo.com and click on the my billing tab to pause membership. Although, we want people to feel like the are supporting our community, as opposed to a straightforward transaction of $195/mo for x,y,z privileges.", 0 );

INSERT INTO `FAQs` ( id, question, answer, counter ) 
VALUES ( 8, "Is there a Refund Policy? Where is it?", "Yes. The Dojo does not refund membership dues. That's because we already have monthly instead of annual dues. If that sounds heartless, read the exceptions in the full Refund Policy.", 0 );

INSERT INTO `FAQs` ( id, question, answer, counter ) 
VALUES ( 9, "When is the Dojo open?", " We are open 24/7 to members-- immediately upon signing up you can come in and get your own RFID key. We're open M-F 8am-10pm for visitors.  Consult the Hours of Operation pages for up-to-date information.", 0 );

INSERT INTO `FAQs` ( id, question, answer, counter ) 
VALUES ( 10, "What kind of work can be done at the Hacker Dojo?", "Popular activities at the Dojo have included quiet coding, classes, meet-ups, electronics fabrication, quilting, juggling, bread baking, parties, job fairs, robotics demonstrations.  Any activity that can be safely done indoors and doesn't require heavy equipment or ventilation is encouraged.", 0 );

INSERT INTO `FAQs` ( id, question, answer, counter ) 
VALUES ( 11, "Can I leave my [monitor, workstation, yoga mat, etc] at the Dojo?", "In general you can bring what you like, but you need to take it home with you when you leave.  The exception is if you want to bring something in for communal use, and you are confident that multiple other people will also find it useful.", 0 );

INSERT INTO `FAQs` ( id, question, answer, counter ) 
VALUES ( 12, "Can I receive mail or packages at the Dojo?", "This is discouraged, but not prohibited.  It certainly is at-your-own-risk since we don't have staff to guard your packages.", 0 );

INSERT INTO `FAQs` ( id, question, answer, counter ) 
VALUES ( 13, "How can I or my company host an event here?", "Read the events rules.", 0 );

INSERT INTO `FAQs` ( id, question, answer, counter ) 
VALUES ( 14, "I want to start another Hacker Dojo. Can I?", "We encourage you to make more hackerspaces wherever you are, but please respect our branding and trademarks.", 0 );

INSERT INTO `FAQs` ( id, question, answer, counter ) 
VALUES ( 15, "Will you help me start another hackerspace?", "Sorry, we don't really have the bandwidth to intensively mentor other spaces, though we do love answering questions and sharing our experiences with those interested in learning about them. You might find more hands-on-training, assistance with your 501c3 application, and guides to other logistics at the School Factory", 0 );

INSERT INTO `FAQs` ( id, question, answer, counter ) 
VALUES ( 16, "Can Hacker Dojo write me a lease for my H1-B requirements?", "Sorry, the membership we offer is very different from a lease agreement.  In particular, a lease provides dedicated space for a single party, something we do not provide.", 0 );

INSERT INTO `FAQs` ( id, question, answer, counter ) 
VALUES ( 17, "Can I use pictures I took of Hacker Dojo in my book/on my website/in my newspaper?", "Yes! So long as: You don't pretend to be us. The images are used in reference to actual Hacker Dojo or something actually happening here, (not just as a splash of color on a web store about evil hackers, moon rabbits, or something else random)Everybody in the picture was cool with you taking it and using it, and any projects photographed were done so with the permission of their owners. We love hearing about this stuff though, so if you do feature us, send us a link", 0 );

INSERT INTO `FAQs` ( id, question, answer, counter ) 
VALUES ( 18, "Is the Hacker Dojo Child-Proof?", "NO", 0 );

INSERT INTO `FAQs` ( id, question, answer, counter ) 
VALUES ( 19, "Can you help me break into a website?", 'No, you are confusing the word "hacker" with "cracker".  Hackers build things; crackers break them.  Hacker Dojo does not condone/encourage nor in any way provide tools that might be used to compromise/hack into other websites.', 0 );

INSERT INTO `FAQs` ( id, question, answer, counter ) 
VALUES ( 20, "Where are your logos and branding guidelines?", "HERE", 0 );
