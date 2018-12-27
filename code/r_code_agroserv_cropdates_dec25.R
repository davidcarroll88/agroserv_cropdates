library('parallel')
library('rJava')
library("tabulizer")
library("dplyr")
library("tibble")
library('data.table')
library('stringr')

# Location of soy planting files of interest
soyp9 <- 'http://www.imea.com.br/upload/publicacoes/arquivos/081211_IPS.pdf'
soyp10_1 <- 'http://www.imea.com.br/upload/publicacoes/arquivos/09_11_26_IAPSoja.pdf'
soyp10_2 <- 'http://www.imea.com.br/upload/publicacoes/arquivos/09_12_03_APSoja.pdf'
soyp11_1 <- 'http://www.imea.com.br/upload/publicacoes/arquivos/10_11_11_IPSoja.pdf'
soyp11_2 <- 'http://www.imea.com.br/upload/publicacoes/arquivos/10_12_02_IPSoja.pdf'
soyp12_1 <- 'http://www.imea.com.br/upload/publicacoes/arquivos/2011_11_24_IPSoja.pdf'
soyp12_2 <- 'http://www.imea.com.br/upload/publicacoes/arquivos/2011_12_01_IPSoja.pdf'
soyp13 <- 'http://www.imea.com.br/upload/publicacoes/arquivos/R404_Pantio_Safra_12-13_11-29.pdf'
soyp14_1 <- 'http://www.imea.com.br/upload/publicacoes/arquivos/R404_28__11_13_Tratamento_Semeadura_13-14.pdf'
soyp14_2 <- 'http://www.imea.com.br/upload/publicacoes/arquivos/R404__05_12_13_Tratamento_semeadura_13-14.pdf'
soyp15 <- 'http://www.imea.com.br/upload/publicacoes/arquivos/R404__14_12_11_Tratamento_plantio_14-15.pdf'
soyp16 <- 'http://www.imea.com.br/upload/publicacoes/arquivos/R404__15_01_14_Relatorio_Semeadura_15-16.pdf'
soyp17 <- 'http://www.imea.com.br/upload/publicacoes/arquivos/16122016130906.pdf'
soyp18 <- 'http://www.imea.com.br/upload/publicacoes/arquivos/15122017180857.pdf'
# soyp19 <- 'http://www.imea.com.br/upload/publicacoes/arquivos/23112018162346.pdf'

# Location of soy harvest files of interest
soyh9_1 <- 'http://www.imea.com.br/upload/publicacoes/arquivos/090108_IACS.pdf'
soyh9_2 <- 'http://www.imea.com.br/upload/publicacoes/arquivos/090115_IACS.pdf'
soyh9_3 <- 'http://www.imea.com.br/upload/publicacoes/arquivos/090122_IACS.pdf' 
soyh9_4 <- 'http://www.imea.com.br/upload/publicacoes/arquivos/090129_IACS.pdf'
soyh9_5 <- 'http://www.imea.com.br/upload/publicacoes/arquivos/090205_IACS.pdf'
soyh9_6 <- 'http://www.imea.com.br/upload/publicacoes/arquivos/090212_IACS.pdf'
soyh9_7 <- 'http://www.imea.com.br/upload/publicacoes/arquivos/090219_IACS.pdf'
soyh9_8 <- 'http://www.imea.com.br/upload/publicacoes/arquivos/090226_IACS.pdf'
soyh9_9 <- 'http://www.imea.com.br/upload/publicacoes/arquivos/090305_IACS.pdf'
soyh9_10 <- 'http://www.imea.com.br/upload/publicacoes/arquivos/090312_IACS.pdf'
soyh9_11 <- 'http://www.imea.com.br/upload/publicacoes/arquivos/090319_IACS.pdf'
soyh9_12 <- 'http://www.imea.com.br/upload/publicacoes/arquivos/090326_IACS.pdf'
soyh9_13 <- 'http://www.imea.com.br/upload/publicacoes/arquivos/090401_IACS.pdf'
soyh9_14 <- 'http://www.imea.com.br/upload/publicacoes/arquivos/090409_IACS.pdf'
soyh10 <- 'http://www.imea.com.br/upload/publicacoes/arquivos/2010_04_15_ICS.pdf'
soyh11_1 <- 'http://www.imea.com.br/upload/publicacoes/arquivos/11_02_18_ICSoja.pdf'
soyh11_2 <- 'http://www.imea.com.br/upload/publicacoes/arquivos/11_04_14_ICSoja.pdf'
soyh12_1 <- 'http://www.imea.com.br/upload/publicacoes/arquivos/2012_04_05_ICSoja.pdf'
soyh12_2 <- 'http://www.imea.com.br/upload/publicacoes/arquivos/2012_04_12_ICSoja.pdf'
soyh13 <- 'http://www.imea.com.br/upload/publicacoes/arquivos/R404_Colheita_Safra_12-13_04-18.pdf'
soyh14 <- 'http://www.imea.com.br/upload/publicacoes/arquivos/R404_Colheita_Safra_13-14_17-04.pdf'
soyh15 <- 'http://www.imea.com.br/upload/publicacoes/arquivos/R404_Colheita_Safra_14-15_30-04.pdf'
soyh16 <- 'http://www.imea.com.br/upload/publicacoes/arquivos/R404_Colheita_Safra_15-16_04-29.pdf'
soyh17 <- 'http://www.imea.com.br/upload/publicacoes/arquivos/28042017140741.pdf'
soyh18 <- 'http://www.imea.com.br/upload/publicacoes/arquivos/04052018194311.pdf'


# Extract soy planting tables
outsoyp9 <- extract_tables(soyp9)
outsoyp10_1 <- extract_tables(soyp10_1)
outsoyp10_2 <- extract_tables(soyp10_2)
outsoyp11_1 <- extract_tables(soyp11_1)
outsoyp11_2 <- extract_tables(soyp11_2)
outsoyp12_1 <- extract_tables(soyp12_1)
outsoyp12_2 <- extract_tables(soyp12_2)
outsoyp13 <- extract_tables(soyp13)
outsoyp14_1 <- extract_tables(soyp14_1)
outsoyp14_2 <- extract_tables(soyp14_2)
outsoyp15 <- extract_tables(soyp15)
outsoyp16 <- extract_tables(soyp16)
outsoyp17 <- extract_tables(soyp17)
outsoyp18 <- extract_tables(soyp18)
outsoyp19 <- extract_tables(soyp19)

print('extracted soy planting')

# Extract soy harvest tables
outsoyh9_1 <- extract_tables(soyh9_1)
outsoyh9_2 <- extract_tables(soyh9_2)
outsoyh9_3 <- extract_tables(soyh9_3)
outsoyh9_4 <- extract_tables(soyh9_4)
outsoyh9_5 <- extract_tables(soyh9_5)
outsoyh9_6 <- extract_tables(soyh9_6)
outsoyh9_7 <- extract_tables(soyh9_7)
outsoyh9_8 <- extract_tables(soyh9_8)
outsoyh9_9 <- extract_tables(soyh9_9)
outsoyh9_10 <- extract_tables(soyh9_10)
outsoyh9_11 <- extract_tables(soyh9_11)
outsoyh9_12 <- extract_tables(soyh9_12)
outsoyh9_13 <- extract_tables(soyh9_13)
outsoyh9_14 <- extract_tables(soyh9_14)
outsoyh10 <- extract_tables(soyh10)
outsoyh11_1 <- extract_tables(soyh11_1)
outsoyh11_2 <- extract_tables(soyh11_2)
outsoyh12_1 <- extract_tables(soyh12_1)
outsoyh12_2 <- extract_tables(soyh12_2)
outsoyh13 <- extract_tables(soyh13)
outsoyh14 <- extract_tables(soyh14)
outsoyh15 <- extract_tables(soyh15)
outsoyh16 <- extract_tables(soyh16)
outsoyh17 <- extract_tables(soyh17)
outsoyh18 <- extract_tables(soyh18)

print('extracted soy harvest')

# Create individual data matrices for soy planting data
fsoyp9 <- do.call(rbind, outsoyp9)
fsoyp10_1 <- do.call(rbind, outsoyp10_1)
fsoyp10_2 <- do.call(rbind, outsoyp10_2)
fsoyp11_1_1 <- do.call(rbind, outsoyp11_1[1])
fsoyp11_1_2 <- do.call(rbind, outsoyp11_1[2])
fsoyp11_2_1 <- do.call(rbind, outsoyp11_2[1])
fsoyp11_2_2 <- do.call(rbind, outsoyp11_2[2])
fsoyp12_1_1 <- do.call(rbind, outsoyp12_1[1])
fsoyp12_1_2 <- do.call(rbind, outsoyp12_1[2])
fsoyp12_2_1 <- do.call(rbind, outsoyp12_2[1])
fsoyp12_2_2 <- do.call(rbind, outsoyp12_2[2])
fsoyp13_1 <- do.call(rbind, outsoyp13[1])
fsoyp13_2 <- do.call(rbind, outsoyp13[2])
fsoyp14_1_1 <- do.call(rbind, outsoyp14_1[1])
fsoyp14_1_2 <- do.call(rbind, outsoyp14_1[2])
fsoyp14_2_1 <- do.call(rbind, outsoyp14_2[1])
fsoyp14_2_2 <- do.call(rbind, outsoyp14_2[2])
fsoyp15 <- do.call(rbind, outsoyp15)
fsoyp16 <- do.call(rbind, outsoyp16)
fsoyp17 <- do.call(rbind, outsoyp17)
fsoyp18 <- do.call(rbind, outsoyp18)
fsoyp19 <- do.call(rbind, outsoyp19)

print('fsoyp9 right after do.call')
print(head(fsoyp9))


#Data frames for soy planting data

#2009 soy planting
fsoyp9 <- as.data.frame(fsoyp9[3:nrow(fsoyp9), ], stringsAsFactors = FALSE)

print('fsoyp9 after as.data.frame')
print(head(fsoyp9))

hefsoyp9 <- c('Regions', 'Area_ha', '2008-12-04', 'three')
names(fsoyp9) <- hefsoyp9

print('before cleaning')
print(fsoyp9$Regions)

#2009 soy planting correcting spelling errors in Regions column

# START OF CHANGE --------------------------------------------------
region_names <- str_replace_all(iconv(fsoyp9$Regions, to = 'ASCII//TRANSLIT'), "[~^']", '') %>%
                str_replace_all("[ -]", '_') %>%
                str_replace_all('A\\.', 'Alto') %>%
                str_replace_all('Outras', 'Others') %>%
                str_replace_all('Outros', 'Others')
