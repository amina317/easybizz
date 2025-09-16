-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mar. 16 sep. 2025 à 20:54
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `easybizz`
--

-- --------------------------------------------------------

--
-- Structure de la table `bizz`
--

CREATE TABLE `bizz` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `boutique_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `rating` decimal(3,1) DEFAULT NULL,
  `reviews` int(11) NOT NULL DEFAULT 0,
  `price` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `bizz`
--

INSERT INTO `bizz` (`id`, `boutique_id`, `category_id`, `product_name`, `rating`, `reviews`, `price`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Produit Bizz Test', 4.5, 10, 150.00, '2025-09-15 18:37:36', '2025-09-15 18:37:36'),
(2, 1, 1, 'Bizz PS', NULL, 0, 150.00, '2025-09-15 19:01:59', '2025-09-15 19:01:59'),
(3, 1, 1, 'Produit X', NULL, 0, 120.50, '2025-09-15 19:16:56', '2025-09-15 19:16:56'),
(4, 1, 1, 'Produit Bizz PS', 4.2, 2, 120.00, '2025-09-16 15:17:24', '2025-09-16 15:17:24');

-- --------------------------------------------------------

--
-- Structure de la table `boutiques`
--

CREATE TABLE `boutiques` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `boutiques`
--

INSERT INTO `boutiques` (`id`, `name`, `address`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Boutique 1', 'Adresse 1', 1, '2025-09-15 17:46:31', '2025-09-15 17:46:31'),
(2, 'Boutique 2', 'Adresse 2', 1, '2025-09-15 17:46:31', '2025-09-15 17:46:31'),
(3, 'Boutique A', 'Adresse A', 1, '2025-09-15 17:48:37', '2025-09-15 17:48:37'),
(4, 'Boutique B', 'Adresse B', 1, '2025-09-15 17:48:37', '2025-09-15 17:48:37'),
(5, 'Boutique C', 'Adresse C', 1, '2025-09-15 17:48:37', '2025-09-15 17:48:37'),
(6, 'Nouvelle Boutique', 'Adresse Test', 1, '2025-09-15 18:34:22', '2025-09-15 18:34:22'),
(7, 'Boutique Test', 'Adresse Test', 1, '2025-09-15 18:37:35', '2025-09-15 18:37:35'),
(8, 'Boutique PS', 'Adresse PS', 1, '2025-09-15 19:07:51', '2025-09-15 19:07:51'),
(9, 'Boutique PS', 'Adresse PS', 1, '2025-09-15 19:10:17', '2025-09-15 19:10:17'),
(10, 'Boutique_482', 'Adresse Test', 1, '2025-09-15 19:21:17', '2025-09-15 19:21:17'),
(11, 'Boutique_835', 'Adresse Test', 1, '2025-09-15 19:22:18', '2025-09-15 19:22:18'),
(12, 'Boutique_852', 'Adresse Test', 1, '2025-09-15 19:24:48', '2025-09-15 19:24:48'),
(13, 'Boutique_298', 'Adresse Test', 1, '2025-09-15 19:28:21', '2025-09-15 19:28:21'),
(14, 'Boutique_55', 'Adresse Test', 1, '2025-09-15 19:37:27', '2025-09-15 19:37:27'),
(15, 'Boutique_987', 'Adresse Test', 1, '2025-09-15 19:40:30', '2025-09-15 19:40:30'),
(16, 'Boutique_712', 'Adresse Test', 1, '2025-09-15 19:40:43', '2025-09-15 19:40:43'),
(17, 'Boutique_934', 'Adresse Test', 1, '2025-09-15 19:42:06', '2025-09-15 19:42:06'),
(18, 'Boutique PS New', 'Adresse PS', 1, '2025-09-16 15:17:04', '2025-09-16 15:17:04');

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Catégorie 1', '2025-09-15 17:46:32', '2025-09-15 17:46:32'),
(2, 'Catégorie 2', '2025-09-15 17:46:32', '2025-09-15 17:46:32'),
(3, 'Catégorie X', '2025-09-15 17:48:37', '2025-09-15 17:48:37'),
(4, 'Catégorie Y', '2025-09-15 17:48:37', '2025-09-15 17:48:37'),
(5, 'Catégorie Z', '2025-09-15 17:48:37', '2025-09-15 17:48:37');

-- --------------------------------------------------------

--
-- Structure de la table `clients`
--

CREATE TABLE `clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `total_orders` int(11) NOT NULL DEFAULT 0,
  `last_order_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `clients`
--

INSERT INTO `clients` (`id`, `name`, `email`, `total_orders`, `last_order_date`, `created_at`, `updated_at`) VALUES
(1, 'Client Test', 'clienttest@example.com', 0, NULL, '2025-09-15 18:37:37', '2025-09-15 18:37:37'),
(2, 'Client Test', 'client@test.com', 0, NULL, '2025-09-15 18:46:57', '2025-09-15 18:46:57'),
(3, 'Client PS', 'clientps@example.com', 0, NULL, '2025-09-15 19:01:17', '2025-09-15 19:01:17'),
(4, 'Client_657', 'client657@example.com', 0, NULL, '2025-09-15 19:21:16', '2025-09-15 19:21:16'),
(5, 'Client_747', 'client305@example.com', 0, NULL, '2025-09-15 19:22:17', '2025-09-15 19:22:17'),
(6, 'Client_248', 'client989@example.com', 0, NULL, '2025-09-15 19:24:47', '2025-09-15 19:24:47'),
(7, 'Client_45', 'client239@example.com', 0, NULL, '2025-09-15 19:28:21', '2025-09-15 19:28:21'),
(8, 'Client_883', 'client953@example.com', 0, NULL, '2025-09-15 19:37:28', '2025-09-15 19:37:28'),
(9, 'Client_136', 'client234@example.com', 0, NULL, '2025-09-15 19:40:32', '2025-09-15 19:40:32'),
(10, 'Client_827', 'client133@example.com', 0, NULL, '2025-09-15 19:40:44', '2025-09-15 19:40:44'),
(11, 'Client_699', 'client612@example.com', 0, NULL, '2025-09-15 19:42:08', '2025-09-15 19:42:08'),
(12, 'Nouveau Client PS', 'nouveauclientps@example.com', 0, NULL, '2025-09-16 15:09:37', '2025-09-16 15:09:37'),
(13, 'Client Nouveau', 'clientnouveau@example.com', 0, NULL, '2025-09-16 15:41:15', '2025-09-16 15:41:15');

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `inventory`
--

CREATE TABLE `inventory` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `purchased_quantity` int(11) NOT NULL DEFAULT 0,
  `sold_quantity` int(11) NOT NULL DEFAULT 0,
  `returned_quantity` int(11) NOT NULL DEFAULT 0,
  `damaged_quantity` int(11) NOT NULL DEFAULT 0,
  `current_quantity` int(11) NOT NULL DEFAULT 0,
  `unit_price` decimal(10,2) NOT NULL,
  `total_cost` decimal(12,2) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `inventory`
--

INSERT INTO `inventory` (`id`, `product_id`, `category_id`, `product_name`, `purchased_quantity`, `sold_quantity`, `returned_quantity`, `damaged_quantity`, `current_quantity`, `unit_price`, `total_cost`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Produit 1', 100, 0, 0, 0, 100, 50.00, 5000.00, 1, '2025-09-15 17:46:33', '2025-09-15 17:46:33'),
(2, 2, 2, 'Produit 2', 200, 0, 0, 0, 200, 75.00, 15000.00, 1, '2025-09-15 17:46:33', '2025-09-15 17:46:33'),
(4, 4, 4, 'Produit Boutique A-Catégorie Y', 137, 0, 0, 0, 160, 90.00, 6115.00, 1, '2025-09-15 17:48:40', '2025-09-15 17:48:40'),
(5, 5, 5, 'Produit Boutique A-Catégorie Z', 57, 0, 0, 0, 159, 54.00, 6609.00, 1, '2025-09-15 17:48:40', '2025-09-15 17:48:40'),
(6, 6, 3, 'Produit Boutique B-Catégorie X', 192, 0, 0, 0, 60, 72.00, 9538.00, 1, '2025-09-15 17:48:40', '2025-09-15 17:48:40'),
(7, 7, 4, 'Produit Boutique B-Catégorie Y', 175, 0, 0, 0, 162, 71.00, 4711.00, 1, '2025-09-15 17:48:40', '2025-09-15 17:48:40'),
(8, 8, 5, 'Produit Boutique B-Catégorie Z', 182, 0, 0, 0, 103, 93.00, 3434.00, 1, '2025-09-15 17:48:40', '2025-09-15 17:48:40'),
(9, 9, 3, 'Produit Boutique C-Catégorie X', 62, 0, 0, 0, 64, 18.00, 8372.00, 1, '2025-09-15 17:48:40', '2025-09-15 17:48:40'),
(10, 10, 4, 'Produit Boutique C-Catégorie Y', 103, 0, 0, 0, 112, 15.00, 8492.00, 1, '2025-09-15 17:48:40', '2025-09-15 17:48:40'),
(11, 11, 5, 'Produit Boutique C-Catégorie Z', 92, 0, 0, 0, 65, 24.00, 3941.00, 1, '2025-09-15 17:48:40', '2025-09-15 17:48:40'),
(12, 1, 1, 'Produit Test', 100, 20, 0, 0, 80, 100.00, 8000.00, 1, '2025-09-15 18:37:38', '2025-09-15 18:37:38'),
(13, 1, 1, 'Produit Test Inventaire', 100, 0, 0, 0, 100, 50.00, 5000.00, 1, '2025-09-16 15:41:35', '2025-09-16 15:41:35'),
(14, 1, 1, 'Produit Test Inventaire', 100, 0, 0, 0, 100, 50.00, 5000.00, 1, '2025-09-16 15:50:16', '2025-09-16 15:50:16'),
(15, 1, 1, 'Produit Test', 200, 50, 5, 2, 143, 1500.00, 300000.00, 1, '2025-09-16 16:14:03', '2025-09-16 16:14:03');

-- --------------------------------------------------------

--
-- Structure de la table `merchant_inventory`
--

CREATE TABLE `merchant_inventory` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `supplier_id` bigint(20) UNSIGNED NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `barcode` varchar(255) DEFAULT NULL,
  `purchased_quantity` int(11) NOT NULL DEFAULT 0,
  `sold_quantity` int(11) NOT NULL DEFAULT 0,
  `returned_quantity` int(11) NOT NULL DEFAULT 0,
  `damaged_quantity` int(11) NOT NULL DEFAULT 0,
  `current_quantity` int(11) NOT NULL DEFAULT 0,
  `unit_price_ht` decimal(10,2) NOT NULL,
  `total_cost` decimal(12,2) NOT NULL,
  `supplier_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `merchant_inventory`
