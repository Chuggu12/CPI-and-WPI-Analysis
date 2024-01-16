#ANALYZING CPI & WPI of month August

#with help of sql we formed two tables cpi and wpi, with use of of basics command like wildcards, max, min, average
#we all use data types in table is varchar and created cpi and wpi, our objective is to analyze the two table
#compare the prices across the months for the wpi and finding how much percentage increarse and decreases wrt to commodities
#similarly for cpi table we compare rural, urban, and combined coloumn, cross check the value of coloumns
#and at last we uses both table to see the common value and compare their wpi and cpi

create database lol;
use lol;

select * from cpi_aug;
CREATE TABLE 2WPI_AUG(
Commodities VARCHAR(100),
Weight VARCHAR(100),
April VARCHAR(100),
May VARCHAR(100),
June VARCHAR(100),
July VARCHAR(100),
Aug VARCHAR(100),
Sept VARCHAR(100)
);

INSERT INTO 2WPI_AUG VALUES
(
'ALL COMMODITIES', '100', '151.1', '149.4', '148.9', '152.1', '152.4', '151.5'
),


(
'I. PRIMARY ARTICLES', '22.62', '177.8', '175.1', '176.1', '191.7', '189.6', '182.4'
),

(
'A. Food Articles', '15.26', '182.1', '181.3', '184.9', '205.9', '201.3', '188.3'
),

(
'Cereals', '2.82', '183.5', '183.1', '184.5', '186.3', '189.4', '191.5'
),

(
'Paddy', '1.43', '176.2', '177.2', '178.2', '181.2', '184.3', '187.1'
),

(
'Wheat', '1.03', '186.4', '184.9', '187.3', '187.1', '191.1', '193.3'
),

(
'Pulses', '0.64', '184.6', '183.6', '188.5', '191.9', '197.7', '209.6'
),

(
'Vegetables', '1.87', '183.9', '178.3', '203.8', '379.6', '336.7', '211.9'
),

(
'Potato', '0.28', '157', '190', '204.3', '221.3', '221.4', '213'
),

(
'Onion', '0.16', '128.2', '129.2', '144.4', '184.3', '229.2', '270.1'
),

(
'Fruits', '1.6', '201.9', '191.2', '182.4', '169.7', '177.9', '186.7'
),

(
'Milk', '4.44', '176.7', '177.3', '178.3', '177.9', '178.4', '179.7'
),

(
'"Eggs', ' Meat & Fish"', '2.4', '171.1', '177.2', '180', '176.5', '166.1'
),

(
'B. Non-Food Articles', '4.12', '165.6', '162.8', '158.9', '161.9', '162.8', '164.2'
),

(
'Oil Seeds', '1.12', '191.8', '188.8', '186.2', '187.8', '187.8', '185.8'
),

(
'C. Minerals', '0.83', '224.6', '214.8', '207.4', '215.4', '215.4', '204.8'
),

(
'D. Crude Petroleum & Natural gas', '2.41', '155', '142.9', '138.6', '144.7', '152.3', '168'
),

(
'Crude Petroleum', '1.95', '133.4', '119.2', '116.8', '125.1', '132.9', '148.4'
),

(
'II. FUEL & POWER', '13.15', '152.7', '148.6', '146.2', '145.4', '149.6', '153.1'
),

(
'LPG', '0.64', '134', '117.1', '114', '107.3', '100', '103.2'
),

(
'Petrol', '1.6', '159.5', '157', '155.9', '156', '160.7', '163.3'
),


(
'HSD', '3.1', '171.7', '169.5', '169', '170.2', '172.7', '174.4'
),

(
'III. MANUFACTURED PRODUCTS', '64.23', '141.4', '140.6', '139.9', '139.5', '139.8', '140.3'
),

(
'Mf/o Food Products', '9.12', '160.5', '158.9', '158.8', '159.9', '160.7', '160.2'
),

(
'Vegetable & Animal Oils and Fats', '2.64', '155.4', '149.7', '145', '147.7', '147.5', '143.3'
),

(
'Mf/o Beverages', '0.91', '130.9', '130.6', '130.7', '130.8', '131.2', '131.3'
),

(
'Mf/o Tobacco Products', '0.51', '169.8', '171.4', '173.7', '173.2', '172.9', '173.1'
),

(
'Mf/o Textiles', '4.88', '137.2', '135.9', '134.8', '133.9', '134.1', '134.2'
),

(
'Mf/o Wearing Apparel', '0.81', '149.5', '150', '149.7', '150.2', '150.8', '150.6'
),