overall_regions <- c('Noroeste', 'Norte', 'Nordeste', 'Medio_Norte', 'Oeste', 'Centro_Sul', 'Sudeste') 

#loop through all the regions, if the region is 'Other', change the name. 
#ASSUMES ORDER OF REGIONS IS SAME FOR ALL FILES!
regionIndex <- 1
for (regionNameIndex in 1:length(region_names)) {
  regionName <- region_names[regionNameIndex]
  if (regionName == 'Others') {
    newRegionName <- paste0('Others_', overall_regions[regionIndex])
    region_names[regionNameIndex] <- newRegionName
    regionIndex <- regionIndex + 1
  }
}

fsoyp9$Regions <- region_names
print(fsoyp9$Regions)

# END OF CHANGE ---------------------------------------------------


fsoyp9[3, "Regions"] <- "Others_Noroeste"
fsoyp9[5, "Regions"] <- "Itauba"
fsoyp9[6, "Regions"] <- "Others_Norte"
fsoyp9[9, "Regions"] <- "Querencia"
fsoyp9[10, "Regions"] <- "Gaucha_do_Norte"
fsoyp9[12, "Regions"] <- "Others_Nordeste"
fsoyp9[13, "Regions"] <- "Medio_Norte"
fsoyp9[21, "Regions"] <- "Nova_Ubirata"
fsoyp9[23, "Regions"] <- "Sao_Jose_do_Rio_Claro"
fsoyp9[24, "Regions"] <- "Others_Medio_Norte"
fsoyp9[28, "Regions"] <- "Campos_de_Julio"
fsoyp9[29, "Regions"] <- "Others_Oeste"
fsoyp9[32, "Regions"] <- "Tangara_da_Serra"
fsoyp9[34, "Regions"] <- "Chapada_dos_Guimaraes"
fsoyp9[35, "Regions"] <- "Others_Centro_Sul"
fsoyp9[39, "Regions"] <- "Alto_Garcas_e_Alto_Taquari"
fsoyp9[42, "Regions"] <- "Others_Sudeste"

#Remove periods from thousands positions and convert Area_ha to numeric
fsoyp9$Area_ha <- gsub("\\.", "", fsoyp9$Area_ha)
fsoyp9 <- fsoyp9 %>%
  mutate(Area_ha = as.numeric(Area_ha))
#Change commas to periods in percentage columns
fsoyp9$`2008-12-04` <- gsub(",", "\\.", fsoyp9$`2008-12-04`)
fsoyp9$three <- gsub(",", "\\.", fsoyp9$three)
#remove percent signs
fsoyp9$`2008-12-04` <- gsub("%", "", fsoyp9$`2008-12-04`)
fsoyp9$three <- gsub("%", "", fsoyp9$three)
#convert date columns to numeric
fsoyp9$`2008-12-04` <- as.numeric(fsoyp9$`2008-12-04`)
fsoyp9$three <- as.numeric(fsoyp9$three)
#divide percentages by 100
fsoyp9$`2008-12-04` <- fsoyp9$`2008-12-04`/100
fsoyp9$three <- fsoyp9$three/100
#change column 3 name back to what it's supposed to be
colnames(fsoyp9)[3] <- "2008-12-11"
#Write final table to disk
write.csv(fsoyp9, file='soy_plant_2009_muni.csv', row.names=FALSE)

#2010 soy planting - setting as data frame - 1st file
fsoyp10_1 <- as.data.frame(fsoyp10_1[2:nrow(fsoyp10_1), ], stringsAsFactors = FALSE)
hefsoyp10_1 <- c('Regions', 'Area_ha', '2009-09-24', '2009-10-01', '2009-10-08',
                 '2009-10-15', '2009-10-22', '2009-10-29', '2009-11-05', '2009-11-12', '2009-11-19',
                 '2009-11-26')
names(fsoyp10_1) <- hefsoyp10_1

#2010 soy planting - erasing unnecessary rows, renmaing rows with errors, and removing
#columns that will be duplicated after merge with 2nd file - 1st file
fsoyp10_1_muni <- fsoyp10_1[-c(44, 45, 46, 47, 48, 49, 50, 51, 52, 53), ]
fsoyp10_1_muni[3, "Regions"] <- "Others_Noroeste"
fsoyp10_1_muni[5, "Regions"] <- "Itauba"
fsoyp10_1_muni[6, "Regions"] <- "Others_Norte"
fsoyp10_1_muni[9, "Regions"] <- "Querencia"
fsoyp10_1_muni[10, "Regions"] <- "Gaucha_do_Norte"
fsoyp10_1_muni[12, "Regions"] <- "Others_Nordeste"
fsoyp10_1_muni[13, "Regions"] <- "Medio_Norte"
fsoyp10_1_muni[21, "Regions"] <- "Nova_Ubirata"
fsoyp10_1_muni[23, "Regions"] <- "Sao_Jose_do_Rio_Claro"
fsoyp10_1_muni[24, "Regions"] <- "Others_Medio_Norte"
fsoyp10_1_muni[28, "Regions"] <- "Campos_de_Julio"
fsoyp10_1_muni[29, "Regions"] <- "Others_Oeste"
fsoyp10_1_muni[32, "Regions"] <- "Tangara_da_Serra"
fsoyp10_1_muni[34, "Regions"] <- "Chapada_dos_Guimaraes"
fsoyp10_1_muni[35, "Regions"] <- "Others_Centro_Sul"
fsoyp10_1_muni[39, "Regions"] <- "Alto_Garcas_e_Alto_Taquari"
fsoyp10_1_muni[42, "Regions"] <- "Others_Sudeste"
fsoyp10_1_muni$Area_ha <- NULL

#2010 soy planting - setting as data frame - 2nd file
fsoyp10_2 <- as.data.frame(fsoyp10_2[2:nrow(fsoyp10_2), ], stringsAsFactors = FALSE)
hefsoyp10_2 <- c('Regions', 'Area_ha', '2009-10-08', '2009-10-15', '2009-10-22', '2009-10-29',
                 '2009-11-05', '2009-11-12', '2009-11-19', '2009-11-26', '2009-12-03')
names(fsoyp10_2) <- hefsoyp10_2

#2010 soy planting - erasing unnecessary rows and renaming rows with errors, and removing 
#columns that will be duplicated after merge with 1st file - 2nd file
fsoyp10_2_muni <- fsoyp10_2[-c(44, 45, 46, 47, 48, 49, 50, 51, 52, 53), ]
fsoyp10_2_muni[3, "Regions"] <- "Others_Noroeste"
fsoyp10_2_muni[5, "Regions"] <- "Itauba"
fsoyp10_2_muni[6, "Regions"] <- "Others_Norte"
fsoyp10_2_muni[9, "Regions"] <- "Querencia"
fsoyp10_2_muni[10, "Regions"] <- "Gaucha_do_Norte"
fsoyp10_2_muni[12, "Regions"] <- "Others_Nordeste"
fsoyp10_2_muni[13, "Regions"] <- "Medio_Norte"
fsoyp10_2_muni[21, "Regions"] <- "Nova_Ubirata"
fsoyp10_2_muni[23, "Regions"] <- "Sao_Jose_do_Rio_Claro"
fsoyp10_2_muni[24, "Regions"] <- "Others_Medio_Norte"
fsoyp10_2_muni[28, "Regions"] <- "Campos_de_Julio"
fsoyp10_2_muni[29, "Regions"] <- "Others_Oeste"
fsoyp10_2_muni[32, "Regions"] <- "Tangara_da_Serra"
fsoyp10_2_muni[34, "Regions"] <- "Chapada_dos_Guimaraes"
fsoyp10_2_muni[35, "Regions"] <- "Others_Centro_Sul"
fsoyp10_2_muni[39, "Regions"] <- "Alto_Garcas_e_Alto_Taquari"
fsoyp10_2_muni[42, "Regions"] <- "Others_Sudeste"
fsoyp10_2_muni$'2009-10-08' <- NULL
fsoyp10_2_muni$'2009-10-15' <- NULL
fsoyp10_2_muni$'2009-10-22' <- NULL
fsoyp10_2_muni$'2009-10-29' <- NULL
fsoyp10_2_muni$'2009-11-05' <- NULL
fsoyp10_2_muni$'2009-11-12' <- NULL
fsoyp10_2_muni$'2009-11-19' <- NULL
fsoyp10_2_muni$'2009-11-26' <- NULL

#2010 soy planting - merging 1st and second files
fsoyp10_muni <- merge(fsoyp10_1_muni, fsoyp10_2_muni, by="Regions", sort = FALSE)
#2010 soy planting - moving Area_ha column to the second position in line
fsoyp10_muni_1 <- fsoyp10_muni[c(1,12,2:11,13)]
#Remove periods and spaces from decimal/thousands positions and convert Area_ha to numeric
fsoyp10_muni_1$Area_ha <- gsub("\\.", "", fsoyp10_muni_1$Area_ha)
fsoyp10_muni_1$Area_ha <- gsub(" ", "", fsoyp10_muni_1$Area_ha)
fsoyp10_muni_1 <- fsoyp10_muni_1 %>%
  mutate(Area_ha = as.numeric(Area_ha))
#Change commas to periods in percentage columns
fsoyp10_muni_1$`2009-09-24` <- gsub(",", "\\.", fsoyp10_muni_1$`2009-09-24`)
fsoyp10_muni_1$`2009-10-01` <- gsub(",", "\\.", fsoyp10_muni_1$`2009-10-01`)
fsoyp10_muni_1$`2009-10-08` <- gsub(",", "\\.", fsoyp10_muni_1$`2009-10-08`)
fsoyp10_muni_1$`2009-10-15` <- gsub(",", "\\.", fsoyp10_muni_1$`2009-10-15`)
fsoyp10_muni_1$`2009-10-22` <- gsub(",", "\\.", fsoyp10_muni_1$`2009-10-22`)
fsoyp10_muni_1$`2009-10-29` <- gsub(",", "\\.", fsoyp10_muni_1$`2009-10-29`)
fsoyp10_muni_1$`2009-11-05` <- gsub(",", "\\.", fsoyp10_muni_1$`2009-11-05`)
fsoyp10_muni_1$`2009-11-12` <- gsub(",", "\\.", fsoyp10_muni_1$`2009-11-12`)
fsoyp10_muni_1$`2009-11-19` <- gsub(",", "\\.", fsoyp10_muni_1$`2009-11-19`)
fsoyp10_muni_1$`2009-11-26` <- gsub(",", "\\.", fsoyp10_muni_1$`2009-11-26`)
fsoyp10_muni_1$`2009-12-03` <- gsub(",", "\\.", fsoyp10_muni_1$`2009-12-03`)