--

INSERT INTO `merchant_inventory` (`id`, `product_id`, `category_id`, `supplier_id`, `product_name`, `barcode`, `purchased_quantity`, `sold_quantity`, `returned_quantity`, `damaged_quantity`, `current_quantity`, `unit_price_ht`, `total_cost`, `supplier_name`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 'Produit Test', '123456789', 100, 20, 5, 2, 73, 50.00, 5000.00, 'Fournisseur Test', '2025-09-16 16:28:09', '2025-09-16 16:28:09');

-- --------------------------------------------------------

--
-- Structure de la table `merchant_orders`
--

CREATE TABLE `merchant_orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `supplier_id` bigint(20) UNSIGNED NOT NULL,
  `supplier_name` varchar(255) NOT NULL,
  `order_date` date NOT NULL,
  `amount` int(11) NOT NULL,
  `status` enum('pending','delivered','canceled') NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `merchant_orders`
--

INSERT INTO `merchant_orders` (`id`, `supplier_id`, `supplier_name`, `order_date`, `amount`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Supplier Test', '2025-09-16', 1200, 'pending', '2025-09-16 16:38:01', '2025-09-16 16:38:01');

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2025_09_15_163100_create_categories_table', 1),
(6, '2025_09_15_163101_create_suppliers_table', 1),
(7, '2025_09_15_163102_create_boutiques_table', 1),
(8, '2025_09_15_163103_create_clients_table', 1),
(9, '2025_09_15_163104_create_products_table', 1),
(10, '2025_09_15_163105_create_orders_table', 1),
(11, '2025_09_15_163106_create_inventory_table', 1),
(12, '2025_09_15_163107_create_bizz_table', 1),
(13, '2025_09_15_163108_create_merchant_inventory_table', 1),
(14, '2025_09_15_163109_create_merchant_orders_table', 1);

-- --------------------------------------------------------

--
-- Structure de la table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `order_date` date NOT NULL,
  `status` enum('delivered','on_hold','canceled') NOT NULL DEFAULT 'on_hold',
  `total_amount` decimal(12,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `orders`
--

INSERT INTO `orders` (`id`, `client_id`, `product_id`, `product_name`, `price`, `quantity`, `order_date`, `status`, `total_amount`, `created_at`, `updated_at`) VALUES
(1, 1, 14, 'Produit Test', 49.99, 2, '2025-09-15', 'on_hold', 99.98, '2025-09-15 18:53:24', '2025-09-15 18:53:24'),
(2, 1, 14, 'Produit Test', 49.99, 2, '2025-09-15', 'on_hold', 99.98, '2025-09-15 18:54:59', '2025-09-15 18:54:59'),
(3, 1, 14, 'Produit Test', 49.99, 2, '2025-09-15', 'on_hold', 99.98, '2025-09-15 18:57:00', '2025-09-15 18:57:00'),
(4, 1, 1, 'Produit Test PS', 49.99, 2, '2025-09-15', 'on_hold', 99.98, '2025-09-15 19:00:55', '2025-09-15 19:00:55'),
(5, 1, 1, 'Produit Test', 100.00, 2, '2025-09-15', 'on_hold', 200.00, '2025-09-15 19:19:05', '2025-09-15 19:19:05'),
(6, 1, 14, 'Produit API Test', 49.99, 2, '2025-09-16', 'on_hold', 99.98, '2025-09-16 15:11:16', '2025-09-16 15:11:16'),
(7, 1, 1, 'Produit Test', 49.99, 2, '2025-09-16', 'on_hold', 99.98, '2025-09-16 15:41:01', '2025-09-16 15:41:01'),
(8, 1, 1, 'Produit 1', 50.00, 3, '2025-09-16', 'on_hold', 150.00, '2025-09-16 15:55:28', '2025-09-16 15:55:28');

-- --------------------------------------------------------

--
-- Structure de la table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `store_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(150) NOT NULL,
  `description` text DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `barcode` varchar(50) DEFAULT NULL,
  `stock_quantity` int(11) NOT NULL DEFAULT 0,
  `unit_price` decimal(10,2) NOT NULL,
  `min_order_volume` decimal(10,2) DEFAULT NULL,
  `dimensions` text DEFAULT NULL,
  `storage_requirements` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `products`
