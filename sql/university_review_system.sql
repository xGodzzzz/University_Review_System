-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 17, 2023 at 03:05 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `university_review_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `dept_name` varchar(50) NOT NULL,
  `course_name` varchar(100) NOT NULL,
  `credits` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`dept_name`, `course_name`, `credits`) VALUES
('CSE', 'Intensive English 1', 3),
('CSE', 'Intensive English 2', 3),
('CSE', 'Society, Environment and Engineering Ethics', 3),
('CSE', 'History of the Emergence of Bangladesh', 2),
('CSE', 'Economics', 3),
('CSE', 'Introduction to Sociology', 3),
('CSE', 'Financial and Managerial Accounting', 3),
('CSE', 'Bangladesh Studies', 3),
('CSE', 'Physics', 3),
('CSE', 'Physics Laboratory', 1),
('CSE', 'Biology for Engineers', 3),
('CSE', 'Fundamental Calculus', 3),
('CSE', 'Calculus and Linear Algebra', 3),
('CSE', 'Coordinate Geometry and Vector Analysis', 3),
('CSE', 'Probability and Statistics', 3),
('CSE', 'Electrical Circuits', 3),
('CSE', 'Electronics', 3),
('CSE', 'Electronics Laboratory', 1),
('CSE', 'Introduction to Computer Systems', 1),
('CSE', 'Structured Programming Language', 3),
('CSE', 'Structured Programming Language Laboratory', 1),
('CSE', 'Object Oriented Programming', 3),
('CSE', 'Object Oriented Programming Laboratory', 1),
('CSE', 'Advanced Object Oriented Programming Lab', 1),
('CSE', 'Web Programming', 3),
('CSE', 'Mobile Application Development', 3),
('CSE', 'Discrete Mathematics', 3),
('CSE', 'Digital Logic Design', 3),
('CSE', 'Digital Logic Design Laboratory', 1),
('CSE', 'Data Structure and Algorithms 1', 3),
('CSE', 'Data Structure and Algorithms 1 Laboratory', 1),
('CSE', 'Theory of Computation', 3),
('CSE', 'Data Structure and Algorithms 2', 3),
('CSE', 'Data Structure and Algorithms 2 Laboratory', 1),
('CSE', 'Database Management Systems', 3),
('CSE', 'Database Management Systems Laboratory', 1),
('CSE', 'Computer Architecture', 3),
('CSE', 'Artificial Intelligence', 3),
('CSE', 'Artificial Intelligence Laboratory', 1),
('CSE', 'Microprocessors and Microcontrollers', 3),
('CSE', 'Microprocessors and Microcontrollers Laboratory', 1),
('CSE', 'System Analysis and Design', 3),
('CSE', 'System Analysis and Design Laboratory', 1),
('CSE', 'Computer Networks ', 3),
('CSE', 'Computer Networks Laboratory', 1),
('CSE', 'Web Programming', 3),
('CSE', 'Mobile Application Development', 3),
('CSE', 'Project Management', 3),
('CSE', 'Final Year Design Project 1', 2),
('CSE', 'Operating Systems', 3),
('CSE', 'Operating Systems Laboratory', 1),
('CSE', 'Final Year Design Project 2', 2),
('CSE', 'Computer Security', 3),
('CSE', 'Final Year Design Project 3', 2),
('CSE', 'Green Computing', 3),
('CSE', 'Computational Theory', 3),
('CSE', 'Network and Communications', 3),
('CSE', 'Systems', 3),
('CSE', 'Data Science', 3),
('CSE', 'Software Engineering', 3),
('CSE', 'Hardware', 3),
('CSE', 'Information and Communication Technology', 3),
('EEE', 'English 1', 3),
('EEE', 'English 2', 3),
('EEE', 'Elementary Calculus', 3),
('EEE', 'Physics 1', 3),
('EEE', 'Differential and Integral Calculus ', 3),
('EEE', 'Electrical Circuits 1', 3),
('EEE', 'Physics 2', 3),
('EEE', 'Physics Lab ', 1),
('EEE', 'Electrical Circuits 2', 3),
('EEE', 'Electrical Circuits Lab', 1),
('EEE', 'Financial and Managerial Accounting ', 3),
('EEE', 'Ordinary and Partial Differential Equations ', 3),
('EEE', 'Electronics  1', 3),
('EEE', 'Simulation Lab ', 1),
('EEE', 'Chemistry ', 3),
('EEE', 'Chemistry Lab', 1),
('EEE', 'Linear Algebra and Matrices', 3),
('EEE', 'Society, Technology and Engineering Ethics ', 3),
('EEE', 'Coordinate geometry and vector analysis', 3),
('EEE', 'Structured Programming Language ', 3),
('EEE', 'Structured Programming Language Lab', 1),
('EEE', 'Electronics 2', 3),
('EEE', 'Electronics Lab', 1),
('EEE', 'Fourier and Laplace Transforms', 3),
('EEE', 'Energy Conversion 1', 3),
('EEE', 'Electrical wiring and drafting', 1),
('EEE', 'Digital Electronics', 3),
('EEE', 'Digital Electronics Lab ', 1),
('EEE', 'Signals and Linear Systems ', 3),
('EEE', 'Complex variables', 3),
('EEE', 'Energy Conversion  2', 3),
('EEE', 'Energy Conversion Lab ', 1),
('EEE', 'Numerical Analysis', 3),
('EEE', 'Electrical Properties of Materials', 3),
('EEE', 'Digital Signal Processing ', 3),
('EEE', 'Digital Signal Processing Lab', 1),
('EEE', 'Power System', 3),
('EEE', 'Power System Lab ', 1),
('EEE', 'Communication Theory', 3),
('EEE', 'Communication Lab ', 1),
('EEE', 'Probability and Random Signal Analysis', 3),
('EEE', 'Economics ', 3),
('EEE', 'Engineering Electromagnetics', 3),
('EEE', 'Power Electronics ', 3),
('EEE', 'Power Electronics Lab ', 1),
('EEE', 'Microprocessor and Interfacing', 3),
('EEE', 'Microprocessor and Interfacing Lab', 1),
('EEE', 'Control System', 3),
('EEE', 'Control System Lab', 1),
('EEE', 'Project and Thesis', 2),
('EEE', 'Elective 2-Major', 3),
('EEE', 'Elective 2 Lab-Major', 1),
('EEE', 'Elective 1-Major', 3),
('EEE', 'Industrial Management', 3),
('EEE', 'Project and Thesis', 2),
('EEE', 'Elective 1-Major', 3),
('EEE', 'Elective 2-Minor', 3),
('EEE', 'Project and Thesis', 3),
('EEE', 'Elective 2-Minor', 3),
('EEE', 'Elective 2 Lab-Minor', 3),
('EEE', 'Elective 1-Minor', 3),
('PHARM', 'Introduction to Pharmacy', 2),
('PHARM', 'Inorganic Pharmacy', 3),
('PHARM', 'Inorganic Pharmacy Laboratory', 1),
('PHARM', 'Organic Pharmacy', 3),
('PHARM', 'Organic Pharmacy Laboratory', 1),
('PHARM', 'English', 3),
('PHARM', 'Fundamentals of Mathematics ', 3),
('PHARM', 'Introduction to Computer Sciences', 2),
('PHARM', 'Physical Pharmacy-1', 3),
('PHARM', 'Pharmacognosy & Natural Product Chemistry-1', 3),
('PHARM', 'Pharmacognosy & Natural Product Chemistry-1 Laboratory', 1),
('PHARM', 'Physiology-1', 3),
('PHARM', 'Physiology-1 Laboratory', 1),
('PHARM', 'Basic Anatomy', 2),
('PHARM', 'Bangla Language and Literature', 3),
('PHARM', 'Bangladesh  Studies', 3),
('PHARM', 'Oral Assessment-1', 3),
('PHARM', 'Physical Pharmacy-2', 3),
('PHARM', 'Physical Pharmacy-2 Laboratory', 1),
('PHARM', 'Pharmacognosy & Natural Product Chemistry-2', 3),
('PHARM', 'Pharmacognosy & Natural Product Chemistry-2 Laboratory', 1),
('PHARM', 'Physiology-2', 3),
('PHARM', 'Physiology-2 Laboratory', 1),
('PHARM', 'Pharmaceutical Microbiology-1', 3),
('PHARM', 'Pharmaceutical Microbiology-1 Laboratory', 1),
('PHARM', 'Basic Pharmaceutics', 3),
('PHARM', 'Biostatistics', 3),
('PHARM', 'Pharmaceutical Analysis-1', 3),
('PHARM', 'Pharmaceutical Analysis-1 Laboratory', 1),
('PHARM', 'Pharmaceutical Microbiology-2', 3),
('PHARM', 'Pharmaceutical Microbiology-2 Laboratory', 1),
('PHARM', 'Pharmacology-1', 3),
('PHARM', 'Pharmaceutical Technology-1 Laboratory', 1),
('PHARM', 'Biochemistry & Molecular Biology', 3),
('PHARM', 'Financial and Managerial Accounting', 3),
('PHARM', 'Oral Assessment-2', 1),
('PHARM', 'Pharmaceutical Analysis-2', 3),
('PHARM', 'Pharmaceutical Analysis-2 Laboratory', 1),
('PHARM', 'Pharmacology-2', 3),
('PHARM', 'Pharmacology-2 Laboratory', 1),
('PHARM', 'Medicinal Chemistry-1', 3),
('PHARM', 'Medicinal Chemistry-1 Laboratory', 1),
('PHARM', 'Pharmaceutical Technology-2', 3),
('PHARM', 'Pharmaceutical Technology-2 Laboratory', 1),
('PHARM', 'Pathology and Clinical Biochemistry', 3),
('PHARM', 'Medicinal Chemistry-2', 3),
('PHARM', 'Medicinal Chemistry-2 Laboratory', 1),
('PHARM', 'Pharmaceutical Technology-3', 3),
('PHARM', 'Pharmaceutical Technology-3 Laboratory', 1),
('PHARM', 'Pharmaceutical Biotechnology', 3),
('PHARM', 'Pharmaceutical Biotechnology-Laboratory', 1),
('PHARM', 'Biopharmaceutics & Pharmacokinetics-1', 3),
('PHARM', 'Biopharmaceutics & Pharmacokinetics-1 Laboratory', 1),
('PHARM', 'Pharmaceutical Packaging Technology', 2),
('PHARM', 'Hospital, Clinical & Community Pharmacy', 3),
('PHARM', 'Oral Assessment-3', 1),
('PHARM', 'Medicinal Chemistry-3', 3),
('PHARM', 'Medicinal Chemistry-3 Laboratory', 1),
('PHARM', 'Pharmacology-3', 3),
('PHARM', 'Biopharmaceutics & Pharmacokinetics-2', 3),
('PHARM', 'Biopharmaceutics & Pharmacokinetics-2 Laboratory', 1),
('PHARM', 'Pharmaceutical Quality Control and Validation', 3),
('PHARM', 'Pharmaceutical Quality Control and Validation Laboratory', 1),
('PHARM', 'Pharmaceutical Engineering', 3),
('PHARM', 'Pharmacy Practice', 2),
('PHARM', 'Pharmacology-4', 3),
('PHARM', 'Cosmetology', 2),
('PHARM', 'Cosmetology Laboratory', 1),
('PHARM', 'Pharmaceutical Regulatory Affairs', 3),
('PHARM', 'Food Technology, Nutraceuticals and Alternative Medicines', 3),
('PHARM', 'Marketing and Management', 3),
('PHARM', 'Oral Assessment-4', 1),
('PHARM', 'In-plant Training', 1),
('PHARM', 'Project', 3),
('ENG', 'Introduction to Composition', 3),
('ENG', 'Bangladesh History and Culture', 3),
('ENG', 'Intermediate Composition', 3),
('ENG', 'Precalculus', 3),
('ENG', 'Public Speaking', 3),
('ENG', 'Political Science', 3),
('ENG', 'Macro Principles', 3),
('ENG', 'Bangla Language and Literature', 3),
('ENG', 'Literature', 3),
('ENG', 'Ethics', 3),
('ENG', 'Intro. to Computer Information System', 3),
('ENG', 'Statistics 1', 3),
('ENG', 'Foreign Language-Introductory level', 3),
('ENG', 'Introduction to Poetry', 3),
('ENG', 'Introduction to World Civilization', 3),
('ENG', 'Introduction to Public Health', 4),
('ENG', 'Biology 1', 3),
('ENG', 'Physics 1', 3),
('ENG', 'Intro to Environmental Science', 4),
('ENG', 'Introduction to Linguistics', 3),
('ENG', ' Literary Theory', 3),
('ENG', 'Research Methodology for Humanities', 3),
('ENG', 'Advanced  Level', 3),
('ENG', 'Foreign Language-Intermediate', 3),
('ENG', 'Intro. to Governance', 3),
('ENG', 'Gender Studies', 3),
('ENG', 'Human Rights', 3),
('ENG', 'Intro. to constitutional Law', 3),
('ENG', 'International relations', 3),
('ENG', 'Design', 3),
('ENG', 'Emergence of Bangladesh', 3),
('ENG', 'Elizabethan and Jacobean drama', 3),
('ENG', 'Introduction to Applied Linguistic', 3),
('ENG', 'Introduction to Dramatics', 3),
('ENG', 'History of Economic Thought', 3),
('ENG', 'Theories of Second Language Acquisition', 3),
('ENG', 'Microeconomics', 3),
('ENG', 'Media and Communication', 3),
('ENG', 'The Rise and Growth of the Novel', 3),
('ENG', 'Ethical Theory', 3),
('ENG', 'Any elective course 1', 3),
('ENG', 'Testing and Evaluation', 3),
('ENG', 'Sociolinguistics', 3),
('ENG', ' Teaching Techniques & Practicum', 3),
('ENG', 'Any elective course 2', 3),
('ENG', 'Psycholinguistics', 3),
('ENG', 'Any elective course 3', 3),
('ENG', 'Morphology & Syntax', 3),
('ECO', 'Introduction to Business', 3),
('ECO', 'Computer Applications', 3),
('ECO', 'Mathematics for Business and Economics 1', 3),
('ECO', 'Statistics for Business and Economics 1', 3),
('ECO', 'Financial Accounting 1', 3),
('ECO', 'Basic English', 3),
('ECO', 'Composition and Communication Skills', 3),
('ECO', 'Bangladesh Studies', 3),
('ECO', 'Financial Accounting 2', 3),
('ECO', 'Basic Mathematics', 3),
('ECO', 'Economic Geography', 3),
('ECO', 'Fundamentals of Natural Science', 3),
('ECO', 'Ecological System and Environment', 3),
('ECO', 'Principles of Finance', 3),
('ECO', 'Mathematics for Business and Economics  2', 3),
('ECO', 'Introduction to Microeconomics', 3),
('ECO', 'Introduction to Macroeconomics', 3),
('ECO', 'Statistics for Business and Economics 2', 3),
('ECO', 'Intermediate Microeconomic Theory 1', 3),
('ECO', 'Intermediate Microeconomic Theory 2', 3),
('ECO', 'Intermediate Macroeconomic Theory 1', 3),
('ECO', 'Intermediate Macroeconomic Theory 2', 3),
('ECO', 'Introduction to Environmental and Natural Resource Economics', 3),
('ECO', 'Money and Banking', 3),
('ECO', 'Public Finance: Revenue', 3),
('ECO', 'Public Finance: Expenditure', 3),
('ECO', 'International Trade and Finance', 3),
('ECO', 'Development Economics', 3),
('ECO', 'Socioeconomic Profiles of Bangladesh', 3),
('ECO', 'Basic Econometrics', 3),
('ECO', 'Globalization and History', 3),
('ECO', 'History of Economic Thought', 3),
('ECO', 'Research Methodology', 3),
('ECO', 'Guided Research', 3),
('ECO', 'Agricultural Economics and Agribusiness', 3),
('ECO', 'Environmental and Natural Resource Economics 2', 3),
('ECO', 'Health Economics', 3),
('ECO', 'Labor Economics', 3),
('ECO', 'Urban Economics', 3),
('ECO', 'Project Analysis and Evaluation', 3),
('ECO', 'Energy Economics and Policy', 3),
('ECO', 'Industrial Organization', 3),
('ECO', 'Law and Economics', 3),
('ECO', 'Mathematical Statistics 1', 3),
('ECO', 'Mathematical Statistics 2', 3),
('ECO', 'Economics of Information and Uncertainty', 3),
('ECO', 'Game Theory and Applications', 3),
('ECO', 'Mathematical Economics 2', 3),
('ECO', 'Applied Econometrics', 3),
('ECO', 'Welfare Economics', 3),
('ECO', 'Trade Theory and Policy', 3),
('ECO', 'The Underground Economy', 3),
('ECO', 'Economic Development in South Asia', 3),
('ECO', 'Economics of Gender', 3),
('ECO', 'Advanced Topics in Development Economics', 3),
('ECO', 'Micro-finance: Theory, Principles and Performance', 3),
('ECO', 'Managerial Finance', 3),
('ECO', 'Managerial Economics', 3),
('ECO', 'Security Analysis and Portfolio Management', 3),
('ECO', 'Principles of Banking and Insurance', 3),
('ECO', 'Financial Markets and Institutions', 3),
('ECO', 'International Finance', 3),
('ECO', 'International Business', 3),
('ECO', 'Energy Economics and Policy', 3),
('ECO', 'Environmental and Natural Resource Economics 2', 3),
('ECO', 'Applied Econometrics', 3),
('ECO', 'Economic Valuation of the Environment', 3),
('ECO', 'Economics of Climate Change', 3),
('ECO', 'Environmental Policy', 3),
('BBA', 'English 1', 3),
('BBA', 'Introduction to Business', 3),
('BBA', 'Financial Accounting 1', 3),
('BBA', 'English 2', 3),
('BBA', 'History of the Emergence of Bangladesh', 2),
('BBA', 'Business Mathematics 1', 3),
('BBA', 'Principles of Management', 3),
('BBA', 'Business mathematics 2', 3),
('BBA', 'Computer Applications', 3),
('BBA', 'Financial Accounting 2', 3),
('BBA', 'Microeconomics', 3),
('BBA', 'Business Communication', 3),
('BBA', 'Business Statistics 1', 3),
('BBA', 'Macroeconomics', 3),
('BBA', 'Management Accounting', 3),
('BBA', 'Business Statistics 2', 3),
('BBA', 'Sociology and Psychology', 3),
('BBA', 'Organizational Behavior', 3),
('BBA', 'Principles of Finance', 3),
('BBA', 'Introduction to Marketing', 3),
('BBA', 'Advanced Computer Applications in Business', 3),
('BBA', 'International Business', 3),
('BBA', 'Human Resource Management', 3),
('BBA', 'Managerial Finance', 3),
('BBA', 'Marketing Management', 3),
('BBA', 'Production & Operations Management', 3),
('BBA', 'Business Analytics', 3),
('BBA', 'GED Elective 1', 3),
('BBA', 'E-Business', 3),
('BBA', 'GED Elective 2', 3),
('BBA', 'Business Law', 3),
('BBA', 'Employability and Entrepreneurial Success', 3),
('BBA', 'Major 1', 3),
('BBA', 'Major 2', 3),
('BBA', 'Major 3', 3),
('BBA', 'Major 4', 3),
('BBA', 'Major 5', 3),
('BBA', 'Major 6', 3),
('BBA', 'Major 7', 3),
('BBA', 'Strategic Management', 3),
('BBA', 'Internship/Project', 3);

-- --------------------------------------------------------

--
-- Table structure for table `dept`
--

CREATE TABLE `dept` (
  `name` varchar(100) NOT NULL,
  `dept_name` varchar(50) NOT NULL,
  `total_cr` int(4) NOT NULL,
  `budget` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dept`