#Removing percentage symbols
fsoyp10_muni_1$`2009-09-24` <- gsub("%", "", fsoyp10_muni_1$`2009-09-24`)
fsoyp10_muni_1$`2009-10-01` <- gsub("%", "", fsoyp10_muni_1$`2009-10-01`)
fsoyp10_muni_1$`2009-10-08` <- gsub("%", "", fsoyp10_muni_1$`2009-10-08`)
fsoyp10_muni_1$`2009-10-15` <- gsub("%", "", fsoyp10_muni_1$`2009-10-15`)
fsoyp10_muni_1$`2009-10-22` <- gsub("%", "", fsoyp10_muni_1$`2009-10-22`)
fsoyp10_muni_1$`2009-10-29` <- gsub("%", "", fsoyp10_muni_1$`2009-10-29`)
fsoyp10_muni_1$`2009-11-05` <- gsub("%", "", fsoyp10_muni_1$`2009-11-05`)
fsoyp10_muni_1$`2009-11-12` <- gsub("%", "", fsoyp10_muni_1$`2009-11-12`)
fsoyp10_muni_1$`2009-11-19` <- gsub("%", "", fsoyp10_muni_1$`2009-11-19`)
fsoyp10_muni_1$`2009-11-26` <- gsub("%", "", fsoyp10_muni_1$`2009-11-26`)
fsoyp10_muni_1$`2009-12-03` <- gsub("%", "", fsoyp10_muni_1$`2009-12-03`)

#changing to numeric
sapply(fsoyp10_muni_1, mode)
fsoyp10_muni_1$`2009-09-24` <- as.numeric(fsoyp10_muni_1$`2009-09-24`)
fsoyp10_muni_1$`2009-10-01` <- as.numeric(fsoyp10_muni_1$`2009-10-01`)
fsoyp10_muni_1$`2009-10-08` <- as.numeric(fsoyp10_muni_1$`2009-10-08`)
fsoyp10_muni_1$`2009-10-15` <- as.numeric(fsoyp10_muni_1$`2009-10-15`)
fsoyp10_muni_1$`2009-10-22` <- as.numeric(fsoyp10_muni_1$`2009-10-22`)
fsoyp10_muni_1$`2009-10-29` <- as.numeric(fsoyp10_muni_1$`2009-10-29`)
fsoyp10_muni_1$`2009-11-05` <- as.numeric(fsoyp10_muni_1$`2009-11-05`)
fsoyp10_muni_1$`2009-11-12` <- as.numeric(fsoyp10_muni_1$`2009-11-12`)
fsoyp10_muni_1$`2009-11-19` <- as.numeric(fsoyp10_muni_1$`2009-11-19`)
fsoyp10_muni_1$`2009-11-26` <- as.numeric(fsoyp10_muni_1$`2009-11-26`)
fsoyp10_muni_1$`2009-12-03` <- as.numeric(fsoyp10_muni_1$`2009-12-03`)

#dividing percentage values by 100 to convert them to decimal form
fsoyp10_muni_1$`2009-09-24` <- fsoyp10_muni_1$`2009-09-24`/100
fsoyp10_muni_1$`2009-10-01` <- fsoyp10_muni_1$`2009-10-01`/100
fsoyp10_muni_1$`2009-10-08` <- fsoyp10_muni_1$`2009-10-08`/100
fsoyp10_muni_1$`2009-10-15` <- fsoyp10_muni_1$`2009-10-15`/100
fsoyp10_muni_1$`2009-10-22` <- fsoyp10_muni_1$`2009-10-22`/100
fsoyp10_muni_1$`2009-10-29` <- fsoyp10_muni_1$`2009-10-29`/100
fsoyp10_muni_1$`2009-11-05` <- fsoyp10_muni_1$`2009-11-05`/100
fsoyp10_muni_1$`2009-11-12` <- fsoyp10_muni_1$`2009-11-12`/100
fsoyp10_muni_1$`2009-11-19` <- fsoyp10_muni_1$`2009-11-19`/100
fsoyp10_muni_1$`2009-11-26` <- fsoyp10_muni_1$`2009-11-26`/100
fsoyp10_muni_1$`2009-12-03` <- fsoyp10_muni_1$`2009-12-03`/100

#Write final table to disk
write.csv(fsoyp10_muni_1, file='soy_plant_2010_muni.csv', row.names=FALSE)

#2010 soy planting - isolating regional summary table by removing unnecessary rows from 2nd file
fsoyp10_2_re <- fsoyp10_2[-c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26
                             ,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,51,53), ]
fsoyp10_2_re[11] <- NULL
fsoyp10_2_re[10] <- NULL
fsoyp10_2_re[5] <- NULL
hefsoyp10_2_re <- c('Noroeste', 'Norte', 'Nordeste', 'Medio_Norte', 'Oeste',
                    'Centro_Sul', 'Sudeste', 'Mato_Grosso')
names(fsoyp10_2_re) <- hefsoyp10_2_re
#2010 soy planting regional summary table - shifting data over and re-entering erroneous values
fsoyp10_2_re[1, "Noroeste"] <- "241.200"
fsoyp10_2_re[2, "Noroeste"] <- "100,0%"
fsoyp10_2_re[3, "Noroeste"] <- "100,0%"
fsoyp10_2_re[4, "Noroeste"] <- "0,0%"
#Transpose 2010 soy planting regions table (rows to columns, columns to rows)
fsoyp10_2_re_1 <- t(fsoyp10_2_re)
#Turn this transposed table into a data frame and remove headers in first row
fsoyp10_2_re_1 <- as.data.frame(fsoyp10_2_re_1[1:nrow(fsoyp10_2_re_1), ], sort= FALSE)
#Create new header names and insert them
hefsoyp10_2_re_1 <- c('Area_ha', 'first', 'second', 'change_in_plant_per')
names(fsoyp10_2_re_1) <- hefsoyp10_2_re_1
#Change row names to a separate column and name it "IMEA_Regions" 
setDT(fsoyp10_2_re_1, keep.rownames=TRUE)
colnames(fsoyp10_2_re_1)[1] <- "IMEA_Regions"
#change Area_ha column to numeric and remove periods from thousandths position
fsoyp10_2_re_1 <- fsoyp10_2_re_1 %>%
  mutate(Area_ha = as.numeric(gsub("\\.", "", Area_ha)))
#remove commas from decimal position in other three columns
fsoyp10_2_re_1$first <- gsub(",", "\\.", fsoyp10_2_re_1$first)
fsoyp10_2_re_1$second <- gsub(",", "\\.", fsoyp10_2_re_1$second)
fsoyp10_2_re_1$change_in_plant_per <- gsub(",", "\\.", fsoyp10_2_re_1$change_in_plant_per)
#remove percent signs from other three columns
fsoyp10_2_re_1$first <- gsub("%", "", fsoyp10_2_re_1$first)
fsoyp10_2_re_1$second <- gsub("%", "", fsoyp10_2_re_1$second)
fsoyp10_2_re_1$change_in_plant_per <- gsub("%", "", fsoyp10_2_re_1$change_in_plant_per)
#change other columns to numeric
fsoyp10_2_re_1 <- fsoyp10_2_re_1 %>%
  mutate(change_in_plant_per = as.numeric(change_in_plant_per)) 
fsoyp10_2_re_1 <- fsoyp10_2_re_1 %>%
  mutate(second = as.numeric(second)) 
fsoyp10_2_re_1 <- fsoyp10_2_re_1 %>%
  mutate(first = as.numeric(first))
#check the type of data in each column
sapply(fsoyp10_2_re_1, mode)
#rename the date columns
colnames(fsoyp10_2_re_1)[3] <- "2009-12-03"
colnames(fsoyp10_2_re_1)[4] <- "2008-12-04"
#divide percentage columns by 100 to obtain decimal form
fsoyp10_2_re_1$'2009-12-03' <- fsoyp10_2_re_1$'2009-12-03'/100
fsoyp10_2_re_1$'2008-12-04' <- fsoyp10_2_re_1$'2008-12-04'/100
fsoyp10_2_re_1$'change_in_plant_per' <- fsoyp10_2_re_1$'change_in_plant_per'/100
#Write final table to disk
write.csv(fsoyp10_2_re_1, file='soy_plant_2010_region.csv', row.names=FALSE)