(
'Mf/o Leather and Related Products', '0.54', '123.4', '123.5', '124.7', '125.7', '126.8', '124.7'
),

(
'Mf/o Wood and of Products of Wood and Cork', '0.77', '143.9', '145', '145.2', '144.4', '144.8', '145'
),

(
'Mf/o Paper and Paper Products', '1.11', '147.2', '146', '143.6', '139.5', '138.5', '138.8'
),

(
'Mf/o Chemicals and Chemical Products', '6.47', '141.1', '139.6', '137.9', '136.6', '136.3', '136.2'
),

(
'"Mf/o Pharmaceuticals', ' Medicinal Chemical and Botanical Products"', '1.99', '142.8', '142.9', '143.4', '141.8', '142'
),

(
'Mf/o Rubber and Plastics Products', '2.3', '128.4', '127.6', '127.1', '127', '127', '128.1'
),

(
'Mf/o other Non-Metallic Mineral Products', '3.2', '135.2', '134.7', '134.7', '134.6', '135.2', '135'
),
(
'"Cement', ' Lime and Plaster"', '1.64', '138.2', '137.3', '137.4', '137.4', '137.9'
),
(
'Mf/o Basic Metals', '9.65', '145.3', '143.6', '141.6', '139.9', '140.4', '142.6'
),
(
'Mild Steel - Semi Finished Steel', '1.27', '122.8', '122.4', '121.8', '122.2', '120.9', '121.8'
),
(
'"Mf/o Fabricated Metal Products', ' Except Machinery and Equipment"', '3.15', '139.5', '139.7', '139.3', '138.3', '138.3'
);
select * from 2wpi_aug;
#show commodities we have in wpi table
select Commodities from 2wpi_aug where Commodities !='ALL COMMODITIES';

#NO. of commodities we show in total
select count(Commodities) from 2wpi_aug where Commodities !='ALL COMMODITIES';

#in wpi show the all dtuffs about All commodities, Primary articles, fuel and power and manufactured products.
select * from 2wpi_aug where Commodities ='II. FUEL & POWER';

select * from 2wpi_aug where Commodities ='III. MANUFACTURED PRODUCTS';

select * from 2wpi_aug where Commodities ='ALL COMMODITIES';

select * from 2wpi_aug where Commodities ='I. PRIMARY ARTICLES';

#in wpi show the primary articles weight and other stuffs

select April,May,June,July,Aug,Sept,Commodities
  from 2wpi_aug
 where Commodities IN ('A. Food Articles', 'Cereals', 'Paddy', 'Wheat', 'Pulses', 'Vegetables','Potato','Onion','Fruits','Milk');