--

INSERT INTO `dept` (`name`, `dept_name`, `total_cr`, `budget`) VALUES
('North South University', 'CSE', 130, 964000),
('North South University', 'EEE', 130, 964000),
('North South University', 'BBA', 120, 834000),
('North South University', 'ECO', 120, 834000),
('North South University', 'ENG', 123, 853500),
('North South University', 'PHARM', 199, 1419500),
('Daffodil International University', 'CSE', 155, 931800),
('Daffodil International University', 'EEE', 144, 763200),
('Daffodil International University', 'BBA', 143, 743200),
('Daffodil International University', 'ECO', 141, 722000),
('Daffodil International University', 'ENG', 140, 620000),
('Daffodil International University', 'PHARM', 162, 1008200),
('American International University of Bangladesh', 'CSE', 148, 1031000),
('American International University of Bangladesh', 'EEE', 148, 987000),
('American International University of Bangladesh', 'BBA', 126, 844000),
('American International University of Bangladesh', 'ECO', 146, 682000),
('American International University of Bangladesh', 'ENG', 140, 800000),
('Independent University of Bangladesh', 'CSE', 143, 1098000),
('Independent University of Bangladesh', 'EEE', 143, 1098000),
('Independent University of Bangladesh', 'BBA', 124, 965000),
('Independent University of Bangladesh', 'ECO', 122, 951000),
('Independent University of Bangladesh', 'ENG', 123, 958000),
('Independent University of Bangladesh', 'PHARM', 167, 1266000),
('Ahsanullah University of Science and Technology', 'CSE', 170, 834500),
('Ahsanullah University of Science and Technology', 'EEE', 170, 834500),
('Ahsanullah University of Science and Technology', 'BBA', 129, 680600),
('East West University', 'CSE', 140, 812000),
('East West University', 'EEE', 140, 812000),
('East West University', 'BBA', 123, 696000),
('East West University', 'ECO', 122, 570000),
('East West University', 'ENG', 123, 561000),
('East West University', 'PHARM', 158, 981000),
('United International University', 'CSE', 138, 860500),
('United International University', 'EEE', 140, 860500),
('United International University', 'BBA', 125, 690000),
('United International University', 'ECO', 122, 653000),
('United International University', 'ENG', 123, 777575),
('United International University', 'PHARM', 160, 982000),
('Islamic University of Technology', 'CSE', 150, 1540000),
('Islamic University of Technology', 'EEE', 150, 1540000),
('Islamic University of Technology', 'BBA', 150, 1540000);