#2011 soy planting - setting as data frame - 1st/2nd files municipal data
fsoyp11_1_1 <- as.data.frame(fsoyp11_1_1[2:nrow(fsoyp11_1_1), ], stringsAsFactors = FALSE)
hefsoyp11_1_1 <- c('Regions', 'Area_ha', '2010-09-30', '2010-10-07', '2010-10-14',
'2010-10-21', '2010-10-28', '2010-11-04', '2010-11-11')
names(fsoyp11_1_1) <- hefsoyp11_1_1
fsoyp11_1_1[3, "Regions"] <- "Others_Noroeste"
fsoyp11_1_1[5, "Regions"] <- "Itauba"
fsoyp11_1_1[6, "Regions"] <- "Others_Norte"
fsoyp11_1_1[9, "Regions"] <- "Querencia"
fsoyp11_1_1[10, "Regions"] <- "Gaucha_do_Norte"
fsoyp11_1_1[12, "Regions"] <- "Others_Nordeste"
fsoyp11_1_1[13, "Regions"] <- "Medio_Norte"
fsoyp11_1_1[21, "Regions"] <- "Nova_Ubirata"
fsoyp11_1_1[24, "Regions"] <- "Others_Medio_Norte"
fsoyp11_1_1[28, "Regions"] <- "Campos_de_Julio"
fsoyp11_1_1[28, "Regions"] <- "Campos_de_Julio"
fsoyp11_1_1[29, "Regions"] <- "Others_Oeste"
fsoyp11_1_1[32, "Regions"] <- "Tangara_da_Serra"
fsoyp11_1_1[34, "Regions"] <- "Chapada_dos_Guimaraes"
fsoyp11_1_1[35, "Regions"] <- "Others_Centro_Sul"
fsoyp11_1_1[39, "Regions"] <- "Alto_Garcas_e_Alto_Taquari"
fsoyp11_1_1[42, "Regions"] <- "Others_Sudeste"
#2nd file data frame and removing duplicate columns - naming remaining columns
fsoyp11_2_1 <- as.data.frame(fsoyp11_2_1[2:nrow(fsoyp11_2_1), ], stringsAsFactors = FALSE)
fsoyp11_2_1$'V3' <- NULL
fsoyp11_2_1$'V2' <- NULL
fsoyp11_2_1$'V5' <- NULL
fsoyp11_2_1$'V4' <- NULL
fsoyp11_2_1$'V6' <- NULL
hefsoyp11_2_1 <- c('Regions','2010-11-18', '2010-11-25', '2010-12-02')
names(fsoyp11_2_1) <- hefsoyp11_2_1
fsoyp11_2_1[3, "Regions"] <- "Others_Noroeste"
fsoyp11_2_1[5, "Regions"] <- "Itauba"
fsoyp11_2_1[6, "Regions"] <- "Others_Norte"
fsoyp11_2_1[9, "Regions"] <- "Querencia"
fsoyp11_2_1[10, "Regions"] <- "Gaucha_do_Norte"
fsoyp11_2_1[12, "Regions"] <- "Others_Nordeste"
fsoyp11_2_1[13, "Regions"] <- "Medio_Norte"
fsoyp11_2_1[21, "Regions"] <- "Nova_Ubirata"
fsoyp11_2_1[23, "Regions"] <- "Sao_Jose_do_Rio_Claro"
fsoyp11_2_1[24, "Regions"] <- "Others_Medio_Norte"
fsoyp11_2_1[28, "Regions"] <- "Campos_de_Julio"
fsoyp11_2_1[29, "Regions"] <- "Others_Oeste"
fsoyp11_2_1[32, "Regions"] <- "Tangara_da_Serra"
fsoyp11_2_1[34, "Regions"] <- "Chapada_dos_Guimaraes"
fsoyp11_2_1[35, "Regions"] <- "Others_Centro_Sul"
fsoyp11_2_1[39, "Regions"] <- "Alto_Garcas_e_Alto_Taquari"
fsoyp11_2_1[42, "Regions"] <- "Others_Sudeste"
#Merging first and second files for municipal level data
fsoyp11_muni <- merge(fsoyp11_1_1, fsoyp11_2_1, by="Regions", sort = FALSE)
View(fsoyp11_muni)
#Remove periods and spaces from decimal/thousands positions and convert Area_ha to numeric
fsoyp11_muni$Area_ha <- gsub("\\.", "", fsoyp11_muni$Area_ha)
fsoyp11_muni$Area_ha <- gsub(" ", "", fsoyp11_muni$Area_ha)
fsoyp11_muni <- fsoyp11_muni %>%
mutate(Area_ha = as.numeric(Area_ha))
View(fsoyp11_muni)
#Change commas to periods in percentage columns
fsoyp11_muni$`2010-09-30` <- gsub(",", "\\.", fsoyp11_muni$`2010-09-30`)
fsoyp11_muni$`2010-10-07` <- gsub(",", "\\.", fsoyp11_muni$`2010-10-07`)
fsoyp11_muni$`2010-10-14` <- gsub(",", "\\.", fsoyp11_muni$`2010-10-14`)
fsoyp11_muni$`2010-10-21` <- gsub(",", "\\.", fsoyp11_muni$`2010-10-21`)
fsoyp11_muni$`2010-10-28` <- gsub(",", "\\.", fsoyp11_muni$`2010-10-28`)
fsoyp11_muni$`2010-11-04` <- gsub(",", "\\.", fsoyp11_muni$`2010-11-04`)
fsoyp11_muni$`2010-11-11` <- gsub(",", "\\.", fsoyp11_muni$`2010-11-11`)
fsoyp11_muni$`2010-11-18` <- gsub(",", "\\.", fsoyp11_muni$`2010-11-18`)
fsoyp11_muni$`2010-11-25` <- gsub(",", "\\.", fsoyp11_muni$`2010-11-25`)
fsoyp11_muni$`2010-12-02` <- gsub(",", "\\.", fsoyp11_muni$`2010-12-02`)
fsoyp11_muni$`2010-11-04` <- gsub(",", "\\.", fsoyp11_muni$`2010-11-04`)
#Removing percentage symbols
fsoyp11_muni$`2010-09-30` <- gsub("%", "", fsoyp11_muni$`2010-09-30`)
fsoyp11_muni$`2010-10-07` <- gsub("%", "", fsoyp11_muni$`2010-10-07`)
fsoyp11_muni$`2010-10-14` <- gsub("%", "", fsoyp11_muni$`2010-10-14`)
fsoyp11_muni$`2010-10-21` <- gsub("%", "", fsoyp11_muni$`2010-10-21`)
fsoyp11_muni$`2010-10-28` <- gsub("%", "", fsoyp11_muni$`2010-10-28`)
fsoyp11_muni$`2010-11-04` <- gsub("%", "", fsoyp11_muni$`2010-11-04`)
fsoyp11_muni$`2010-11-11` <- gsub("%", "", fsoyp11_muni$`2010-11-11`)
fsoyp11_muni$`2010-11-18` <- gsub("%", "", fsoyp11_muni$`2010-11-18`)
fsoyp11_muni$`2010-11-25` <- gsub("%", "", fsoyp11_muni$`2010-11-25`)
fsoyp11_muni$`2010-12-02` <- gsub("%", "", fsoyp11_muni$`2010-12-02`)
#Convert to numeric
fsoyp11_muni$`2010-09-30` <- as.numeric(fsoyp11_muni$`2010-09-30`)
fsoyp11_muni$`2010-10-07` <- as.numeric(fsoyp11_muni$`2010-10-07`)
fsoyp11_muni$`2010-10-14` <- as.numeric(fsoyp11_muni$`2010-10-14`)
fsoyp11_muni$`2010-10-21` <- as.numeric(fsoyp11_muni$`2010-10-21`)
fsoyp11_muni$`2010-10-28` <- as.numeric(fsoyp11_muni$`2010-10-28`)
fsoyp11_muni$`2010-11-04` <- as.numeric(fsoyp11_muni$`2010-11-04`)
fsoyp11_muni$`2010-11-11` <- as.numeric(fsoyp11_muni$`2010-11-11`)
fsoyp11_muni$`2010-11-18` <- as.numeric(fsoyp11_muni$`2010-11-18`)
fsoyp11_muni$`2010-11-25` <- as.numeric(fsoyp11_muni$`2010-11-25`)
fsoyp11_muni$`2010-12-02` <- as.numeric(fsoyp11_muni$`2010-12-02`)
#dividing percentage values by 100 to convert them to decimal form
fsoyp11_muni$`2010-09-30` <- fsoyp11_muni$`2010-09-30`/100
fsoyp11_muni$`2010-10-07` <- fsoyp11_muni$`2010-10-07`/100
fsoyp11_muni$`2010-10-14` <- fsoyp11_muni$`2010-10-14`/100
fsoyp11_muni$`2010-10-21` <- fsoyp11_muni$`2010-10-21`/100
fsoyp11_muni$`2010-10-28` <- fsoyp11_muni$`2010-10-28`/100
fsoyp11_muni$`2010-11-04` <- fsoyp11_muni$`2010-11-04`/100
fsoyp11_muni$`2010-11-11` <- fsoyp11_muni$`2010-11-11`/100
fsoyp11_muni$`2010-11-18` <- fsoyp11_muni$`2010-11-18`/100
fsoyp11_muni$`2010-11-25` <- fsoyp11_muni$`2010-11-25`/100
fsoyp11_muni$`2010-12-02` <- fsoyp11_muni$`2010-12-02`/100
#changing to numeric
sapply(fsoyp11_muni, mode)
View(fsoyp11_muni)
#Write final table to disk
write.csv(fsoyp11_muni, file='soy_plant_2011_muni.csv', row.names=FALSE)

#2011 soy planting - isolating regional summary table by removing unnecessary rows from 2nd file
View(fsoyp11_1_2)
View(fsoyp11_2_2)
fsoyp11_1_2 <- as.data.frame(fsoyp11_1_2[5:nrow(fsoyp11_1_2), ], stringsAsFactors = FALSE)
fsoyp11_2_2 <- as.data.frame(fsoyp11_2_2[5:nrow(fsoyp11_2_2), ], stringsAsFactors = FALSE)
fsoyp11_1_2[5] <- NULL
fsoyp11_1_2[2] <- NULL
hefsoyp11_1_2 <- c('Noroeste', 'Norte', 'Nordeste', 'Medio_Norte', 'Oeste',
                   'Centro_Sul', 'Sudeste', 'Mato_Grosso')
names(fsoyp11_1_2) <- hefsoyp11_1_2
fsoyp11_2_2[4] <- NULL
hefsoyp11_2_2 <- c('Noroeste', 'Norte', 'Nordeste', 'Medio_Norte', 'Oeste',
                   'Centro_Sul', 'Sudeste', 'Mato_Grosso')
names(fsoyp11_2_2) <- hefsoyp11_2_2
#2011 soy planting regional summary table - shifting data over and re-entering erroneous values
fsoyp11_1_2[1, "Noroeste"] <- "261.200"
fsoyp11_1_2[2, "Noroeste"] <- "59,9%"
fsoyp11_1_2[3, "Noroeste"] <- "80,9%"
fsoyp11_1_2[4, "Noroeste"] <- "-21,0%"
fsoyp11_2_2[1, "Noroeste"] <- "261.200"
fsoyp11_2_2[2, "Noroeste"] <- "100,0%"
fsoyp11_2_2[3, "Noroeste"] <- "100,0%"
fsoyp11_2_2[4, "Noroeste"] <- "0,0%"
#Transpose 2010 soy planting regions table (rows to columns, columns to rows)
fsoyp11_1_2 <- t(fsoyp11_1_2)
fsoyp11_2_2 <- t(fsoyp11_2_2)
#Turn this transposed table into a data frame and remove headers in first row
fsoyp11_1_2 <- as.data.frame(fsoyp11_1_2[1:nrow(fsoyp11_1_2), ], sort= FALSE)
fsoyp11_2_2 <- as.data.frame(fsoyp11_2_2[1:nrow(fsoyp11_2_2), ], sort= FALSE)
#Create new header names and insert them
hefsoyp11_1_2 <- c('Area_ha', '2010-11-11', '2009-11-12', 'change_in_plant_per')
names(fsoyp11_1_2) <- hefsoyp11_1_2
hefsoyp11_2_2 <- c('Area_ha', '2010-12-02', '2009-12-03', 'change_in_plant_per')
names(fsoyp11_2_2) <- hefsoyp11_2_2
fsoyp11_2_2[1] <- NULL
# Merging two versions
fsoyp11reg <- merge(fsoyp11_1_2, fsoyp11_2_2, by="row.names", sort=FALSE)
fsoyp11reg <- fsoyp11reg[, -c(4:5)]
#Rename column 1 as "IMEA_Regions" 
colnames(fsoyp11reg)[1] <- "IMEA_Regions"
colnames(fsoyp11reg)[6] <- "change_in_plant_per"
#change Area_ha column to numeric and remove periods from thousandths position
fsoyp11reg <- fsoyp11reg %>%
  mutate(Area_ha = as.numeric(gsub("\\.", "", Area_ha)))
