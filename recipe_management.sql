-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 30, 2022 at 07:56 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `recipe_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `recipe`
--

CREATE TABLE `recipe` (
  `category` text NOT NULL,
  `name` varchar(70) NOT NULL,
  `ingredient` text NOT NULL,
  `proced` text NOT NULL,
  `comments` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `recipe`
--

INSERT INTO `recipe` (`category`, `name`, `ingredient`, `proced`, `comments`) VALUES
(' Non-Vegetable ', ' asd ', ' ASD ', ' ASD ', '  '),
(' Non-Vegetable ', ' chicken curry ', ' 2 tbsp sunflower oil\n1 onion, thinly sliced\n2 garlic cloves, crushed\nthumb-sized piece of ginger, grated\n6 chicken thighs, boneless and skinless\n3 tbsp medium spice paste (tikka works well)\n400g can chopped tomatoes\n100g Greek yogurt\n1 small bunch of coriander, leaves chopped\n50g ground almonds\nnaan breads or cooked basmati rice, to serve ', ' STEP 1\nHeat the oil in a flameproof casserole dish or large frying pan over a medium heat. Add the onion and a generous pinch of salt and fry for 8-10 mins, or until the onion has turned golden brown and sticky. Add the garlic and ginger, cooking for a further minute.\n\nSTEP 2\nChop the chicken into chunky 3cm pieces, add to the pan and fry for 5 mins before stirring through the spice paste and tomatoes, along with 250ml water. Bring to the boil, lower to a simmer and cook on a gentle heat uncovered for 25-30 mins or until rich and slightly reduced. Stir though the yogurt, coriander and ground almonds, season and serve with warm naan or fluffy basmati rice. ', '  \ngood\nnice\nTASTY'),
(' Vegetable ', ' vegetable soup ', ' 2 Tbsp olive oil\n1 1/2 cups chopped yellow onion (1 medium)\n2 cups peeled and chopped carrots (about 5)\n1 1/4 cups chopped celery (about 3)\n4 cloves garlic , minced\n4 (14.5 oz) cans low-sodium chicken broth or vegetable broth\n2 (14.5 oz) cans diced tomatoes (undrained)\n3 cups peeled and 1/2-inch thick diced potatoes (from about 3 medium)\n1/3 cup chopped fresh parsley\n2 bay leaves\n1/2 tsp dried thyme, or 1 Tbsp fresh thyme leaves\nSalt and freshly ground black pepper\n1 1/2 cups chopped frozen or fresh green beans\n1 1/4 cups frozen or fresh corn\n1 cup frozen or fresh peas ', ' 1.Heat olive oil in a large pot over medium-high heat. \n2.Add onions, carrots, and celery and saute 4 minutes then add garlic and saute 30 seconds longer.\n3.Add in broth, tomatoes, potatoes, parsley, bay leaves, thyme and season with salt and pepper to taste.*\n4.Bring to a boil, then add green beans. \n5.Reduce heat to medium-low, cover and simmer until potatoes are almost fully tender, about 20 - 30 minutes. \n6.Add corn and peas and cook 5 minutes longer. Serve warm.\n ', '  ');

-- --------------------------------------------------------

--
-- Table structure for table `saved_recipe`
--

CREATE TABLE `saved_recipe` (
  `name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `saved_recipe`
--

INSERT INTO `saved_recipe` (`name`) VALUES
('  chicken curry  ');

-- --------------------------------------------------------

--
-- Table structure for table `user_data`
--

CREATE TABLE `user_data` (
  `user_name` varchar(50) NOT NULL,
  `pass` text NOT NULL,
  `email` text NOT NULL,
  `dob` date NOT NULL,
  `address` text NOT NULL,
  `mobile` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_data`
--

INSERT INTO `user_data` (`user_name`, `pass`, `email`, `dob`, `address`, `mobile`) VALUES
(' ERA ', ' 124 ', ' A@gmail.com ', '2016-08-03', ' dhaka ', ' 0000 '),
(' rahat ', ' 123 ', ' rahat@mail.com ', '2022-08-08', ' dff ', ' 33 '),
(' sadia ', ' 123 ', ' sadia@gmail.com ', '2022-08-02', ' Dhaka ', ' 0199293 ');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `recipe`
--
ALTER TABLE `recipe`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `user_data`
--
ALTER TABLE `user_data`
  ADD PRIMARY KEY (`user_name`),
  ADD UNIQUE KEY `user_name` (`user_name`,`email`) USING HASH,
  ADD UNIQUE KEY `user_name_2` (`user_name`,`email`) USING HASH;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