-- --------------------------------------------------------

--
-- Table structure for table `facility`
--

CREATE TABLE `facility` (
  `name` varchar(100) NOT NULL,
  `scholarships` varchar(1000) NOT NULL,
  `waiver` varchar(1000) NOT NULL,
  `transportation` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `facility`
--

INSERT INTO `facility` (`name`, `scholarships`, `waiver`, `transportation`) VALUES
('BRACU', 'An undergraduate student requires to complete at least 30 credits to avail the merit based scholarship of BracU. Students have to achieve atleast a CGPA of 3.80 to get 10% to 100% scholarship.', '100% tuition and other fees (semester fees, lab fees, library etc.) waiver with food and accommodations awarded to economically disadvantaged but meritorious students.', 'YES'),
('North South University', 'Undergraduate applicants securing top 10 position in the NSU admission test get full tuition waiver(100%).GPA 5.00 (excluding 4th Subject) in either SSC or HSC and at least GPA 4.80 in the other (excluding 4th Subject) with satisfactory NSU Admission Test Performance/Candidates who earn 7 \'A\'s in O-level exams and 3 \'A\'s in A-level having satisfactory NSU Admission Test Score can avail the financial aid at NSU.', 'Financial assistance is also available for siblings i.e. if two brothers or two sisters or one brother and one sister, whatever may be the case, have been studying at NSU, they would be entitled to 25% tuition waiver each subject to eligibility and they must apply formally during usual aid process.', 'NO'),
('American International University of Bangladesh', 'Students with GPA 5.00 (Golden) OR GPA 5.00 in SSC and HSC/5 (Five) ‘A’ in O-Level (at a time) and 2 (two) ‘A’ in A-Level (at a time); no grade lower than ‘B’ can only secure merit based scholarship.Anwarul Abedin Scholarship for female Undergraduate Students: This grant covers only the tuition fee (100%) given to qualified female student every regular semester, Fall and Spring, based on the number of slots to be declared by the Scholarship Committee', 'Sibling of a current student will be entitled to a percentage of tuition fee waiver as decided by the Scholarship Committee.AIUB Employees are entitled to tuition fee waiver after 1 year of full-time services.', 'NO'),
('United International University', 'In the undergraduate programs, top 10% students will be eligible to get 25% to 100% scholarship by taking at least 9 credit hours under the trimester system.GPA 3.50 on Scale of  4.00  & GPA 4.37 on Scale of 5.00 in HSC & above or equivalent level public exams: 25% Tuition Fee Waiver. English Medium students with Five (5) A’s in the O-level and 1 A’s and 1 B’s in A-level Exams can secure 100% scholarship on their tuition fees.', '100% Tuition Fee and Other Fees Waiver for Meritorious and Poor Students of Underdeveloped Regions of Bangladesh: Top 3% of the total admitted students in a particular trimester/semester who are meritorious and poor and come from the underdeveloped upazilas of Bangladesh, as determined by the Government of Bangladesh from time to time, will be awarded this scholarship', 'YES'),
('Daffodil International University', 'Students with Golden GPA-5 both in SSC and in HSC/5 “A”s in “O” levels and 2 “A”s in “A” levels will get 75% scholarships, but that student have to get 3.50 SGPA to continue the scholarship.Students with Golden GPA-5 both in SSC and in HSC/01 “A” and 01 “B” in “A” levels will get 50% scholarships, but that student have to get 3.25 SGPA to continue the scholarship.', 'Students with more than 3.70 GPA out of 4.00 will be granted 10%-50% waiver according to their GPA.', 'YES'),
('East West University', 'Top scorers in undergraduate admission tests with a minimum score of 75% marks.Candidates securing A+ in all subjects (including the 4th subject) in the most recent SSC (2021) & HSC (2023) examinations will be awarded 100% Tuition Free Merit Scholarship at entry level in Undergraduate Programs for 4 (four) years subject to qualifying in the admission test.Candidates securing 7 (seven) A’s in ‘O’ Level examination (at one sitting) and 3 (three) A’s in ‘A’ Level Examination (in one year) will be awarded 100% Tuition Free Merit Scholarship at entry level in Undergraduate Programs for 4 (four) years subject to qualifying in the admission test.', 'One poor but a meritorious student from each District securing GPA 5.00 in the most recent SSC and HSC Examination will be awarded a full-tuition free Merit Scholarship with lodging for four years of study in Undergraduate programs at EWU subject to qualifying in the admission test.', 'NO'),
('University of Liberal Arts Bangladesh', 'Unavailable', '40% tuition waiver for siblings/spouse or ULAB /GEMCON employee ward/spouse', 'YES'),
('International University of Business Agriculture and Technology', 'Students with more than 3.50 GPA on their HSC/A-levels are awarded 10% to 100% of tuition fees scholarship according to their admission test performance. ', 'Students who are not entitled for merit scholarship at the point of admission can earn the In-Program Merit Scholarship of 50% tuition waiver by securing CGPA 4.00 out of 4.00 in a semester.Merit Scholarships are awarded to students who secure CGPA 4.00 out of 4.00 in consecutive three semesters during their study at the IUBAT.', 'YES'),
('BGMEA University of Fashion and Technology', 'Unavailable', 'The following students will be awarded 50% merit scholarship (tuition fee waiver) at entry level for BSc/BBA programs subject to maintenance of minimum GPA of 3.75 in only in first semester of BUFT examination', 'YES'),
('University of Asia Pacific', 'There are merit scholarships, tuition fee waiver on academic performance, freedom fighter’s waiver, BOT members’ and VC’s special  waivers for the deserving students. Tuition fee waiver ranges from 10 to 100 percent of tuition fees depending on the academic achievements.', '3% of total seats are reserved for children of Freedom Fighters and will be offered 100% tuition fee waiver.3% of total seats are reserved for poor but meritorious students from remote underdeveloped regions of Bangladesh and will be offered 100% tuition fee waiver. (After Admission).', 'YES'),
('Bangladesh University of Business and Technology', 'Unavailable', '10%-100% Tuition fee waiver/scholarship for poor and meritorious students.100% Waiver on Tuition Fee for Children of the Freedom Fighters.Special tuition fee waiver for siblings (25% each).', 'NO');

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `name` varchar(100) NOT NULL,
  `dept_name` varchar(50) NOT NULL,
  `faculty_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`name`, `dept_name`, `faculty_name`) VALUES
('United International University', 'CSE', 'MOHAMMAD NURUL HUDA'),
('United International University', 'CSE', 'A.K.M. MUZAHIDUL ISLAM'),
('United International University', 'CSE', 'MD. MOTAHARUL ISLAM'),
('United International University', 'CSE', 'SALEKUL ISLAM'),
('United International University', 'CSE', 'MD DEWAN FARID'),
('United International University', 'CSE', 'KHONDAKER ABDULLAH AL MAMUN'),
('United International University', 'CSE', 'AL-SAKIB KHAN PATHAN'),
('United International University', 'CSE', 'MOHAMMAD SHAHRIAR RAHMAN'),
('United International University', 'CSE', 'HASAN SARWAR'),
('United International University', 'CSE', 'SWAKKHAR SHATABDA'),
('United International University', 'CSE', 'MD. SADDAM HOSSAIN MUKTA'),
('United International University', 'CSE', 'MUHAMMAD NOMANI KABIR'),
('United International University', 'CSE', 'MD. BENZIR AHMED'),
('United International University', 'CSE', 'SUMAN AHMMED'),
('United International University', 'EEE', 'Dr. M. Rezwan Khan'),
('United International University', 'EEE', 'Dr. Raqibul Mostafa'),
('United International University', 'EEE', 'Dr. Intekhab Alam'),
('United International University', 'EEE', 'Dr. Kaled Masukur Rahman'),
('United International University', 'EEE', 'Dr. Md. Iqbal Bahar Chowdhury'),
('United International University', 'EEE', 'Dr. Sadid Muneer'),
('United International University', 'EEE', 'Mr. Md. Salahuddin Ahmed'),
('United International University', 'EEE', 'Mr. Md. Shahriar Ahmed Chowdhury'),
('United International University', 'EEE', 'Mr. B.K.M. Mizanur Rahman'),
('United International University', 'EEE', 'Ms. Helena Bulbul'),
('United International University', 'EEE', 'Mr. Md. Nadeem Chowdhury'),
('United International University', 'ECO', 'MOHAMMAD OMAR FAROOQ'),
('United International University', 'ECO', 'WAHIDA YASMEEN'),
('United International University', 'ECO', 'MUSHARRAT SHABNAM SHUCHI'),
('United International University', 'ECO', 'TANSEER AHAMED'),
('United International University', 'ECO', 'TANZILA AMIR'),
('United International University', 'ECO', 'SAYEDA CHANDRA TABASSUM'),
('United International University', 'ECO', 'TASNEEM JAHAN TUMPA'),
('United International University', 'ENG', 'MD. KAMRUL HASAN'),
('United International University', 'ENG', 'MUHAMMAD FAZLE RAMZAN KHAN'),
('United International University', 'ENG', 'PRODHAN MAHBUB IBNA SERAJ'),
('United International University', 'ENG', 'SAIMA AKTER'),
('United International University', 'ENG', 'SAIMA HASIN'),
('United International University', 'ENG', 'SADIA AFRIN'),
('United International University', 'BBA', 'FARID AHAMMAD SOBHANI'),
('United International University', 'BBA', 'MD. MOHAN UDDIN'),
('United International University', 'BBA', 'MD. SHARIFUL ALAM'),
('United International University', 'BBA', 'MOHAMMAD TARIQ HASAN'),
('United International University', 'BBA', 'SAAD HASAN'),
('United International University', 'BBA', 'MD QAMRUZZAMAN'),
('United International University', 'BBA', 'JAMES BAKUL SARKAR'),
('United International University', 'BBA', 'SEYAMA SULTANA'),
('United International University', 'BBA', 'DR. GOURANGA CHANDRA DEBNATH'),
('United International University', 'BBA', 'SARKER RAFIJ AHMED RATAN'),
('United International University', 'PHARM', 'Dr. Md. Abdul Mazid'),
('United International University', 'PHARM', 'Dr. Tahmina Foyez'),
('United International University', 'PHARM', 'Ms. Sharmin Ahmed Rakhi'),
('United International University', 'PHARM', 'Ms. Sabiha Tasnim'),
('BRACU', 'CSE', 'Mahbubul Alam Majumdar'),
('BRACU', 'CSE', 'Sadia Hamid Kazi'),
('BRACU', 'CSE', 'Mohammad Kaykobad'),
('BRACU', 'CSE', 'Matin Saad Abdullah'),
('BRACU', 'CSE', 'Md. Khalilur Rhaman'),
('BRACU', 'EEE', 'Arshad M. Chowdhury'),
('BRACU', 'EEE', 'Md. Mosaddequr Rahman'),
('BRACU', 'EEE', 'Shahidul Islam Khan'),
('BRACU', 'EEE', 'A.K.M Abdul Malek Azad'),
('BRACU', 'EEE', 'Abu Hamed M. Abdur Rahim'),
('BRACU', 'ECO', 'Wasiqur Rahman Khan'),
('BRACU', 'ECO', 'Farzana Munshi'),
('BRACU', 'ECO', 'Shahidur Rahman'),
('BRACU', 'ECO', 'Samia Huq'),
('BRACU', 'ECO', 'Seuty Sabur'),
('BRACU', 'ENG', 'Firdous Azim'),
('BRACU', 'ENG', 'Asifa Sultana'),
('BRACU', 'ENG', 'Md Al Amin'),
('BRACU', 'BBA', 'Mohammad Mujibul Haque'),
('BRACU', 'BBA', 'Mirza Azizul Islam'),
('BRACU', 'BBA', 'Salehuddin Ahmed'),
('BRACU', 'PHARM', 'Eva Rahman Kabir'),
('BRACU', 'PHARM', 'Hasina Yasmin'),
('BRACU', 'PHARM', 'Mesbah Talukder'),
('North South University', 'CSE', 'Rajesh Palit'),
('North South University', 'CSE', 'M. Rokonuzzaman'),
('North South University', 'CSE', 'K. M. A. Salam'),
('North South University', 'EEE', 'Mohammad Rashedur Rahman'),
('North South University', 'EEE', ' Hafiz Abdur Rahman'),
('North South University', 'EEE', 'Shazzad Hosain'),
('North South University', 'BBA', 'AKM Waresul Karim'),
('North South University', 'BBA', 'Arifur Rahman'),
('North South University', 'BBA', 'Md. Nurul Kabir'),
('North South University', 'ECO', ' M. Ismail Hossain'),
('North South University', 'ECO', 'A. K. M. Atiqur Rahman'),
('North South University', 'ECO', 'Gour Gobinda Goswami'),
('North South University', 'ENG', 'AQMA Rahman Bhuiyan'),
('North South University', 'ENG', 'Mohammad Shamsuzzaman'),
('North South University', 'ENG', ' Mohammed Shahedul Haque'),
('North South University', 'PHARM', 'Hasan Mahmud Reza'),
('North South University', 'PHARM', 'Preeti Jain'),
('North South University', 'PHARM', 'Mohammad Hossain Shariare'),
('Independent University of Bangladesh', 'BBA', 'Rushdi Md. Rezaur Razzaque'),
('Independent University of Bangladesh', 'BBA', 'Maqbool Kader Quraishi'),
('Independent University of Bangladesh', 'BBA', 'Nushrat Jahan'),
('Independent University of Bangladesh', 'ECO', 'Meherun Ahmed'),
('Independent University of Bangladesh', 'ECO', 'M. A. Taslim'),
('Independent University of Bangladesh', 'ECO', 'Md.Shahnawaz Karim'),
('Independent University of Bangladesh', 'ENG', 'NAUREEN RAHNUMA'),
('Independent University of Bangladesh', 'ENG', 'MAHMUD HASAN KHAN'),
('Independent University of Bangladesh', 'ENG', 'AHMED AHSANUZZAMAN'),
('Independent University of Bangladesh', 'PHARM', 'JMA Hannan'),
('Independent University of Bangladesh', 'PHARM', 'Amir H. Khan'),
('Independent University of Bangladesh', 'PHARM', 'Akib Bin Rahman'),
('Independent University of Bangladesh', 'CSE', 'Farruk Ahmed'),
('Independent University of Bangladesh', 'CSE', 'M Ashraful Amin'),
('Independent University of Bangladesh', 'CSE', 'Yusuf Mahbubul Islam'),
('Independent University of Bangladesh', 'EEE', 'A K M Mahbubur Rahman'),
('Independent University of Bangladesh', 'EEE', 'Ali Shihab Sabbir'),
('Independent University of Bangladesh', 'EEE', 'Amin Ahsan Ali'),
('American International University of Bangladesh', 'EEE', 'ABM SIDDIQUE HOSSAIN'),
('American International University of Bangladesh', 'EEE', 'MD. SANIAT RAHMAN ZISHAN'),
('American International University of Bangladesh', 'EEE', 'MOHAMMAD ABDUL MANNAN'),
('American International University of Bangladesh', 'CSE', 'MOHAMMAD MASUM IQBAL'),
('American International University of Bangladesh', 'CSE', 'M. A. QUAIYUM'),
('American International University of Bangladesh', 'CSE', 'MUHIBUL HAQUE BHUYAN'),
('American International University of Bangladesh', 'BBA', 'FARHEEN HASSAN'),
('American International University of Bangladesh', 'BBA', 'REZBIN NAHAR'),
('American International University of Bangladesh', 'BBA', 'MOHAMMAD FARIDUL ALAM'),
('American International University of Bangladesh', 'ECO', 'M. M. OBAIDUL ISLAM'),
('American International University of Bangladesh', 'ECO', 'ASIF PARVEZ'),
('American International University of Bangladesh', 'ECO', 'SAHIN AKTER SARKER'),
('American International University of Bangladesh', 'ENG', 'TAZUL ISLAM'),
('American International University of Bangladesh', 'ENG', '. B. M. RAHMATULLAH'),
('American International University of Bangladesh', 'ENG', 'MD. TAUFIQUL ISLAM'),
('American International University of Bangladesh', 'ENG', 'SHAHEEN AKTER'),
('American International University of Bangladesh', 'ENG', 'MIR OBAIDUR RAHMAN'),
('Daffodil International University', 'CSE', 'S.R.Subramanya'),
('Daffodil International University', 'CSE', 'Sheak Rashed Haider Noori'),
('Daffodil International University', 'CSE', 'Bibhuti Roy'),
('Daffodil International University', 'CSE', 'Neil Perez Balba'),
('Daffodil International University', 'EEE', 'Md Ashiqur Rahman'),
('Daffodil International University', 'EEE', 'M. Shamsul Alam'),
('Daffodil International University', 'EEE', 'Fahmida Hossain Tithi'),
('Daffodil International University', 'EEE', 'Tama Fouzder'),
('Daffodil International University', 'BBA', 'Rafiqul Islam'),
('Daffodil International University', 'BBA', ' Md Zakir Hossain'),
('Daffodil International University', 'BBA', 'MD. Aminul Islam'),
('Daffodil International University', 'ECO', 'Mohammad Abdur Rahman'),
('Daffodil International University', 'ECO', 'Tanvir Fittin Abir'),
('Daffodil International University', 'ECO', 'Sayedul Anam'),
('Daffodil International University', 'ENG', 'Mohammed Shamsul Hoque'),
('Daffodil International University', 'ENG', 'Binoy Barman'),
('Daffodil International University', 'ENG', 'Yinping Wang'),
('East West University', 'CSE', 'Md. Mozammel Huq Azad Khan'),
('East West University', 'CSE', 'Shamim H Ripon'),
('East West University', 'CSE', ' Md. Nawab Yousuf Ali'),
('East West University', 'CSE', 'Ahmed Wasif Reza'),
('East West University', 'EEE', 'Anisul Haque'),
('East West University', 'EEE', 'Khairul Alam'),
('East West University', 'EEE', 'Mohammad Mojammel Al Hakim'),
('East West University', 'EEE', 'Mohammad Ryyan Khan'),
('East West University', 'BBA', 'Mohammed Farashuddin'),
('East West University', 'BBA', 'Anup Chowdhury'),
('East West University', 'BBA', 'Jashim Uddin'),
('East West University', 'ECO', 'A. K. Enamul Haque'),
('East West University', 'ECO', 'Syed Abul Basher'),
('East West University', 'ECO', 'A.M. Tanvir Hussain'),
('East West University', 'ENG', 'Muhammed Shahriar Haque'),
('East West University', 'ENG', 'Moriam Quadir'),
('East West University', 'ENG', 'Akhter Jahan'),
('East West University', 'PHARM', 'Sufia Islam'),
('East West University', 'PHARM', 'Shamsun Nahar Khan'),
('East West University', 'PHARM', 'Md. Amirul Islam'),
('East West University', 'PHARM', 'Farhana Rizwan');

-- --------------------------------------------------------

--
-- Table structure for table `log_in`
--

CREATE TABLE `log_in` (
  `username` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ranking`
--

CREATE TABLE `ranking` (
  `name` varchar(100) NOT NULL,
  `uni_rank` int(5) NOT NULL,
  `QS_rank` int(5) NOT NULL,
  `THE_rank` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ranking`
--

INSERT INTO `ranking` (`name`, `uni_rank`, `QS_rank`, `THE_rank`) VALUES
('BRACU', 1, 1001, 800),
('North South University', 2, 851, 830),
('Daffodil International University', 3, 1203, 1132),
('American International University of Bangladesh', 4, 1277, 1369),
('Independent University of Bangladesh', 5, 1362, 1455),
('Ahsanullah University of Science and Technology', 6, 1456, 2344),
('East West University', 7, 1250, 1835),
('United International University', 8, 1270, 1998),
('Islamic University of Technology', 9, 1679, 3459),
('International Islamic University Chittagong', 10, 1801, 2245),
('Stamford University Bangladesh', 11, 1405, 1783),
('University of Liberal Arts Bangladesh', 12, 3219, 2354),
('University of Asia Pacific', 13, 2758, 3678),
('International University of Business Agriculture and Technology', 14, 1450, 1792),
('Southeast University', 15, 2982, 4286);

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `rating` int(11) NOT NULL,
  `comment` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `username` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `name`, `rating`, `comment`, `created_at`, `username`) VALUES
(4, 'United International University', 5, 'United International University (UIU) is a private university in Bangladesh, known for its commitment to providing quality education. With a diverse range of academic programs, UIU emphasizes practical knowledge and skill development. The university boasts modern facilities, including well-equipped classrooms and a library. Faculty members, often with industry experience, contribute to a dynamic learning environment. UIU\\\'s focus on research and innovation adds value to its academic offerings. Overall, United International University is a reputable institution that strives to prepare students for the challenges of the professional world.', '2023-12-16 10:48:08', 'xGod'),
(5, 'United International University', 5, 'UIU has a very nice environment as a campus should have. Open space, friendly gesture from fellow UIU\\\'ians makes it more and more comfortable place for all.', '2023-12-16 17:28:21', 'Nadim'),
(6, 'United International University', 4, 'United International University (UIU) is a well known institution that provides a dynamic academic environment. With a commitment to excellence, UIU offers a diverse range of programs, fostering intellectual growth and practical skills. The faculty is knowledgeable and supportive, contributing to a positive learning experience. However, like any institution, areas for improvement exist, such as enhanced extracurricular activities, improved student facilities and infrastructure. Overall, UIU stands as a reputable choice for those seeking a well-rounded education.', '2023-12-16 17:31:24', 'Nowrin'),
(7, 'United International University', 4, 'United International University (UIU) is a reputable private university in Bangladesh, offering a diverse range of academic programs. Known for its commitment to quality education, UIU emphasizes practical learning, industry collaboration, and research initiatives. The faculty comprises experienced professionals, contributing to a dynamic learning environment. The campus facilities and infrastructure are designed to enhance the overall student experience. UIU has gained recognition for its academic excellence and is a popular choice for students seeking a well-rounded education in Bangladesh.', '2023-12-16 17:33:21', 'sadik'),
(8, 'Ahsanullah University of Science and Technology', 5, 'All the faculties are highly qualified and student friendly .Though Its a private university admission test here is competitive as public university .On the other hand lab facilities and equipment are updated but has no residential facilities for native students . Students are having stressful stage with the lack of there own playground and congested campus as low capacity in study room and library .Ragging is prohibited here so students can study with better educational environment .', '2023-12-16 17:35:09', 'mainul'),
(9, 'Daffodil International University', 4, 'Diu is very enriched in international relations. They have international university as partners which are more than 550+ in total, and it provides a great opportunity for the DIU students to participate in various exchange program internationally, even under high profiled scholarship funds like the Erasmus+, Mevlana, GKS, and more. As a student, I feel like it is a great opportunity for DIU students to excel their academic growth not only in case of National level as well as in international level. So, in this sector, DIU is truly fostering their students with a more confident and challenge solving mindset in terms of building their solid goals in career.', '2023-12-16 17:49:03', 'sharin'),
(10, 'North South University', 5, 'North South University (NSU) is a top-tier educational institution, and I would highly recommend it to anyone seeking a quality university experience.', '2023-12-16 20:11:57', 'nuhad'),
(11, 'North South University', 4, 'The university has a reputation for academic excellence, and it\\\'s easy to see why. The faculty members are highly knowledgeable and experienced, and they go above and beyond to ensure that their students receive a top-notch education.', '2023-12-16 20:13:34', 'rohan'),
(12, 'North South University', 4, 'Undoubtedly one of the best and leading universities in Bangladesh. This is the first private university in Bangladesh and now offering various courses in business studies, engineering and arts. Providing quality education is their first priority.', '2023-12-16 20:14:44', 'siyam'),
(13, 'United International University', 5, 'the best university', '2023-12-17 09:25:12', 'sorol');

-- --------------------------------------------------------

--
-- Table structure for table `sign_up`
--

CREATE TABLE `sign_up` (
  `full_name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sign_up`
--

INSERT INTO `sign_up` (`full_name`, `email`, `username`, `password`) VALUES
('Mainul Islam', 'mainul@aust.edu', 'mainul', 'm1234'),
('Nadim Zaman', 'nadim123@uiu.ac.bd', 'Nadim', 'n1234'),
('Nowrin Lamia', 'nowrin123@uiu.ac.bd', 'Nowrin', 'n1234'),
('Mahfuz Nuhad', 'nuhad@northsouth.edu', 'nuhad', 'n1234'),
('Rohan Ahmed', 'rohan@northsouth.edu', 'rohan', 'r1234'),
('Sadik Mahmud', 'sadilk123@uiu.ac.bd', 'sadik', 's1234'),
('Nowshin Sharin', 'sharin@diu.edu.bd', 'sharin', 's1234'),
('Siyam', 'siyam@northsouth.edu', 'siyam', 's1234'),
('sorol', 'sorol@uiu.ac.bd', 'sorol', 's1234'),
('Nuhil', 'knuhil213121@uiu.ac.bd', 'xGod', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `university`
--

CREATE TABLE `university` (
  `name` varchar(100) NOT NULL,
  `dept_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `university`
--

INSERT INTO `university` (`name`, `dept_name`) VALUES
('Ahsanullah University of Science and Technology', 'BBA'),
('Ahsanullah University of Science and Technology', 'CSE'),
('Ahsanullah University of Science and Technology', 'EEE'),
('American International University of Bangladesh', 'BBA'),
('American International University of Bangladesh', 'CSE'),
('American International University of Bangladesh', 'ECO'),
('American International University of Bangladesh', 'EEE'),
('American International University of Bangladesh', 'ENG'),
('Bangladesh University of Business and Technology', 'CSE'),
('Bangladesh University of Business and Technology', 'EEE'),
('BGMEA University of Fashion and Technology', 'BBA'),
('BGMEA University of Fashion and Technology', 'CSE'),
('BGMEA University of Fashion and Technology', 'EEE'),
('BRACU', 'BBA'),
('BRACU', 'CSE'),
('BRACU', 'ECO'),
('BRACU', 'EEE'),
('BRACU', 'ENG'),
('BRACU', 'PHARM'),
('Daffodil International University', 'BBA'),
('Daffodil International University', 'CSE'),
('Daffodil International University', 'ECO'),
('Daffodil International University', 'EEE'),
('Daffodil International University', 'ENG'),
('Daffodil International University', 'PHARM'),
('East West University', 'BBA'),
('East West University', 'CSE'),
('East West University', 'ECO'),
('East West University', 'EEE'),
('East West University', 'ENG'),
('East West University', 'PHARM'),
('Independent University of Bangladesh', 'BBA'),
('Independent University of Bangladesh', 'CSE'),
('Independent University of Bangladesh', 'ECO'),
('Independent University of Bangladesh', 'EEE'),
('Independent University of Bangladesh', 'ENG'),
('Independent University of Bangladesh', 'PHARM'),
('International Islamic University Chittagong', 'BBA'),
('International Islamic University Chittagong', 'CSE'),
('International Islamic University Chittagong', 'ECO'),
('International Islamic University Chittagong', 'EEE'),
('International Islamic University Chittagong', 'ENG'),
('International Islamic University Chittagong', 'PHARM'),
('International University of Business Agriculture and Technology', 'BBA'),
('International University of Business Agriculture and Technology', 'CSE'),
('International University of Business Agriculture and Technology', 'ECO'),
('International University of Business Agriculture and Technology', 'EEE'),
('International University of Business Agriculture and Technology', 'ENG'),
('Islamic University of Technology', 'BBA'),
('Islamic University of Technology', 'CSE'),
('Islamic University of Technology', 'EEE'),
('North South University', 'BBA'),
('North South University', 'CSE'),
('North South University', 'ECO'),
('North South University', 'EEE'),
('North South University', 'ENG'),
('North South University', 'PHARM'),
('Southeast University', 'BBA'),
('Southeast University ', 'CSE'),
('Southeast University', 'ECO'),
('Southeast University ', 'EEE'),
('Southeast University ', 'ENG'),
('Southeast University ', 'PHARM'),
('Stamford University Bangladesh', 'BBA'),
('Stamford University Bangladesh', 'CSE'),
('Stamford University Bangladesh', 'ECO'),
('Stamford University Bangladesh', 'EEE'),
('Stamford University Bangladesh', 'ENG'),
('Stamford University Bangladesh', 'PHARM'),
('United International University', 'BBA'),
('United International University', 'CSE'),
('United International University', 'ECO'),
('United International University', 'EEE'),
('United International University', 'ENG'),
('United International University', 'PHARM'),
('University of Asia Pacific', 'BBA'),
('University of Asia Pacific', 'CSE'),
('University of Asia Pacific', 'EEE'),
('University of Asia Pacific', 'ENG'),
('University of Asia Pacific', 'PHARM'),
('University of Liberal Arts Bangladesh', 'BBA'),
('University of Liberal Arts Bangladesh', 'CSE'),
('University of Liberal Arts Bangladesh', 'EEE'),
('University of Liberal Arts Bangladesh', 'ENG');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD KEY `fk_coursedept` (`dept_name`);

--
-- Indexes for table `dept`
--
ALTER TABLE `dept`
  ADD KEY `fk_dept_university` (`dept_name`,`name`);

--
-- Indexes for table `facility`
--
ALTER TABLE `facility`
  ADD KEY `fk_faci_uni` (`name`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD KEY `fk_faculty_university` (`dept_name`,`name`);

--
-- Indexes for table `log_in`
--
ALTER TABLE `log_in`
  ADD KEY `fk_login_signup` (`username`,`password`);

--
-- Indexes for table `ranking`
--
ALTER TABLE `ranking`
  ADD KEY `name` (`name`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sign_up`
--
ALTER TABLE `sign_up`
  ADD PRIMARY KEY (`username`,`password`),
  ADD KEY `idx_signup_user_password_new` (`username`,`password`);

--
-- Indexes for table `university`
--
ALTER TABLE `university`
  ADD PRIMARY KEY (`name`,`dept_name`),
  ADD KEY `idx_university_faculty_name_new` (`dept_name`,`name`),
  ADD KEY `idx_university_dept_name_name_new` (`dept_name`,`name`),
  ADD KEY `idx_university_dept_name_new` (`dept_name`,`name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `course`
--
ALTER TABLE `course`
  ADD CONSTRAINT `fk_coursedept` FOREIGN KEY (`dept_name`) REFERENCES `university` (`dept_name`);

--
-- Constraints for table `dept`
--
ALTER TABLE `dept`
  ADD CONSTRAINT `fk_dept_university` FOREIGN KEY (`dept_name`,`name`) REFERENCES `university` (`dept_name`, `name`);

--
-- Constraints for table `facility`
--
ALTER TABLE `facility`
  ADD CONSTRAINT `fk_faci_uni` FOREIGN KEY (`name`) REFERENCES `university` (`name`);

--
-- Constraints for table `faculty`
--
ALTER TABLE `faculty`
  ADD CONSTRAINT `fk_faculty_university` FOREIGN KEY (`dept_name`,`name`) REFERENCES `university` (`dept_name`, `name`);

--
-- Constraints for table `log_in`
--
ALTER TABLE `log_in`
  ADD CONSTRAINT `fk_login_signup` FOREIGN KEY (`username`,`password`) REFERENCES `sign_up` (`username`, `password`),
  ADD CONSTRAINT `fk_username` FOREIGN KEY (`username`) REFERENCES `sign_up` (`username`);

--
-- Constraints for table `ranking`
--
ALTER TABLE `ranking`
  ADD CONSTRAINT `ranking_ibfk_1` FOREIGN KEY (`name`) REFERENCES `university` (`name`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