#xxx <- 3
#colnames(fsoyp11reg)[1]

for (xxx in 3:dim(fsoyp11reg)[2]){
  fsoyp11reg[[paste(colnames(fsoyp11reg)[xxx])]] <- gsub(",", "\\.", fsoyp11reg[[paste(colnames(fsoyp11reg)[xxx])]])
  fsoyp11reg[[paste(colnames(fsoyp11reg)[xxx])]] <- gsub("%", "", fsoyp11reg[[paste(colnames(fsoyp11reg)[xxx])]])
  fsoyp11reg[[paste(colnames(fsoyp11reg)[xxx])]] <- gsub("p.p.", "", fsoyp11reg[[paste(colnames(fsoyp11reg)[xxx])]])
  fsoyp11reg[[paste(colnames(fsoyp11reg)[xxx])]] <- as.numeric(fsoyp11reg[[paste(colnames(fsoyp11reg)[xxx])]])
  fsoyp11reg[[paste(colnames(fsoyp11reg)[xxx])]] <- fsoyp11reg[[paste(colnames(fsoyp11reg)[xxx])]]/100
}
dim(fsoyp11reg)
sapply(fsoyp11reg, mode)

fsoyp11reg[7, "change_in_plant_per"] <- "-2.5"
fsoyp11reg[8, "change_in_plant_per"] <- "0.2"

#Write final table to disk
write.csv(fsoyp11reg, file='soy_plant_2011_region.csv', row.names=FALSE)

#2012 soy planting - setting as data frame - 1st/2nd files municipal data
fsoyp12_1_1 <- as.data.frame(fsoyp12_1_1[2:nrow(fsoyp12_1_1), ], stringsAsFactors = FALSE)
hefsoyp12_1_1 <- c('Regions', 'Area_ha', '2011-09-29', '2011-10-06', '2011-10-13', '2011-10-20', '2011-10-27',
                   '2011-11-03', '2011-11-10', '2011-11-17', '2011-11-24')
names(fsoyp12_1_1) <- hefsoyp12_1_1
fsoyp12_1_1[3, "Regions"] <- "Others_Noroeste"
fsoyp12_1_1[5, "Regions"] <- "Itauba"
fsoyp12_1_1[6, "Regions"] <- "Others_Norte"
fsoyp12_1_1[9, "Regions"] <- "Querencia"
fsoyp12_1_1[10, "Regions"] <- "Gaucha_do_Norte"
fsoyp12_1_1[12, "Regions"] <- "Others_Nordeste"
fsoyp12_1_1[13, "Regions"] <- "Medio_Norte"
fsoyp12_1_1[21, "Regions"] <- "Nova_Ubirata"
fsoyp12_1_1[24, "Regions"] <- "Others_Medio_Norte"
fsoyp12_1_1[28, "Regions"] <- "Campos_de_Julio"
fsoyp12_1_1[28, "Regions"] <- "Campos_de_Julio"
fsoyp12_1_1[29, "Regions"] <- "Others_Oeste"
fsoyp12_1_1[32, "Regions"] <- "Tangara_da_Serra"
fsoyp12_1_1[34, "Regions"] <- "Chapada_dos_Guimaraes"
fsoyp12_1_1[35, "Regions"] <- "Others_Centro_Sul"
fsoyp12_1_1[39, "Regions"] <- "Alto_Garcas_e_Alto_Taquari"
fsoyp12_1_1[42, "Regions"] <- "Others_Sudeste"
#2nd file data frame and removing duplicate columns - naming remaining columns
fsoyp12_2_1 <- as.data.frame(fsoyp12_2_1[2:nrow(fsoyp12_2_1), ], stringsAsFactors = FALSE)
fsoyp12_2_1$'V2' <- NULL
fsoyp12_2_1$'V3' <- NULL
fsoyp12_2_1$'V4' <- NULL
fsoyp12_2_1$'V5' <- NULL
fsoyp12_2_1$'V6' <- NULL
fsoyp12_2_1$'V7' <- NULL
fsoyp12_2_1$'V8' <- NULL
fsoyp12_2_1$'V9' <- NULL
hefsoyp12_2_1 <- c('Regions','2011-12-01')
names(fsoyp12_2_1) <- hefsoyp12_2_1
fsoyp12_2_1[3, "Regions"] <- "Others_Noroeste"
fsoyp12_2_1[5, "Regions"] <- "Itauba"
fsoyp12_2_1[6, "Regions"] <- "Others_Norte"
fsoyp12_2_1[9, "Regions"] <- "Querencia"
fsoyp12_2_1[10, "Regions"] <- "Gaucha_do_Norte"
fsoyp12_2_1[12, "Regions"] <- "Others_Nordeste"
fsoyp12_2_1[13, "Regions"] <- "Medio_Norte"
fsoyp12_2_1[21, "Regions"] <- "Nova_Ubirata"
fsoyp12_2_1[23, "Regions"] <- "Sao_Jose_do_Rio_Claro"
fsoyp12_2_1[24, "Regions"] <- "Others_Medio_Norte"
fsoyp12_2_1[28, "Regions"] <- "Campos_de_Julio"
fsoyp12_2_1[29, "Regions"] <- "Others_Oeste"
fsoyp12_2_1[32, "Regions"] <- "Tangara_da_Serra"
fsoyp12_2_1[34, "Regions"] <- "Chapada_dos_Guimaraes"
fsoyp12_2_1[35, "Regions"] <- "Others_Centro_Sul"
fsoyp12_2_1[39, "Regions"] <- "Alto_Garcas_e_Alto_Taquari"
fsoyp12_2_1[42, "Regions"] <- "Others_Sudeste"
#Merging first and second files for municipal level data
fsoyp12_muni <- merge(fsoyp12_1_1, fsoyp12_2_1, by="Regions", sort = FALSE)
View(fsoyp12_muni)
#Remove periods and spaces from decimal/thousands positions and convert Area_ha to numeric
fsoyp12_muni$Area_ha <- gsub("\\.", "", fsoyp12_muni$Area_ha)
fsoyp12_muni$Area_ha <- gsub(" ", "", fsoyp12_muni$Area_ha)
fsoyp12_muni <- fsoyp12_muni %>%
  mutate(Area_ha = as.numeric(Area_ha))
View(fsoyp12_muni)
#Change commas to periods in percentage columns
fsoyp12_muni$`2011-09-29` <- gsub(",", "\\.", fsoyp12_muni$`2011-09-29`)
fsoyp12_muni$`2011-10-06` <- gsub(",", "\\.", fsoyp12_muni$`2011-10-06`)
fsoyp12_muni$`2011-10-13` <- gsub(",", "\\.", fsoyp12_muni$`2011-10-13`)
fsoyp12_muni$`2011-10-20` <- gsub(",", "\\.", fsoyp12_muni$`2011-10-20`)
fsoyp12_muni$`2011-10-27` <- gsub(",", "\\.", fsoyp12_muni$`2011-10-27`)
fsoyp12_muni$`2011-11-03` <- gsub(",", "\\.", fsoyp12_muni$`2011-11-03`)
fsoyp12_muni$`2011-11-10` <- gsub(",", "\\.", fsoyp12_muni$`2011-11-10`)
fsoyp12_muni$`2011-11-17` <- gsub(",", "\\.", fsoyp12_muni$`2011-11-17`)
fsoyp12_muni$`2011-11-24` <- gsub(",", "\\.", fsoyp12_muni$`2011-11-24`)
fsoyp12_muni$`2011-12-01` <- gsub(",", "\\.", fsoyp12_muni$`2011-12-01`)
#Removing percentage symbols
fsoyp12_muni$`2011-09-29` <- gsub("%", "", fsoyp12_muni$`2011-09-29`)
fsoyp12_muni$`2011-10-06` <- gsub("%", "", fsoyp12_muni$`2011-10-06`)
fsoyp12_muni$`2011-10-13` <- gsub("%", "", fsoyp12_muni$`2011-10-13`)
fsoyp12_muni$`2011-10-20` <- gsub("%", "", fsoyp12_muni$`2011-10-20`)
fsoyp12_muni$`2011-10-27` <- gsub("%", "", fsoyp12_muni$`2011-10-27`)
fsoyp12_muni$`2011-11-03` <- gsub("%", "", fsoyp12_muni$`2011-11-03`)
fsoyp12_muni$`2011-11-10` <- gsub("%", "", fsoyp12_muni$`2011-11-10`)
fsoyp12_muni$`2011-11-17` <- gsub("%", "", fsoyp12_muni$`2011-11-17`)
fsoyp12_muni$`2011-11-24` <- gsub("%", "", fsoyp12_muni$`2011-11-24`)
fsoyp12_muni$`2011-12-01` <- gsub("%", "", fsoyp12_muni$`2011-12-01`)
#Convert to numeric
fsoyp12_muni$`2011-09-29` <- as.numeric(fsoyp12_muni$`2011-09-29`)
fsoyp12_muni$`2011-10-06` <- as.numeric(fsoyp12_muni$`2011-10-06`)
fsoyp12_muni$`2011-10-13` <- as.numeric(fsoyp12_muni$`2011-10-13`)
fsoyp12_muni$`2011-10-20` <- as.numeric(fsoyp12_muni$`2011-10-20`)
fsoyp12_muni$`2011-10-27` <- as.numeric(fsoyp12_muni$`2011-10-27`)
fsoyp12_muni$`2011-11-03` <- as.numeric(fsoyp12_muni$`2011-11-03`)
fsoyp12_muni$`2011-11-10` <- as.numeric(fsoyp12_muni$`2011-11-10`)
fsoyp12_muni$`2011-11-17` <- as.numeric(fsoyp12_muni$`2011-11-17`)
fsoyp12_muni$`2011-11-24` <- as.numeric(fsoyp12_muni$`2011-11-24`)
fsoyp12_muni$`2011-12-01` <- as.numeric(fsoyp12_muni$`2011-12-01`)
#dividing percentage values by 100 to convert them to decimal form
fsoyp12_muni$`2011-09-29` <- fsoyp12_muni$`2011-09-29`/100
fsoyp12_muni$`2011-10-06` <- fsoyp12_muni$`2011-10-06`/100
fsoyp12_muni$`2011-10-13` <- fsoyp12_muni$`2011-10-13`/100
fsoyp12_muni$`2011-10-20` <- fsoyp12_muni$`2011-10-20`/100
fsoyp12_muni$`2011-10-27` <- fsoyp12_muni$`2011-10-27`/100
fsoyp12_muni$`2011-11-03` <- fsoyp12_muni$`2011-11-03`/100
fsoyp12_muni$`2011-11-10` <- fsoyp12_muni$`2011-11-10`/100
fsoyp12_muni$`2011-11-17` <- fsoyp12_muni$`2011-11-17`/100
fsoyp12_muni$`2011-11-24` <- fsoyp12_muni$`2011-11-24`/100
fsoyp12_muni$`2011-12-01` <- fsoyp12_muni$`2011-12-01`/100
#changing to numeric
sapply(fsoyp12_muni, mode)
View(fsoyp12_muni)
#Write final table to disk
write.csv(fsoyp12_muni, file='soy_plant_2012_muni.csv', row.names=FALSE)