#in wpi show about the petroleum products
select * from 2wpi_aug;
select April,May,June,July,Aug,Sept,Commodities
  from 2wpi_aug
 where Commodities IN ('LPG','Petrol','
HSDuits','Milk');

# show about those product under Manufacturing
select * from 2wpi_aug where Commodities like '%Mf/o%';
#we know all manufacturing item starts with a common name "mf0"



#highest of weights, commodities having with hishest weight among the commodities
select * from 2wpi_aug
 where Weight=(select max(Weight) from 2wpi_aug); 
#or
  select * from 2wpi_aug order by Weight desc limit 1;
  
  select * from 2wpi_aug;
  
  
  #top 5 products having high price in month of may
  select * from 2wpi_aug order by May desc limit 5;
  #in month of june
  select * from 2wpi_aug order by June desc limit 5;
# in month of april
  select * from 2wpi_aug order by April desc limit 5;

  
  #top 5 products having high price in the month of may wrt to their respective order by weight
    select * from 2wpi_aug order by Weight desc, May desc limit 5;
    select * from 2wpi_aug;
    
    #use of update command to remove meat and fish from weights
UPDATE 2wpi_aug
SET Commodities = ''
WHERE Commodities = 'Eggs';
    
    #use of deletecommand to remove meat and fish from weights
    DELETE FROM 2wpi_aug where Weight=' Medicinal Chemical and Botanical Products';
    select * from 2wpi_aug;
    
    #to show the manufacturing commodities haveing inflation rate gratet than 140 in month of april and in july 130;
    #similary we can do operations by taking diff inflation rates 
    #also we can check which project have lower inflation rate usinf the beow commands to get that necessary coloumns
    
    select * from 2wpi_aug where Commodities like '%Mf/o%' and April > 140 and July > 130;
   
   # show those commodities which are alwys greater than average in month of april
   select * from 2wpi_aug where April > (select avg(April) from 2wpi_aug); 
  
  #those commodities alwys having price level above 140 
  select * from 2wpi_aug where April > (select avg(April) from 2wpi_aug) and May > (select avg(May) from 2wpi_aug) and June > (select avg(June) from 2wpi_aug) and July > (select avg(July) from 2wpi_aug) and Aug > (select avg(Aug) from 2wpi_aug) and  Sept > (select avg(Sept) from 2wpi_aug); 
  
  
  #show those commodities which are alwys greater than average in every month
  select * from 2wpi_aug where April > (select avg(April) from 2wpi_aug) and May > (select avg(May) from 2wpi_aug) and June > (select avg(June) from 2wpi_aug) and July > (select avg(July) from 2wpi_aug) and Aug > (select avg(Aug) from 2wpi_aug) and  Sept > (select avg(Sept) from 2wpi_aug); 
   
   # percenatge change wrt to two months simultaneously
   select (May-April)/April*100 as percentchange, Commodities, April, May from 2wpi_aug;
   #may-June
   select (June-May)/May*100 as percentchange, Commodities,June,May
   from 2wpi_aug;
   
   #June-July
      select (July-June)/June*100 as percentchange, Commodities, June,July from 2wpi_aug;

   #July-August
   select (Aug-July)/July*100 as percentchange, Commodities, Aug,July from 2wpi_aug;
   
   
   # april- Sept
      select (Sept-April)/April*100 as percentchange, Commodities, April, May, June, July, Aug, Sept from 2wpi_aug;

  
# show tthose commmodities that have positive percenatge change
   select * from 2wpi_aug where (Sept-April)/April*100 > 0  ; # this can be verified using above commands
# similary for max product change by 10% or more
select * from 2wpi_aug where (Sept-April)/April*100 > 10  ;

# use of or to showcommodities having high as 160 or low as 120
select * from 2wpi_aug where  April < 120 or April> 160;

#use of like commands for checking of 'Mf/o' (commodities that manufacture by )
select * from 2wpi_aug where Commodities like '%Mf/o%';

#Joints 
select April
 FROM 2wpi_aug
 right join cpi_aug
 on 2wpi_aug.Commodities = cpi_aug.C2; # nothing will happen in joints since its doesnt have common linkage i.e a foregin key

#cross joints

select * from cpi_aug join 2wpi_aug;

select * from wpi_aug;# due to off more data

#joins : adding two tables and comapring their coloumns
select c.C1,c.C2,c.C3,c.C4, w.Commodities,w.April,w.May,w.Weight
 from cpi_aug c, 2wpi_aug w;
 
 #comapring commodities and and c2 of cpi, commodities, and april month\
 #in a similar way we can comapre the other coloumns 
select c.C1,c.C2,w.Commodities,w.April
 from cpi_aug c, 2wpi_aug w;
 
 select c.C1,c.C2,w.Commodities,w.April,w.May,w.June
 from cpi_aug c, 2wpi_aug w;
 #comapring 1st table with month of april and may and june
 
 select c.C1,c.C2,c.C3,c.C4,w.Commodities,w.Aug,w.sept
 from cpi_aug c, 2wpi_aug w;
 #comapring the rural with the aug and sept cpi 
 
#-----------------------------------------------------------------------------------------------------#


 #In wpi show which have high percetange of weight
select Commodities,max(April) from 2wpi_aug group by Commodities;

# the whole cpi table
CREATE TABLE CPI_AUG(
C1 VARCHAR(100),
C2 VARCHAR(100),
C3 VARCHAR(100),
C4 VARCHAR(100),
C5 VARCHAR(100),
C6 VARCHAR(100),
C7 VARCHAR(100),
C8 VARCHAR(100),
C9 VARCHAR(100),
C10 VARCHAR(100),
C11 VARCHAR(100),
Annex_I VARCHAR(100)
);

INSERT INTO CPI_AUG
VALUES ('Group Code', 'Sub-group Code', 'Description', 'Rural', '', '', 'Urban', '', '', 'Combined', '', '');

INSERT INTO CPI_AUG
VALUES ('', '', '', 'Weights', 'July 23 Index', 'August 23 Index', 'Weights', 'July 23 Index', 'August 23 Index', 'Weights', 'July 23 Index', 'August 23 Index');

INSERT INTO CPI_AUG
VALUES ('', '1.1.01', 'Cereals and products', '12.35', '176.5', '179.0', '6.59', '177.8', '179.8', '9.67', '176.9', '179.3'),
       ('', '1.1.02', 'Meat and fish', '4.38', '215.5', '211.1', '2.73', '222.0', '219.5', '3.61', '217.8', '214.1'),
       ('', '1.1.03', 'Egg', '0.49', '180.0', '174.3', '0.36', '184.8', '180.0', '0.43', '181.9', '176.5'),
       ('', '1.1.04', 'Milk and products', '7.72', '180.6', '181.1', '5.33', '180.3', '181.2', '6.61', '180.5', '181.1'),
    ('', '1.1.05', 'Oils and fats', '4.21', '165.3', '165.3', '2.81', '158.7', '159.0', '3.56', '162.9', '163.0'),
  ('', '1.1.06', 'Fruits', '2.88', '173.4', '174.3', '2.90', '186.7', '186.2', '2.89', '179.6', '179.9'),
 ('', '1.1.07', 'Vegetables', '7.46', '227.0', '216.5', '4.41', '295.3', '272.5', '6.04', '250.2', '235.5'),
 ('', '1.1.08', 'Pulses and products', '2.95', '185.3', '187.8', '1.73', '187.9', '191.5', '2.38', '186.2', '189.0'),
 ('', '1.1.09', 'Sugar and Confectionery', '1.70', '123.8', '124.8', '0.97', '125.8', '127.0', '1.36', '124.5', '125.5'),
 ( '', '1.1.10', 'Spices', '3.11', '234.5', '242.1', '1.79', '224.6', '231.4', '2.50', '231.2', '238.5'),
 ('', '1.2.11', 'Non-alcoholic beverages', '1.37', '179.7', '180.3', '1.13', '167.3', '167.7', '1.26', '174.5', '175.0'),
 ('', '1.1.12', '"Prepared meals, snacks, sweets etc."', '5.56', '192.0', '192.9', '5.54', '199.2', '200.1', '5.55', '195.3', '196.2'), 
 ('1', '', 'Food and beverages', '54.18', '190.0', '189.5', '36.29', '199.4', '197.6', '45.86', '193.5', '192.5'),
 ('2', '', '"Pan, tobacco and intoxicants"', '3.26', '201.0', '201.7', '1.36', '205.2', '206.7', '2.38', '202.1', '203.0'),
 ('', '3.1.01', 'Clothing', '6.32', '192.4', '192.9', '4.72', '182.2', '182.8', '5.58', '188.4', '188.9'),
 ('', '3.1.02', 'Footwear', '1.04', '189.0', '189.1', '0.85', '169.0', '169.8', '0.95', '180.7', '181.1'),
 ('3', '', 'Clothing and footwear', '7.36', '191.9', '192.3', '5.57', '180.2', '180.8', '6.53', '187.3', '187.7'),
 ('4', '', 'Housing', '-', '-', '-', '21.67', '175.3', '176.4', '10.07', '175.3', '176.4'),
 ('5', '', 'Fuel and light', '7.94', '185.5', '185.9', '5.58', '187.4', '187.4', '6.84', '186.2', '186.5'),
 ('', '6.1.01', 'Household goods and services', '3.75', '180.9', '181.3', '3.87', '170.8', '171.2', '3.80', '176.1', '176.5')
;
select * from cpi_aug;
#c1= Group code
#c2=sub_group code
#c3=Description
#c4=Rural
#c7=Urban
#c8=Combined

#no. of coloumns items cpi table:
select count(Description) from cpi_aug;

#highest in Rural, Urban, Combined
select * from cpi_aug where C3=(select max(c4) from cpi_aug);
#urban
select * from cpi_aug where C3=(select max(c7) from cpi_aug);
#combined
select * from cpi_aug where C3=(select max(c8) from cpi_aug);

#command to calculate the average to check the right value, where we find their is some terms that are left out
select (C5+C6)/2 'Rural Avg check', C4 from cpi_aug;

#command to calculate the  urban average to check the right value, where we find their is some terms that are left out
select (C8+C9)/2 'Urban Avg check', C7 from cpi_aug;

#command to calculate the  combined average to check the right value, where we find their is some terms that are left out
select (C11+Annex_I)/2 'Combined Avg check', C10 from cpi_aug;

#getting combined avergae from rural and urban given data and comparing with the given combine one
select (C4+C7)/2 'Combined Avg', C10 from cpi_aug;
#hence we find some minute disturbance in the value comparison to the real one therefore either there exists some 
#error term or some othe regression variable is missing

select * from cpi_aug;