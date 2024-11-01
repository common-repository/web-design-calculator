CREATE TABLE `inputs` (
  `input_ID` int(10) NOT NULL,
  `input_slug` varchar(60) NOT NULL,
  `input_name` varchar(100) NOT NULL,
  `input_short_name` varchar(100) NOT NULL,
  `input_description` varchar(300) NOT NULL,
  `input_value` varchar(60) NOT NULL,
  `input_required` tinyint(1) NOT NULL DEFAULT '1',
  `input_disabled` tinyint(1) NOT NULL DEFAULT '0',
  `input_time` int(20) NOT NULL,
  `input_type` varchar(60) NOT NULL,
  `input_checkbox_name` varchar(100) DEFAULT NULL,
  `field_ID` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



INSERT INTO `inputs` (`input_ID`, `input_slug`, `input_name`, `input_short_name`, `input_description`, `input_value`, `input_required`, `input_disabled`, `input_time`, `input_type`, `input_checkbox_name`, `field_ID`) VALUES
(1, 'domain', 'Yes, I already have my website\'s domain', 'I have', '', 'yes', 1, 0, 0, 'radio', NULL, 1),
(2, 'domain', 'No, we will buy a new domain', 'I don\'t have', '', 'no', 1, 0, 15, 'radio', NULL, 1),
(5, 'server', 'Yes, It is a <b>Linux Hosting</b>', 'Linux', '', 'linux', 1, 0, 0, 'radio', NULL, 2),
(6, 'server', 'Yes, It is a <b>Windows Hosting</b>', 'Windows', '', 'windows', 1, 0, 30, 'radio', NULL, 2),
(7, 'server', 'Other or not sure', 'Other or not sure', '', 'other', 1, 0, 40, 'radio', NULL, 2),
(8, 'server', 'No, we will buy a new hosting', 'I don\'t have', '', 'no', 1, 0, 30, 'radio', NULL, 2),
(9, 'static_pages', 'Home Page', 'Home Page', '', 'home', 1, 1, 360, 'checkbox', NULL, 3),
(10, 'static_pages', 'About Us Page', 'About Page', '', 'about', 0, 0, 65, 'checkbox', NULL, 3),
(11, 'static_pages', 'Privacy Policy Page', 'Privacy Page', '', 'privacy', 0, 0, 40, 'checkbox', NULL, 3),
(12, 'static_pages', 'Terms and Conditions Page', 'Terms Page', '', 'terms', 0, 0, 40, 'checkbox', NULL, 3),
(13, 'static_pages', 'Contact Us Page', 'Contact Page', '', 'contact', 0, 0, 60, 'checkbox', NULL, 3),
(14, 'more_static', 'and', 'More Custom Static Page', 'more custom static page(s)', '0', 0, 0, 60, 'number', NULL, 3),
(15, 'blog_posts', 'How many blog posts do you want to add for first?', 'Blog Posts', 'blog post(s)', '1', 0, 0, 10, 'number-checktoshow', 'Blog Page', 4),
(16, 'portfolio', 'How many portfolio items do you want to add for first?', 'Portfolio Pages', 'portfolio item(s)', '1', 0, 0, 30, 'number-checktoshow', 'Portfolio Page', 4),
(17, 'ecommerce_products', '', 'Initial Products', 'products(s)', '1', 1, 0, 20, 'number', NULL, 5),
(18, 'ecommerce_images', 'Yes, I have. / They will be ready.', 'All ready', '', 'yes', 1, 0, 0, 'radio', NULL, 6),
(19, 'ecommerce_images', 'Yes, but not all the products. I need a photography service for rest of my products.', 'Not all', '', 'half', 1, 0, 30, 'radio', NULL, 6),
(20, 'ecommerce_images', 'No, I don\'t. I need a photography service for all my products.', 'I don\'t have', '', 'no', 1, 0, 30, 'radio', NULL, 6),
(21, 'watermark', 'Yes, I would.', 'Yes', '', 'yes', 1, 0, 30, 'radio', NULL, 7),
(22, 'watermark', 'No, I don\'t need that.', 'No', '', 'no', 1, 0, 0, 'radio', NULL, 7),
(23, 'ecommerce_payment', 'Via PayPal (No requirements)', 'Paypal', '', 'paypal', 0, 0, 30, 'checkbox', NULL, 8),
(24, 'ecommerce_payment', 'Credit Card Direct Payment (Needs some merchandise information)', 'Credit Card', '', 'card', 0, 0, 360, 'checkbox', NULL, 8),
(25, 'ecommerce_payment', 'Others (Wire, Pay on Delivery, etc. )', 'Other', '', 'other', 0, 0, 360, 'checkbox', NULL, 8),
(26, 'ecommerce_ssl', 'Yes, I do.', 'Yes', '', 'yes', 1, 0, 15, 'radio', NULL, 9),
(27, 'ecommerce_ssl', 'No, I don\'t want it.', 'No', '', 'no', 1, 0, 0, 'radio', NULL, 9),
(28, 'additional', 'Logo Design', 'Logo', 'Description', 'logo', 0, 0, 500, 'checkbox', NULL, 10),
(29, 'additional', 'Custom Under Construction Page', 'Coming Soon Page', 'Description', 'underconstruction', 0, 0, 360, 'checkbox', NULL, 10),
(30, 'additional', 'Content Writing Service', 'Content', 'Description', 'content', 0, 0, 360, 'checkbox', NULL, 10),
(31, 'additional', 'Social Media Management', 'Social Media', 'Description', 'social', 0, 0, 360, 'checkbox', NULL, 10),
(32, 'additional', 'Speed Optimization', 'Speed', 'Description', 'speed', 0, 0, 365, 'checkbox', NULL, 10),
(33, 'additional', 'Organic Search Engine Optimization', 'SEO', 'Description', 'seo', 0, 0, 360, 'checkbox', NULL, 10),
(34, 'additional', 'Marketing & Advertisement', 'Marketing & Ads', 'Description', 'ads', 0, 0, 360, 'checkbox', NULL, 10),
(35, 'additional', 'Auto/Cloud Backup', 'Backup', 'Description', 'backup', 0, 0, 360, 'checkbox', NULL, 10),
(36, 'additional', 'Extra Security', 'Security', 'Description', 'security', 0, 0, 360, 'checkbox', NULL, 10),
(37, 'additional', 'Newsletter', '', 'Description', 'newsletter', 0, 0, 360, 'checkbox', NULL, 10),
(38, 'additional', 'Live Support Chat Feature', 'Chat Support', 'Description', 'chat', 0, 0, 360, 'checkbox', NULL, 10),
(39, 'additional', 'Periodic Maintenance & Updates', 'Maintenance', 'Description', 'maintenance', 0, 0, 360, 'checkbox', NULL, 10),
(40, 'additional', 'Custom Requests & Programs', 'Custom', 'Description', 'custom', 0, 0, 360, 'checkbox', NULL, 10);



CREATE TABLE `main_choices` (
  `main_choice_ID` int(10) NOT NULL,
  `main_choice_slug` varchar(60) NOT NULL,
  `main_choice_name` varchar(100) NOT NULL,
  `main_choice_description` varchar(300) NOT NULL,
  `main_choice_parent_ID` int(10) NOT NULL,
  `main_choice_active` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



INSERT INTO `main_choices` (`main_choice_ID`, `main_choice_slug`, `main_choice_name`, `main_choice_description`, `main_choice_parent_ID`, `main_choice_active`) VALUES
(1, 'ecommerce', 'E-Commerce', '', 20, 1),
(2, 'news', 'News', '', 20, 0),
(3, 'blog', 'Personal Blog', '', 20, 0),
(4, 'portfolio', 'Portfolio', '', 20, 0),
(5, 'promotion', 'Promotion', '', 20, 0),
(6, 'seo', 'Search Engine Optimization (SEO)', '', 30, 0),
(7, 'socialmedia', 'Social Media Management', '', 30, 0),
(8, 'logo', 'Logo Design', '', 30, 0),
(9, 'marketing', 'Marketing & Advertisement', '', 30, 0),
(10, 'backup', 'Auto/Cloud Backup', '', 30, 0),
(11, 'security', 'Extra Security', '', 30, 0),
(12, 'speed', 'Speed Optimization', '', 30, 0),
(13, 'newsletter', 'Newsletter', '', 30, 0),
(14, 'chat', 'Live Support Chat Feature', '', 30, 0),
(15, 'maintenance', 'Periodic Maintenance & Updates', '', 30, 0),
(16, 'content', 'Content Writing', '', 30, 0),
(17, 'custom', 'Custom Requests', '', 30, 0),
(20, 'website', 'New Website', '', 0, 1),
(30, 'feature', 'New Feature For Current Website', '', 0, 0),
(40, 'symbol', 'BZ$', '', 0, 0);



CREATE TABLE `currency` (
  country  VARCHAR(100),
  currency VARCHAR(100),
  code     VARCHAR(100),
  symbol   NVARCHAR(100)
);


ALTER TABLE currency CONVERT TO CHARACTER SET utf8;


INSERT INTO currency (country, currency, code, symbol) VALUES ('Albania', 'Leke', 'ALL', 'Lek');
INSERT INTO currency (country, currency, code, symbol) VALUES ('America', 'Dollars', 'USD', '$');
INSERT INTO currency (country, currency, code, symbol) VALUES ('Afghanistan', 'Afghanis', 'AFN', '؋');
INSERT INTO currency (country, currency, code, symbol) VALUES ('Argentina', 'Pesos', 'ARS', '$');
INSERT INTO currency (country, currency, code, symbol) VALUES ('Aruba', 'Guilders', 'AWG', 'ƒ');
INSERT INTO currency (country, currency, code, symbol) VALUES ('Australia', 'Dollars', 'AUD', '$');
INSERT INTO currency (country, currency, code, symbol) VALUES ('Azerbaijan', 'New Manats', 'AZN', 'ман');
INSERT INTO currency (country, currency, code, symbol) VALUES ('Bahamas', 'Dollars', 'BSD', '$');
INSERT INTO currency (country, currency, code, symbol) VALUES ('Barbados', 'Dollars', 'BBD', '$');
INSERT INTO currency (country, currency, code, symbol) VALUES ('Belarus', 'Rubles', 'BYR', 'p.');
INSERT INTO currency (country, currency, code, symbol) VALUES ('Belgium', 'Euro', 'EUR', '€');
INSERT INTO currency (country, currency, code, symbol) VALUES ('Beliz', 'Dollars', 'BZD', 'BZ$');
INSERT INTO currency (country, currency, code, symbol) VALUES ('Bermuda', 'Dollars', 'BMD', '$');
INSERT INTO currency (country, currency, code, symbol) VALUES ('Bolivia', 'Bolivianos', 'BOB', '$b');
INSERT INTO currency (country, currency, code, symbol) VALUES ('Bosnia and Herzegovina', 'Convertible Marka', 'BAM', 'KM');
INSERT INTO currency (country, currency, code, symbol) VALUES ('Botswana', 'Pula', 'BWP', 'P');
INSERT INTO currency (country, currency, code, symbol) VALUES ('Bulgaria', 'Leva', 'BGN', 'лв');
INSERT INTO currency (country, currency, code, symbol) VALUES ('Brazil', 'Reais', 'BRL', 'R$');
INSERT INTO currency (country, currency, code, symbol) VALUES ('Britain (United Kingdom)', 'Pounds', 'GBP', '£');
INSERT INTO currency (country, currency, code, symbol) VALUES ('Brunei Darussalam', 'Dollars', 'BND', '$');
INSERT INTO currency (country, currency, code, symbol) VALUES ('Cambodia', 'Riels', 'KHR', '៛');
INSERT INTO currency (country, currency, code, symbol) VALUES ('Canada', 'Dollars', 'CAD', '$');
INSERT INTO currency (country, currency, code, symbol) VALUES ('Cayman Islands', 'Dollars', 'KYD', '$');
INSERT INTO currency (country, currency, code, symbol) VALUES ('Chile', 'Pesos', 'CLP', '$');
INSERT INTO currency (country, currency, code, symbol) VALUES ('China', 'Yuan Renminbi', 'CNY', '¥');
INSERT INTO currency (country, currency, code, symbol) VALUES ('Colombia', 'Pesos', 'COP', '$');
INSERT INTO currency (country, currency, code, symbol) VALUES ('Costa Rica', 'Colón', 'CRC', '₡');
INSERT INTO currency (country, currency, code, symbol) VALUES ('Croatia', 'Kuna', 'HRK', 'kn');
INSERT INTO currency (country, currency, code, symbol) VALUES ('Cuba', 'Pesos', 'CUP', '₱');
INSERT INTO currency (country, currency, code, symbol) VALUES ('Cyprus', 'Euro', 'EUR', '€');
INSERT INTO currency (country, currency, code, symbol) VALUES ('Czech Republic', 'Koruny', 'CZK', 'Kč');
INSERT INTO currency (country, currency, code, symbol) VALUES ('Denmark', 'Kroner', 'DKK', 'kr');
INSERT INTO currency (country, currency, code, symbol) VALUES ('Dominican Republic', 'Pesos', 'DOP ', 'RD$');
INSERT INTO currency (country, currency, code, symbol) VALUES ('East Caribbean', 'Dollars', 'XCD', '$');
INSERT INTO currency (country, currency, code, symbol) VALUES ('Egypt', 'Pounds', 'EGP', '£');
INSERT INTO currency (country, currency, code, symbol) VALUES ('El Salvador', 'Colones', 'SVC', '$');
INSERT INTO currency (country, currency, code, symbol) VALUES ('England (United Kingdom)', 'Pounds', 'GBP', '£');
INSERT INTO currency (country, currency, code, symbol) VALUES ('Euro', 'Euro', 'EUR', '€');
INSERT INTO currency (country, currency, code, symbol) VALUES ('Falkland Islands', 'Pounds', 'FKP', '£');
INSERT INTO currency (country, currency, code, symbol) VALUES ('Fiji', 'Dollars', 'FJD', '$');
INSERT INTO currency (country, currency, code, symbol) VALUES ('France', 'Euro', 'EUR', '€');
INSERT INTO currency (country, currency, code, symbol) VALUES ('Ghana', 'Cedis', 'GHC', '¢');
INSERT INTO currency (country, currency, code, symbol) VALUES ('Gibraltar', 'Pounds', 'GIP', '£');
INSERT INTO currency (country, currency, code, symbol) VALUES ('Greece', 'Euro', 'EUR', '€');
INSERT INTO currency (country, currency, code, symbol) VALUES ('Guatemala', 'Quetzales', 'GTQ', 'Q');
INSERT INTO currency (country, currency, code, symbol) VALUES ('Guernsey', 'Pounds', 'GGP', '£');
INSERT INTO currency (country, currency, code, symbol) VALUES ('Guyana', 'Dollars', 'GYD', '$');
INSERT INTO currency (country, currency, code, symbol) VALUES ('Holland (Netherlands)', 'Euro', 'EUR', '€');
INSERT INTO currency (country, currency, code, symbol) VALUES ('Honduras', 'Lempiras', 'HNL', 'L');
INSERT INTO currency (country, currency, code, symbol) VALUES ('Hong Kong', 'Dollars', 'HKD', '$');
INSERT INTO currency (country, currency, code, symbol) VALUES ('Hungary', 'Forint', 'HUF', 'Ft');
INSERT INTO currency (country, currency, code, symbol) VALUES ('Iceland', 'Kronur', 'ISK', 'kr');
INSERT INTO currency (country, currency, code, symbol) VALUES ('India', 'Rupees', 'INR', 'Rp');
INSERT INTO currency (country, currency, code, symbol) VALUES ('Indonesia', 'Rupiahs', 'IDR', 'Rp');
INSERT INTO currency (country, currency, code, symbol) VALUES ('Iran', 'Rials', 'IRR', '﷼');
INSERT INTO currency (country, currency, code, symbol) VALUES ('Ireland', 'Euro', 'EUR', '€');
INSERT INTO currency (country, currency, code, symbol) VALUES ('Isle of Man', 'Pounds', 'IMP', '£');
INSERT INTO currency (country, currency, code, symbol) VALUES ('Israel', 'New Shekels', 'ILS', '₪');
INSERT INTO currency (country, currency, code, symbol) VALUES ('Italy', 'Euro', 'EUR', '€');
INSERT INTO currency (country, currency, code, symbol) VALUES ('Jamaica', 'Dollars', 'JMD', 'J$');
INSERT INTO currency (country, currency, code, symbol) VALUES ('Japan', 'Yen', 'JPY', '¥');
INSERT INTO currency (country, currency, code, symbol) VALUES ('Jersey', 'Pounds', 'JEP', '£');
INSERT INTO currency (country, currency, code, symbol) VALUES ('Kazakhstan', 'Tenge', 'KZT', 'лв');
INSERT INTO currency (country, currency, code, symbol) VALUES ('Korea (North)', 'Won', 'KPW', '₩');
INSERT INTO currency (country, currency, code, symbol) VALUES ('Korea (South)', 'Won', 'KRW', '₩');
INSERT INTO currency (country, currency, code, symbol) VALUES ('Kyrgyzstan', 'Soms', 'KGS', 'лв');
INSERT INTO currency (country, currency, code, symbol) VALUES ('Laos', 'Kips', 'LAK', '₭');
INSERT INTO currency (country, currency, code, symbol) VALUES ('Latvia', 'Lati', 'LVL', 'Ls');
INSERT INTO currency (country, currency, code, symbol) VALUES ('Lebanon', 'Pounds', 'LBP', '£');
INSERT INTO currency (country, currency, code, symbol) VALUES ('Liberia', 'Dollars', 'LRD', '$');
INSERT INTO currency (country, currency, code, symbol) VALUES ('Liechtenstein', 'Switzerland Francs', 'CHF', 'CHF');
INSERT INTO currency (country, currency, code, symbol) VALUES ('Lithuania', 'Litai', 'LTL', 'Lt');
INSERT INTO currency (country, currency, code, symbol) VALUES ('Luxembourg', 'Euro', 'EUR', '€');
INSERT INTO currency (country, currency, code, symbol) VALUES ('Macedonia', 'Denars', 'MKD', 'ден');
INSERT INTO currency (country, currency, code, symbol) VALUES ('Malaysia', 'Ringgits', 'MYR', 'RM');
INSERT INTO currency (country, currency, code, symbol) VALUES ('Malta', 'Euro', 'EUR', '€');
INSERT INTO currency (country, currency, code, symbol) VALUES ('Mauritius', 'Rupees', 'MUR', '₨');
INSERT INTO currency (country, currency, code, symbol) VALUES ('Mexico', 'Pesos', 'MXN', '$');
INSERT INTO currency (country, currency, code, symbol) VALUES ('Mongolia', 'Tugriks', 'MNT', '₮');
INSERT INTO currency (country, currency, code, symbol) VALUES ('Mozambique', 'Meticais', 'MZN', 'MT');
INSERT INTO currency (country, currency, code, symbol) VALUES ('Namibia', 'Dollars', 'NAD', '$');
INSERT INTO currency (country, currency, code, symbol) VALUES ('Nepal', 'Rupees', 'NPR', '₨');
INSERT INTO currency (country, currency, code, symbol) VALUES ('Netherlands Antilles', 'Guilders', 'ANG', 'ƒ');
INSERT INTO currency (country, currency, code, symbol) VALUES ('Netherlands', 'Euro', 'EUR', '€');
INSERT INTO currency (country, currency, code, symbol) VALUES ('New Zealand', 'Dollars', 'NZD', '$');
INSERT INTO currency (country, currency, code, symbol) VALUES ('Nicaragua', 'Cordobas', 'NIO', 'C$');
INSERT INTO currency (country, currency, code, symbol) VALUES ('Nigeria', 'Nairas', 'NGN', '₦');
INSERT INTO currency (country, currency, code, symbol) VALUES ('North Korea', 'Won', 'KPW', '₩');
INSERT INTO currency (country, currency, code, symbol) VALUES ('Norway', 'Krone', 'NOK', 'kr');
INSERT INTO currency (country, currency, code, symbol) VALUES ('Oman', 'Rials', 'OMR', '﷼');
INSERT INTO currency (country, currency, code, symbol) VALUES ('Pakistan', 'Rupees', 'PKR', '₨');
INSERT INTO currency (country, currency, code, symbol) VALUES ('Panama', 'Balboa', 'PAB', 'B/.');
INSERT INTO currency (country, currency, code, symbol) VALUES ('Paraguay', 'Guarani', 'PYG', 'Gs');
INSERT INTO currency (country, currency, code, symbol) VALUES ('Peru', 'Nuevos Soles', 'PEN', 'S/.');
INSERT INTO currency (country, currency, code, symbol) VALUES ('Philippines', 'Pesos', 'PHP', 'Php');
INSERT INTO currency (country, currency, code, symbol) VALUES ('Poland', 'Zlotych', 'PLN', 'zł');
INSERT INTO currency (country, currency, code, symbol) VALUES ('Qatar', 'Rials', 'QAR', '﷼');
INSERT INTO currency (country, currency, code, symbol) VALUES ('Romania', 'New Lei', 'RON', 'lei');
INSERT INTO currency (country, currency, code, symbol) VALUES ('Russia', 'Rubles', 'RUB', 'руб');
INSERT INTO currency (country, currency, code, symbol) VALUES ('Saint Helena', 'Pounds', 'SHP', '£');
INSERT INTO currency (country, currency, code, symbol) VALUES ('Saudi Arabia', 'Riyals', 'SAR', '﷼');
INSERT INTO currency (country, currency, code, symbol) VALUES ('Serbia', 'Dinars', 'RSD', 'Дин.');
INSERT INTO currency (country, currency, code, symbol) VALUES ('Seychelles', 'Rupees', 'SCR', '₨');
INSERT INTO currency (country, currency, code, symbol) VALUES ('Singapore', 'Dollars', 'SGD', '$');
INSERT INTO currency (country, currency, code, symbol) VALUES ('Slovenia', 'Euro', 'EUR', '€');
INSERT INTO currency (country, currency, code, symbol) VALUES ('Solomon Islands', 'Dollars', 'SBD', '$');
INSERT INTO currency (country, currency, code, symbol) VALUES ('Somalia', 'Shillings', 'SOS', 'S');
INSERT INTO currency (country, currency, code, symbol) VALUES ('South Africa', 'Rand', 'ZAR', 'R');
INSERT INTO currency (country, currency, code, symbol) VALUES ('South Korea', 'Won', 'KRW', '₩');
INSERT INTO currency (country, currency, code, symbol) VALUES ('Spain', 'Euro', 'EUR', '€');
INSERT INTO currency (country, currency, code, symbol) VALUES ('Sri Lanka', 'Rupees', 'LKR', '₨');
INSERT INTO currency (country, currency, code, symbol) VALUES ('Sweden', 'Kronor', 'SEK', 'kr');
INSERT INTO currency (country, currency, code, symbol) VALUES ('Switzerland', 'Francs', 'CHF', 'CHF');
INSERT INTO currency (country, currency, code, symbol) VALUES ('Suriname', 'Dollars', 'SRD', '$');
INSERT INTO currency (country, currency, code, symbol) VALUES ('Syria', 'Pounds', 'SYP', '£');
INSERT INTO currency (country, currency, code, symbol) VALUES ('Taiwan', 'New Dollars', 'TWD', 'NT$');
INSERT INTO currency (country, currency, code, symbol) VALUES ('Thailand', 'Baht', 'THB', '฿');
INSERT INTO currency (country, currency, code, symbol) VALUES ('Trinidad and Tobago', 'Dollars', 'TTD', 'TT$');
INSERT INTO currency (country, currency, code, symbol) VALUES ('Turkey', 'Lira', 'TRY', 'TL');
INSERT INTO currency (country, currency, code, symbol) VALUES ('Turkey', 'Liras', 'TRL', '£');
INSERT INTO currency (country, currency, code, symbol) VALUES ('Tuvalu', 'Dollars', 'TVD', '$');
INSERT INTO currency (country, currency, code, symbol) VALUES ('Ukraine', 'Hryvnia', 'UAH', '₴');
INSERT INTO currency (country, currency, code, symbol) VALUES ('United Kingdom', 'Pounds', 'GBP', '£');
INSERT INTO currency (country, currency, code, symbol) VALUES ('United States of America', 'Dollars', 'USD', '$');
INSERT INTO currency (country, currency, code, symbol) VALUES ('Uruguay', 'Pesos', 'UYU', '$U');
INSERT INTO currency (country, currency, code, symbol) VALUES ('Uzbekistan', 'Sums', 'UZS', 'лв');
INSERT INTO currency (country, currency, code, symbol) VALUES ('Vatican City', 'Euro', 'EUR', '€');
INSERT INTO currency (country, currency, code, symbol) VALUES ('Venezuela', 'Bolivares Fuertes', 'VEF', 'Bs');
INSERT INTO currency (country, currency, code, symbol) VALUES ('Vietnam', 'Dong', 'VND', '₫');
INSERT INTO currency (country, currency, code, symbol) VALUES ('Yemen', 'Rials', 'YER', '﷼');
INSERT INTO currency (country, currency, code, symbol) VALUES ('Zimbabwe', 'Zimbabwe Dollars', 'ZWD', 'Z$');
INSERT INTO currency (country, currency, code, symbol) VALUES ('India', 'Rupees', 'INR', '₹');