#2012 soy planting - isolating regional summary table by removing unnecessary rows from 2nd file
View(fsoyp12_1_2)
View(fsoyp12_2_2)
fsoyp12_1_2 <- as.data.frame(fsoyp12_1_2[2:nrow(fsoyp12_1_2), ], stringsAsFactors = FALSE)
fsoyp12_2_2 <- as.data.frame(fsoyp12_2_2[2:nrow(fsoyp12_2_2), ], stringsAsFactors = FALSE)
hefsoyp12_1_2 <- c('Headers', 'Noroeste', 'Norte', 'Nordeste', 'Medio_Norte', 'Oeste',
                   'Centro_Sul', 'Sudeste', 'Mato_Grosso')
names(fsoyp12_1_2) <- hefsoyp12_1_2
hefsoyp12_2_2 <- c('Headers', 'Noroeste', 'Norte', 'Nordeste', 'Medio_Norte', 'Oeste',
                   'Centro_Sul', 'Sudeste', 'Mato_Grosso')
names(fsoyp12_2_2) <- hefsoyp12_2_2
#Transpose 2012 soy planting regions table (rows to columns, columns to rows)
fsoyp12_1_2 <- t(fsoyp12_1_2)
fsoyp12_2_2 <- t(fsoyp12_2_2)
#Turn this transposed table into a data frame and remove headers in first row
fsoyp12_1_2 <- as.data.frame(fsoyp12_1_2[1:nrow(fsoyp12_1_2), ], sort= FALSE)
fsoyp12_2_2 <- as.data.frame(fsoyp12_2_2[1:nrow(fsoyp12_2_2), ], sort= FALSE)
fsoyp12_1_2 <- fsoyp12_1_2[-c(1), ]
fsoyp12_2_2 <- fsoyp12_2_2[-c(1), ]
#Create new header names and insert them
hefsoyp12_1_2 <- c('Area_ha', '2011-11-24', '2010-11-25', 'change_in_plant_per')
names(fsoyp12_1_2) <- hefsoyp12_1_2
hefsoyp12_2_2 <- c('Area_ha', '2011-12-01', '2010-12-02', 'change_in_plant_per')
names(fsoyp12_2_2) <- hefsoyp12_2_2
fsoyp12_2_2[1] <- NULL
# Merging two versions
fsoyp12reg <- merge(fsoyp12_1_2, fsoyp12_2_2, by="row.names", sort=FALSE)
fsoyp12reg <- fsoyp12reg[, -c(4:5)]
#Rename column 1 as "IMEA_Regions" 
colnames(fsoyp12reg)[1] <- "IMEA_Regions"
colnames(fsoyp12reg)[6] <- "change_in_plant_per"
#change Area_ha column to numeric and remove periods from thousandths position
fsoyp12reg <- fsoyp12reg %>%
  mutate(Area_ha = as.numeric(gsub("\\.", "", Area_ha)))

#xxx <- 3
#colnames(fsoyp12reg)[1]

for (xxx in 3:dim(fsoyp12reg)[2]){
  fsoyp12reg[[paste(colnames(fsoyp12reg)[xxx])]] <- gsub(",", "\\.", fsoyp12reg[[paste(colnames(fsoyp12reg)[xxx])]])
  fsoyp12reg[[paste(colnames(fsoyp12reg)[xxx])]] <- gsub("%", "", fsoyp12reg[[paste(colnames(fsoyp12reg)[xxx])]])
  fsoyp12reg[[paste(colnames(fsoyp12reg)[xxx])]] <- gsub("p.p.", "", fsoyp12reg[[paste(colnames(fsoyp12reg)[xxx])]])
  fsoyp12reg[[paste(colnames(fsoyp12reg)[xxx])]] <- as.numeric(fsoyp12reg[[paste(colnames(fsoyp12reg)[xxx])]])
  fsoyp12reg[[paste(colnames(fsoyp12reg)[xxx])]] <- fsoyp12reg[[paste(colnames(fsoyp12reg)[xxx])]]/100
}
dim(fsoyp12reg)
sapply(fsoyp12reg, mode)

#Write final table to disk
write.csv(fsoyp12reg, file='soy_plant_2012_region.csv', row.names=FALSE)


#2013 soy planting - setting as data frame
fsoyp13_1 <- as.data.frame(fsoyp13_1[2:nrow(fsoyp13_1), ], stringsAsFactors = FALSE)
hefsoyp13_1 <- c('Regions', 'Area_ha', '2012-09-20', '2012-09-27', '2012-10-04', '2012-10-11', '2012-10-18',
                   '2012-10-25', '2012-11-01', '2012-11-08', '2012-11-15', '2012-11-22', '2012-11-23')
names(fsoyp13_1) <- hefsoyp13_1
fsoyp13_1[3, "Regions"] <- "Others_Noroeste"
fsoyp13_1[5, "Regions"] <- "Itauba"
fsoyp13_1[6, "Regions"] <- "Others_Norte"
fsoyp13_1[9, "Regions"] <- "Querencia"
fsoyp13_1[10, "Regions"] <- "Gaucha_do_Norte"
fsoyp13_1[12, "Regions"] <- "Others_Nordeste"
fsoyp13_1[13, "Regions"] <- "Medio_Norte"
fsoyp13_1[21, "Regions"] <- "Nova_Ubirata"
fsoyp13_1[24, "Regions"] <- "Others_Medio_Norte"
fsoyp13_1[28, "Regions"] <- "Campos_de_Julio"
fsoyp13_1[28, "Regions"] <- "Campos_de_Julio"
fsoyp13_1[29, "Regions"] <- "Others_Oeste"
fsoyp13_1[32, "Regions"] <- "Tangara_da_Serra"
fsoyp13_1[34, "Regions"] <- "Chapada_dos_Guimaraes"
fsoyp13_1[35, "Regions"] <- "Others_Centro_Sul"
fsoyp13_1[39, "Regions"] <- "Alto_Garcas_e_Alto_Taquari"
fsoyp13_1[42, "Regions"] <- "Others_Sudeste"
#Remove periods and spaces from decimal/thousands positions and convert Area_ha to numeric
fsoyp13_1$Area_ha <- gsub("\\.", "", fsoyp13_1$Area_ha)
fsoyp13_1$Area_ha <- gsub(" ", "", fsoyp13_1$Area_ha)
fsoyp13_1 <- fsoyp13_1 %>%
  mutate(Area_ha = as.numeric(Area_ha))
View(fsoyp13_1)
#Change commas to periods in percentage columns
fsoyp13_1$`2012-09-20` <- gsub(",", "\\.", fsoyp13_1$`2012-09-20`)
fsoyp13_1$`2012-09-27` <- gsub(",", "\\.", fsoyp13_1$`2012-09-27`)
fsoyp13_1$`2012-10-04` <- gsub(",", "\\.", fsoyp13_1$`2012-10-04`)
fsoyp13_1$`2012-10-11` <- gsub(",", "\\.", fsoyp13_1$`2012-10-11`)
fsoyp13_1$`2012-10-18` <- gsub(",", "\\.", fsoyp13_1$`2012-10-18`)
fsoyp13_1$`2012-10-25` <- gsub(",", "\\.", fsoyp13_1$`2012-10-25`)
fsoyp13_1$`2012-11-01` <- gsub(",", "\\.", fsoyp13_1$`2012-11-01`)
fsoyp13_1$`2012-11-08` <- gsub(",", "\\.", fsoyp13_1$`2012-11-08`)
fsoyp13_1$`2012-11-15` <- gsub(",", "\\.", fsoyp13_1$`2012-11-15`)
fsoyp13_1$`2012-11-22` <- gsub(",", "\\.", fsoyp13_1$`2012-11-22`)
fsoyp13_1$`2012-11-23` <- gsub(",", "\\.", fsoyp13_1$`2012-11-23`)
#Removing percentage symbols
fsoyp13_1$`2012-09-20` <- gsub("%", "", fsoyp13_1$`2012-09-20`)
fsoyp13_1$`2012-09-27` <- gsub("%", "", fsoyp13_1$`2012-09-27`)
fsoyp13_1$`2012-10-04` <- gsub("%", "", fsoyp13_1$`2012-10-04`)
fsoyp13_1$`2012-10-11` <- gsub("%", "", fsoyp13_1$`2012-10-11`)
fsoyp13_1$`2012-10-18` <- gsub("%", "", fsoyp13_1$`2012-10-18`)
fsoyp13_1$`2012-10-25` <- gsub("%", "", fsoyp13_1$`2012-10-25`)
fsoyp13_1$`2012-11-01` <- gsub("%", "", fsoyp13_1$`2012-11-01`)
fsoyp13_1$`2012-11-08` <- gsub("%", "", fsoyp13_1$`2012-11-08`)
fsoyp13_1$`2012-11-15` <- gsub("%", "", fsoyp13_1$`2012-11-15`)
fsoyp13_1$`2012-11-22` <- gsub("%", "", fsoyp13_1$`2012-11-22`)
fsoyp13_1$`2012-11-23` <- gsub("%", "", fsoyp13_1$`2012-11-23`)
#Convert to numeric
fsoyp13_1$`2012-09-20` <- as.numeric(fsoyp13_1$`2012-09-20`)
fsoyp13_1$`2012-09-27` <- as.numeric(fsoyp13_1$`2012-09-27`)
fsoyp13_1$`2012-10-04` <- as.numeric(fsoyp13_1$`2012-10-04`)
fsoyp13_1$`2012-10-11` <- as.numeric(fsoyp13_1$`2012-10-11`)
fsoyp13_1$`2012-10-18` <- as.numeric(fsoyp13_1$`2012-10-18`)
fsoyp13_1$`2012-10-25` <- as.numeric(fsoyp13_1$`2012-10-25`)
fsoyp13_1$`2012-11-01` <- as.numeric(fsoyp13_1$`2012-11-01`)
fsoyp13_1$`2012-11-08` <- as.numeric(fsoyp13_1$`2012-11-08`)
fsoyp13_1$`2012-11-15` <- as.numeric(fsoyp13_1$`2012-11-15`)
fsoyp13_1$`2012-11-22` <- as.numeric(fsoyp13_1$`2012-11-22`)
fsoyp13_1$`2012-11-23` <- as.numeric(fsoyp13_1$`2012-11-23`)
#dividing percentage values by 100 to convert them to decimal form
fsoyp13_1$`2012-09-20` <- fsoyp13_1$`2012-09-20`/100
fsoyp13_1$`2012-09-27` <- fsoyp13_1$`2012-09-27`/100
fsoyp13_1$`2012-10-04` <- fsoyp13_1$`2012-10-04`/100
fsoyp13_1$`2012-10-11` <- fsoyp13_1$`2012-10-11`/100
fsoyp13_1$`2012-10-18` <- fsoyp13_1$`2012-10-18`/100
fsoyp13_1$`2012-10-25` <- fsoyp13_1$`2012-10-25`/100
fsoyp13_1$`2012-11-01` <- fsoyp13_1$`2012-11-01`/100
fsoyp13_1$`2012-11-08` <- fsoyp13_1$`2012-11-08`/100
fsoyp13_1$`2012-11-15` <- fsoyp13_1$`2012-11-15`/100
fsoyp13_1$`2012-11-22` <- fsoyp13_1$`2012-11-22`/100
fsoyp13_1$`2012-11-23` <- fsoyp13_1$`2012-11-23`/100
#changing to numeric
sapply(fsoyp13_1, mode)
View(fsoyp13_1)
#Write final table to disk
write.csv(fsoyp13_1, file='soy_plant_2013_muni.csv', row.names=FALSE)