--

INSERT INTO `products` (`id`, `store_id`, `name`, `description`, `category_id`, `barcode`, `stock_quantity`, `unit_price`, `min_order_volume`, `dimensions`, `storage_requirements`, `created_at`, `updated_at`) VALUES
(1, 1, 'Produit 1', NULL, 1, NULL, 0, 50.00, NULL, NULL, NULL, '2025-09-15 17:46:32', '2025-09-15 17:46:32'),
(2, 2, 'Produit 2', NULL, 2, NULL, 0, 75.00, NULL, NULL, NULL, '2025-09-15 17:46:32', '2025-09-15 17:46:32'),
(4, 3, 'Produit Boutique A-Catégorie Y', NULL, 4, NULL, 0, 90.00, NULL, NULL, NULL, '2025-09-15 17:48:38', '2025-09-15 17:48:38'),
(5, 3, 'Produit Boutique A-Catégorie Z', NULL, 5, NULL, 0, 54.00, NULL, NULL, NULL, '2025-09-15 17:48:38', '2025-09-15 17:48:38'),
(6, 4, 'Produit Boutique B-Catégorie X', NULL, 3, NULL, 0, 72.00, NULL, NULL, NULL, '2025-09-15 17:48:38', '2025-09-15 17:48:38'),
(7, 4, 'Produit Boutique B-Catégorie Y', NULL, 4, NULL, 0, 71.00, NULL, NULL, NULL, '2025-09-15 17:48:38', '2025-09-15 17:48:38'),
(8, 4, 'Produit Boutique B-Catégorie Z', NULL, 5, NULL, 0, 93.00, NULL, NULL, NULL, '2025-09-15 17:48:38', '2025-09-15 17:48:38'),
(9, 5, 'Produit Boutique C-Catégorie X', NULL, 3, NULL, 0, 18.00, NULL, NULL, NULL, '2025-09-15 17:48:38', '2025-09-15 17:48:38'),
(10, 5, 'Produit Boutique C-Catégorie Y', NULL, 4, NULL, 0, 15.00, NULL, NULL, NULL, '2025-09-15 17:48:38', '2025-09-15 17:48:38'),
(11, 5, 'Produit Boutique C-Catégorie Z', NULL, 5, NULL, 0, 24.00, NULL, NULL, NULL, '2025-09-15 17:48:38', '2025-09-15 17:48:38'),
(12, 1, 'Produit Test', NULL, 1, NULL, 50, 100.00, NULL, NULL, NULL, '2025-09-15 18:34:39', '2025-09-15 18:34:39'),
(13, 1, 'Produit Test', NULL, 1, NULL, 50, 100.00, NULL, NULL, NULL, '2025-09-15 18:37:36', '2025-09-15 18:37:36'),
(14, 1, 'Produit API Test', 'Test ajout produit', 1, NULL, 100, 99.99, NULL, NULL, NULL, '2025-09-15 18:45:27', '2025-09-15 18:45:27'),
(15, 1, 'Produit Test', 'Test ajout produit', 1, NULL, 50, 49.99, NULL, NULL, NULL, '2025-09-15 18:46:30', '2025-09-15 18:46:30'),
(16, 1, 'Produit Test PS', 'Description test PS', 1, NULL, 10, 99.99, NULL, NULL, NULL, '2025-09-15 19:00:31', '2025-09-15 19:00:31'),
(17, 12, 'Produit_216', NULL, 1, NULL, 50, 100.00, NULL, NULL, NULL, '2025-09-15 19:24:48', '2025-09-15 19:24:48'),
(18, 1, 'Produit PS PowerShell', 'Test via PS', 1, NULL, 20, 55.50, NULL, NULL, NULL, '2025-09-16 15:04:59', '2025-09-16 15:04:59'),
(19, 1, 'Nouveau Produit', 'Produit de test', 1, NULL, 50, 99.99, NULL, NULL, NULL, '2025-09-16 15:40:34', '2025-09-16 15:40:34'),
(20, 1, 'Produit Test', 'Description du produit', 1, 'PRD123456', 100, 1500.00, 10.00, '10x20x30 cm', 'Stocker dans un endroit sec', '2025-09-16 16:13:50', '2025-09-16 16:13:50');