#2013 soy planting - isolating regional summary table by removing unnecessary rows from 2nd file
View(fsoyp13_2)
fsoyp13_2 <- as.data.frame(fsoyp13_2[4:nrow(fsoyp13_2), ], stringsAsFactors = FALSE)
hefsoyp13_2 <- c('Headers', 'Noroeste', 'Norte', 'Nordeste', 'Medio_Norte', 'Oeste',
                   'Centro_Sul', 'Sudeste', 'Mato_Grosso')
names(fsoyp13_2) <- hefsoyp13_2
#Transpose 2013 soy planting regions table (rows to columns, columns to rows)
fsoyp13_2 <- t(fsoyp13_2)
#Turn this transposed table into a data frame and remove headers in first row
fsoyp13_2 <- as.data.frame(fsoyp13_2[1:nrow(fsoyp13_2), ], sort= FALSE)
fsoyp13_2 <- fsoyp13_2[-c(1), ]
fsoyp13_2[14] <- NULL
fsoyp13_2[15] <- NULL

#Create new header names and insert them
hefsoyp13_2 <- c('Area_ha', '2012-09-20', '2012-09-27', '2012-10-04', '2012-10-11', '2012-10-18',
                 '2012-10-25', '2012-11-01', '2012-11-08', '2012-11-15', '2012-11-22', '2012-11-23',
                 '2011-12-01', 'change_in_plant_per')
names(fsoyp13_2) <- hefsoyp13_2
#Rename column 1 as "IMEA_Regions" 
setDT(fsoyp13_2, keep.rownames=TRUE)
colnames(fsoyp13_2)[1] <- "IMEA_Regions"
#change Area_ha column to numeric and remove periods from thousandths position
fsoyp13_2 <- fsoyp13_2 %>%
  mutate(Area_ha = as.numeric(gsub("\\.", "", Area_ha)))
#remove commas from decimal position in other three columns

#xxx <- 3
#colnames(fsoyp13_2)[1]

for (xxx in 3:dim(fsoyp13_2)[2]){
      fsoyp13_2[[paste(colnames(fsoyp13_2)[xxx])]] <- gsub(",", "\\.", fsoyp13_2[[paste(colnames(fsoyp13_2)[xxx])]])
      fsoyp13_2[[paste(colnames(fsoyp13_2)[xxx])]] <- gsub("%", "", fsoyp13_2[[paste(colnames(fsoyp13_2)[xxx])]])
      fsoyp13_2[[paste(colnames(fsoyp13_2)[xxx])]] <- gsub("p.p.", "", fsoyp13_2[[paste(colnames(fsoyp13_2)[xxx])]])
      fsoyp13_2[[paste(colnames(fsoyp13_2)[xxx])]] <- as.numeric(fsoyp13_2[[paste(colnames(fsoyp13_2)[xxx])]])
      fsoyp13_2[[paste(colnames(fsoyp13_2)[xxx])]] <- fsoyp13_2[[paste(colnames(fsoyp13_2)[xxx])]]/100
}
dim(fsoyp13_2)
sapply(fsoyp13_2, mode)

#Write final table to disk
write.csv(fsoyp13_2, file='soy_plant_2013_region.csv', row.names=FALSE)

#2014 soy planting - setting as data frame - 1st/2nd files municipal data
fsoyp14_1_1 <- as.data.frame(fsoyp14_1_1[2:nrow(fsoyp14_1_1), ], stringsAsFactors = FALSE)
hefsoyp14_1_1 <- c('Regions', 'Area_ha', '2013-09-19', '2013-09-26', '2013-10-03', '2013-10-10', '2013-10-17',
                   '2013-10-24', '2013-10-31', '2013-11-07', '2013-11-14', '2013-11-21', ' 2013-11-28')
names(fsoyp14_1_1) <- hefsoyp14_1_1
fsoyp14_1_1[3, "Regions"] <- "Others_Noroeste"
fsoyp14_1_1[5, "Regions"] <- "Itauba"
fsoyp14_1_1[6, "Regions"] <- "Others_Norte"
fsoyp14_1_1[9, "Regions"] <- "Querencia"
fsoyp14_1_1[10, "Regions"] <- "Gaucha_do_Norte"
fsoyp14_1_1[12, "Regions"] <- "Others_Nordeste"
fsoyp14_1_1[13, "Regions"] <- "Medio_Norte"
fsoyp14_1_1[21, "Regions"] <- "Nova_Ubirata"
fsoyp14_1_1[24, "Regions"] <- "Others_Medio_Norte"
fsoyp14_1_1[28, "Regions"] <- "Campos_de_Julio"
fsoyp14_1_1[28, "Regions"] <- "Campos_de_Julio"
fsoyp14_1_1[29, "Regions"] <- "Others_Oeste"
fsoyp14_1_1[32, "Regions"] <- "Tangara_da_Serra"
fsoyp14_1_1[34, "Regions"] <- "Chapada_dos_Guimaraes"
fsoyp14_1_1[35, "Regions"] <- "Others_Centro_Sul"
fsoyp14_1_1[39, "Regions"] <- "Alto_Garcas_e_Alto_Taquari"
fsoyp14_1_1[42, "Regions"] <- "Others_Sudeste"
#2nd file data frame and removing duplicate columns - naming remaining columns
fsoyp14_2_1 <- as.data.frame(fsoyp14_2_1[2:nrow(fsoyp14_2_1), ], stringsAsFactors = FALSE)
fsoyp14_2_1$'V2' <- NULL
fsoyp14_2_1$'V3' <- NULL
fsoyp14_2_1$'V4' <- NULL
fsoyp14_2_1$'V5' <- NULL
fsoyp14_2_1$'V6' <- NULL
fsoyp14_2_1$'V7' <- NULL
fsoyp14_2_1$'V8' <- NULL
fsoyp14_2_1$'V9' <- NULL
fsoyp14_2_1$'V10' <- NULL
fsoyp14_2_1$'V11' <- NULL
fsoyp14_2_1$'V12' <- NULL
hefsoyp14_2_1 <- c('Regions','2013-12-05')
names(fsoyp14_2_1) <- hefsoyp14_2_1
fsoyp14_2_1[3, "Regions"] <- "Others_Noroeste"
fsoyp14_2_1[5, "Regions"] <- "Itauba"
fsoyp14_2_1[6, "Regions"] <- "Others_Norte"
fsoyp14_2_1[9, "Regions"] <- "Querencia"
fsoyp14_2_1[10, "Regions"] <- "Gaucha_do_Norte"
fsoyp14_2_1[12, "Regions"] <- "Others_Nordeste"
fsoyp14_2_1[13, "Regions"] <- "Medio_Norte"
fsoyp14_2_1[21, "Regions"] <- "Nova_Ubirata"
fsoyp14_2_1[23, "Regions"] <- "Sao_Jose_do_Rio_Claro"
fsoyp14_2_1[24, "Regions"] <- "Others_Medio_Norte"
fsoyp14_2_1[28, "Regions"] <- "Campos_de_Julio"
fsoyp14_2_1[29, "Regions"] <- "Others_Oeste"
fsoyp14_2_1[32, "Regions"] <- "Tangara_da_Serra"
fsoyp14_2_1[34, "Regions"] <- "Chapada_dos_Guimaraes"
fsoyp14_2_1[35, "Regions"] <- "Others_Centro_Sul"
fsoyp14_2_1[39, "Regions"] <- "Alto_Garcas_e_Alto_Taquari"
fsoyp14_2_1[42, "Regions"] <- "Others_Sudeste"
#Merging first and second files for municipal level data
fsoyp14_muni <- merge(fsoyp14_1_1, fsoyp14_2_1, by="Regions", sort = FALSE)
View(fsoyp14_muni)
#Remove periods and spaces from decimal/thousands positions and convert Area_ha to numeric
fsoyp14_muni$Area_ha <- gsub("\\.", "", fsoyp14_muni$Area_ha)
fsoyp14_muni$Area_ha <- gsub(" ", "", fsoyp14_muni$Area_ha)
fsoyp14_muni <- fsoyp14_muni %>%
  mutate(Area_ha = as.numeric(Area_ha))
View(fsoyp14_muni)

#xxx <- 3
#colnames(fsoyp14_muni)[1]

for (xxx in 3:dim(fsoyp14_muni)[2]){
  fsoyp14_muni[[paste(colnames(fsoyp14_muni)[xxx])]] <- gsub(",", "\\.", fsoyp14_muni[[paste(colnames(fsoyp14_muni)[xxx])]])
  fsoyp14_muni[[paste(colnames(fsoyp14_muni)[xxx])]] <- gsub("%", "", fsoyp14_muni[[paste(colnames(fsoyp14_muni)[xxx])]])
  fsoyp14_muni[[paste(colnames(fsoyp14_muni)[xxx])]] <- gsub("p.p.", "", fsoyp14_muni[[paste(colnames(fsoyp14_muni)[xxx])]])
  fsoyp14_muni[[paste(colnames(fsoyp14_muni)[xxx])]] <- as.numeric(fsoyp14_muni[[paste(colnames(fsoyp14_muni)[xxx])]])
  fsoyp14_muni[[paste(colnames(fsoyp14_muni)[xxx])]] <- fsoyp14_muni[[paste(colnames(fsoyp14_muni)[xxx])]]/100
}
dim(fsoyp14_muni)
sapply(fsoyp14_muni, mode)

#Writing 2013-2014 Municipal data to CSV
write.csv(fsoyp14_muni, file='soy_plant_2014_muni.csv', row.names=FALSE)

#2013-2014 soy planting - isolating regional summary table by removing unnecessary rows from both files
View(fsoyp14_1_2)
View(fsoyp14_2_2)
fsoyp14_1_2 <- as.data.frame(fsoyp14_1_2[5:nrow(fsoyp14_1_2), ], stringsAsFactors = FALSE)
fsoyp14_2_2 <- as.data.frame(fsoyp14_2_2[5:nrow(fsoyp14_2_2), ], stringsAsFactors = FALSE)
fsoyp14_1_2[14] <- NULL
fsoyp14_1_2[13] <- NULL
fsoyp14_1_2[12] <- NULL
fsoyp14_1_2[11] <- NULL
fsoyp14_1_2[7] <- NULL
fsoyp14_2_2[14] <- NULL
fsoyp14_2_2[13] <- NULL
fsoyp14_2_2[12] <- NULL
fsoyp14_2_2[11] <- NULL
fsoyp14_2_2[10] <- NULL
fsoyp14_2_2[7] <- NULL

hefsoyp14_1_2 <- c('Headers', 'Noroeste', 'Norte', 'Nordeste', 'Medio_Norte', 'Oeste',
                   'Centro_Sul', 'Sudeste', 'Mato_Grosso')
names(fsoyp14_1_2) <- hefsoyp14_1_2
hefsoyp14_2_2 <- c('Headers', 'Noroeste', 'Nordeste', 'Medio_Norte', 'Oeste',
                   'Centro_Sul', 'Sudeste', 'Mato_Grosso')
names(fsoyp14_2_2) <- hefsoyp14_2_2
fsoyp14_1_2[1, "Noroeste"] <- "535.051"
fsoyp14_1_2[2, "Noroeste"] <- "0,4%"
fsoyp14_1_2[3, "Noroeste"] <- "0,5%"
fsoyp14_1_2[4, "Noroeste"] <- "0,8%"
fsoyp14_1_2[5, "Noroeste"] <- "7,0%"
fsoyp14_1_2[6, "Noroeste"] <- "19,6%"
fsoyp14_1_2[7, "Noroeste"] <- "42,0%"
fsoyp14_1_2[8, "Noroeste"] <- "64,8%"
fsoyp14_1_2[9, "Noroeste"] <- "85,4%"
fsoyp14_1_2[10, "Noroeste"] <- "96,6%"
fsoyp14_1_2[11, "Noroeste"] <- "99,4%"
fsoyp14_1_2[12, "Noroeste"] <- "100,0%"
fsoyp14_1_2[13, "Noroeste"] <- "100,0%"
fsoyp14_2_2[1, "Noroeste"] <- "535.051"
fsoyp14_2_2[2, "Noroeste"] <- "0,4%"
fsoyp14_2_2[3, "Noroeste"] <- "0,5%"
fsoyp14_2_2[4, "Noroeste"] <- "0,8%"
fsoyp14_2_2[5, "Noroeste"] <- "7,0%"
fsoyp14_2_2[6, "Noroeste"] <- "19,6%"
fsoyp14_2_2[7, "Noroeste"] <- "42,0%"
fsoyp14_2_2[8, "Noroeste"] <- "64,8%"
fsoyp14_2_2[9, "Noroeste"] <- "85,4%"
fsoyp14_2_2[10, "Noroeste"] <- "96,6%"
fsoyp14_2_2[11, "Noroeste"] <- "99,4%"
fsoyp14_2_2[12, "Noroeste"] <- "100,0%"
fsoyp14_2_2[13, "Noroeste"] <- "100,0%"
fsoyp14_2_2[14, "Noroeste"] <- "100,0%"
fsoyp14_2_2$Norte <- c('0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0')
fsoyp14_2_2 <- fsoyp14_2_2[c(1:2,9,3:8)]
fsoyp14_1_2 <- fsoyp14_1_2[-c(14, 16), ]
fsoyp14_2_2 <- fsoyp14_2_2[-c(15, 17), ]
#Transpose 2012 soy planting regions table (rows to columns, columns to rows)
fsoyp14_1_2 <- t(fsoyp14_1_2)
fsoyp14_2_2 <- t(fsoyp14_2_2)
#Turn this transposed table into a data frame and remove headers in first row
fsoyp14_1_2 <- as.data.frame(fsoyp14_1_2[1:nrow(fsoyp14_1_2), ], sort= FALSE)
fsoyp14_2_2 <- as.data.frame(fsoyp14_2_2[1:nrow(fsoyp14_2_2), ], sort= FALSE)
fsoyp14_1_2 <- fsoyp14_1_2[-c(1), ]
fsoyp14_2_2 <- fsoyp14_2_2[-c(1), ]
#Create new header names and insert them
setDT(fsoyp14_1_2, keep.rownames=TRUE)
colnames(fsoyp14_1_2)[1] <- "IMEA_Regions"
setDT(fsoyp14_2_2, keep.rownames=TRUE)
colnames(fsoyp14_2_2)[1] <- "IMEA_Regions"
fsoyp14_2_2 <- fsoyp14_2_2[, -c(2:13)]
fsoyp14_1_2 <- fsoyp14_1_2[, -c(14:15)]
hefsoyp14_1_2 <- c('IMEA_Regions', 'Area_ha', '2013-09-19', '2013-09-26', '2013-10-03', '2013-10-10',
                   '2013-10-17', '2013-10-24', '2013-10-31', '2013-11-07', '2013-11-14', 
                    '2013-11-21', '2013-11-28')
names(fsoyp14_1_2) <- hefsoyp14_1_2
hefsoyp14_2_2 <- c('IMEA_Regions', '2013-12-05', '2012-12-06', 'change_in_plant_per')
names(fsoyp14_2_2) <- hefsoyp14_2_2
# Merging two versions
fsoyp14reg <- merge(fsoyp14_1_2, fsoyp14_2_2, by="IMEA_Regions", sort=FALSE)
#change Area_ha column to numeric and remove periods from thousandths position
fsoyp14reg <- fsoyp14reg %>%
  mutate(Area_ha = as.numeric(gsub("\\.", "", Area_ha)))
#xxx <- 3
#colnames(fsoyp14reg)[1]

for (xxx in 3:dim(fsoyp14reg)[2]){
  fsoyp14reg[[paste(colnames(fsoyp14reg)[xxx])]] <- gsub(",", "\\.", fsoyp14reg[[paste(colnames(fsoyp14reg)[xxx])]])
  fsoyp14reg[[paste(colnames(fsoyp14reg)[xxx])]] <- gsub("%", "", fsoyp14reg[[paste(colnames(fsoyp14reg)[xxx])]])
  fsoyp14reg[[paste(colnames(fsoyp14reg)[xxx])]] <- as.numeric(fsoyp14reg[[paste(colnames(fsoyp14reg)[xxx])]])
  fsoyp14reg[[paste(colnames(fsoyp14reg)[xxx])]] <- fsoyp14reg[[paste(colnames(fsoyp14reg)[xxx])]]/100
}
dim(fsoyp14reg)
sapply(fsoyp14reg, mode)

fsoyp14reg[2, "2013-12-05"] <- "1"
fsoyp14reg[2, "2012-12-06"] <- "1"

#Writing 2013-2014 Regional data to CSV
write.csv(fsoyp14reg, file='soy_plant_2014_region.csv', row.names=FALSE)

# Create individual data matrices for soy harvesting data
# fsoyh9_1 <- do.call(rbind, outsoyh9_1)
# fsoyh9_2 <- do.call(rbind, outsoyh9_2)
# fsoyh9_3 <- do.call(rbind, outsoyh9_3)
# fsoyh9_4 <- do.call(rbind, outsoyh9_4)
# fsoyh9_5 <- do.call(rbind, outsoyh9_5)
# fsoyh9_6 <- do.call(rbind, outsoyh9_6)
# fsoyh9_7 <- do.call(rbind, outsoyh9_7)
# fsoyh9_8 <- do.call(rbind, outsoyh9_8)
# fsoyh9_9 <- do.call(rbind, outsoyh9_9)
# fsoyh9_10 <- do.call(rbind, outsoyh9_10)
# fsoyh9_11 <- do.call(rbind, outsoyh9_11)
# fsoyh9_12 <- do.call(rbind, outsoyh9_12)
# fsoyh9_13 <- do.call(rbind, outsoyh9_13)
# fsoyh9_14 <- do.call(rbind, outsoyh9_14)
# fsoyh10_1 <- do.call(rbind, outsoyh10[1])
# fsoyh10_2 <- do.call(rbind, outsoyh10[2])
# fsoyh11_1_1 <- do.call(rbind, outsoyh11_1[1])
# fsoyh14_1_2 <- do.call(rbind, outsoyh11_1[2])
# fsoyh11_2_1 <- do.call(rbind, outsoyh11_2[1])
# fsoyh11_2_2 <- do.call(rbind, outsoyh11_2[2])
# fsoyh12_1_1 <- do.call(rbind, outsoyh12_1[1])
# fsoyh12_1_2 <- do.call(rbind, outsoyh12_1[2])
# fsoyh12_2_1 <- do.call(rbind, outsoyh12_2[1])
# fsoyh12_2_2 <- do.call(rbind, outsoyh12_2[2])
# fsoyh13 <- do.call(rbind, outsoyh13)
# fsoyh14_1 <- do.call(rbind, outsoyh14[1])
# fsoyh14_2 <- do.call(rbind, outsoyh14[2])
# fsoyh15_1 <- do.call(rbind, outsoyh15[1])
# fsoyh15_2 <- do.call(rbind, outsoyh15[2])
# fsoyh16 <- do.call(rbind, outsoyh16)
# fsoyh17 <- do.call(rbind, outsoyh17)
# fsoyh18 <- do.call(rbind, outsoyh18)