-- --------------------------------------------------------

--
-- Structure de la table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `suppliers`
--

INSERT INTO `suppliers` (`id`, `name`, `email`, `address`, `created_at`, `updated_at`) VALUES
(1, 'Supplier Test', 'suppliertest@example.com', 'Adresse Fournisseur', '2025-09-16 15:43:47', '2025-09-16 15:43:47'),
(2, 'Supplier Test API', 'suppliertestapi@example.com', 'Adresse Fournisseur API', '2025-09-16 15:51:01', '2025-09-16 15:51:01'),
(3, 'Supplier Test API1', 'suppliertestapi1@example.com', 'Adresse Fournisseur API1', '2025-09-16 15:51:29', '2025-09-16 15:51:29');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `bizz`
--
ALTER TABLE `bizz`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bizz_boutique_id_foreign` (`boutique_id`),
  ADD KEY `bizz_category_id_foreign` (`category_id`);

--
-- Index pour la table `boutiques`
--
ALTER TABLE `boutiques`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`);

--
-- Index pour la table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `clients_email_unique` (`email`);

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Index pour la table `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `inventory_product_id_foreign` (`product_id`),
  ADD KEY `inventory_category_id_foreign` (`category_id`);

--
-- Index pour la table `merchant_inventory`
--
ALTER TABLE `merchant_inventory`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `merchant_inventory_barcode_unique` (`barcode`),
  ADD KEY `merchant_inventory_product_id_foreign` (`product_id`),
  ADD KEY `merchant_inventory_category_id_foreign` (`category_id`),
  ADD KEY `merchant_inventory_supplier_id_foreign` (`supplier_id`);

--
-- Index pour la table `merchant_orders`
--
ALTER TABLE `merchant_orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `merchant_orders_supplier_id_foreign` (`supplier_id`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_client_id_foreign` (`client_id`),
  ADD KEY `orders_product_id_foreign` (`product_id`);

--
-- Index pour la table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Index pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Index pour la table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_barcode_unique` (`barcode`),
  ADD KEY `products_store_id_foreign` (`store_id`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Index pour la table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `suppliers_email_unique` (`email`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `bizz`
--
ALTER TABLE `bizz`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `boutiques`
--
ALTER TABLE `boutiques`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `inventory`
--
ALTER TABLE `inventory`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pour la table `merchant_inventory`
--
ALTER TABLE `merchant_inventory`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `merchant_orders`
--
ALTER TABLE `merchant_orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT pour la table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `bizz`
--
ALTER TABLE `bizz`
  ADD CONSTRAINT `bizz_boutique_id_foreign` FOREIGN KEY (`boutique_id`) REFERENCES `boutiques` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `bizz_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

--
-- Contraintes pour la table `inventory`
--
ALTER TABLE `inventory`
  ADD CONSTRAINT `inventory_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `inventory_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `merchant_inventory`
--
ALTER TABLE `merchant_inventory`
  ADD CONSTRAINT `merchant_inventory_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `merchant_inventory_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `bizz` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `merchant_inventory_supplier_id_foreign` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`id`);

--
-- Contraintes pour la table `merchant_orders`
--
ALTER TABLE `merchant_orders`
  ADD CONSTRAINT `merchant_orders_supplier_id_foreign` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`id`);

--
-- Contraintes pour la table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `orders_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Contraintes pour la table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `products_store_id_foreign` FOREIGN KEY (`store_id`) REFERENCES `boutiques` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
