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
soyh9_2 <- 'http://www.imea.com.br/upload/publicacoes/arquivos/090115_IACS.pdf'
soyh9_4 <- 'http://www.imea.com.br/upload/publicacoes/arquivos/090129_IACS.pdf'
soyh9_6 <- 'http://www.imea.com.br/upload/publicacoes/arquivos/090212_IACS.pdf'
soyh9_8 <- 'http://www.imea.com.br/upload/publicacoes/arquivos/090226_IACS.pdf'
soyh9_10 <- 'http://www.imea.com.br/upload/publicacoes/arquivos/090312_IACS.pdf'
soyh9_12 <- 'http://www.imea.com.br/upload/publicacoes/arquivos/090326_IACS.pdf'
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
outsoyh9_2 <- extract_tables(soyh9_2)
outsoyh9_4 <- extract_tables(soyh9_4)
outsoyh9_6 <- extract_tables(soyh9_6)
outsoyh9_8 <- extract_tables(soyh9_8)
outsoyh9_10 <- extract_tables(soyh9_10)
outsoyh9_12 <- extract_tables(soyh9_12)
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
fsoyp15_1 <- do.call(rbind, outsoyp15[1])
fsoyp15_2 <- do.call(rbind, outsoyp15[2])
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

hefsoyp9 <- c('Regions', 'Area_ha', '2008-12-04', '2008-12-11')
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
fsoyp9[11, "Regions"] <- "Nova_Xavantina"
fsoyp9[12, "Regions"] <- "Others_Nordeste"
fsoyp9[13, "Regions"] <- "Medio_Norte"
fsoyp9[14, "Regions"] <- "Lucas_do_Rio_Verde"
fsoyp9[16, "Regions"] <- "Nova_Mutum"
fsoyp9[17, "Regions"] <- "Ipiranga_do_Norte"
fsoyp9[20, "Regions"] <- "Santa_Rita_do_Trivelato"
fsoyp9[21, "Regions"] <- "Nova_Ubirata"
fsoyp9[23, "Regions"] <- "Sao_Jose_do_Rio_Claro"
fsoyp9[24, "Regions"] <- "Others_Medio_Norte"
fsoyp9[27, "Regions"] <- "Campo_Novo_dos_Parecis"
fsoyp9[28, "Regions"] <- "Campos_de_Julio"
fsoyp9[29, "Regions"] <- "Others_Oeste"
fsoyp9[30, "Regions"] <- "Centro_Sul"
fsoyp9[32, "Regions"] <- "Tangara_da_Serra"
fsoyp9[33, "Regions"] <- "Santo_Antonio_do_Leveger"
fsoyp9[34, "Regions"] <- "Chapada_dos_Guimaraes"
fsoyp9[35, "Regions"] <- "Others_Centro_Sul"
fsoyp9[37, "Regions"] <- "Campo_Verde"
fsoyp9[38, "Regions"] <- "Primavera_do_Leste"
fsoyp9[39, "Regions"] <- "Alto_Garcas_e_Alto_Taquari"
fsoyp9[40, "Regions"] <- "Jaciara_e_Juscimeira"
fsoyp9[41, "Regions"] <- "Santo_Antonio_do_Leste"
fsoyp9[42, "Regions"] <- "Others_Sudeste"
fsoyp9[43, "Regions"] <- "Mato_Grosso"

#Remove periods from thousands positions and convert Area_ha to numeric
fsoyp9$Area_ha <- gsub("\\.", "", fsoyp9$Area_ha)
fsoyp9 <- fsoyp9 %>%
  mutate(Area_ha = as.numeric(Area_ha))

#xxx <- 3
#colnames(fsoyp9)[1]

for (xxx in 3:dim(fsoyp9)[2]){
  fsoyp9[[paste(colnames(fsoyp9)[xxx])]] <- gsub(",", "\\.", fsoyp9[[paste(colnames(fsoyp9)[xxx])]])
  fsoyp9[[paste(colnames(fsoyp9)[xxx])]] <- gsub("%", "", fsoyp9[[paste(colnames(fsoyp9)[xxx])]])
  fsoyp9[[paste(colnames(fsoyp9)[xxx])]] <- gsub("p.p.", "", fsoyp9[[paste(colnames(fsoyp9)[xxx])]])
  fsoyp9[[paste(colnames(fsoyp9)[xxx])]] <- as.numeric(fsoyp9[[paste(colnames(fsoyp9)[xxx])]])
  fsoyp9[[paste(colnames(fsoyp9)[xxx])]] <- fsoyp9[[paste(colnames(fsoyp9)[xxx])]]/100
}
dim(fsoyp9)
sapply(fsoyp9, mode)

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
fsoyp10_1_muni[11, "Regions"] <- "Nova_Xavantina"
fsoyp10_1_muni[12, "Regions"] <- "Others_Nordeste"
fsoyp10_1_muni[13, "Regions"] <- "Medio_Norte"
fsoyp10_1_muni[14, "Regions"] <- "Lucas_do_Rio_Verde"
fsoyp10_1_muni[16, "Regions"] <- "Nova_Mutum"
fsoyp10_1_muni[17, "Regions"] <- "Ipiranga_do_Norte"
fsoyp10_1_muni[20, "Regions"] <- "Santa_Rita_do_Trivelato"
fsoyp10_1_muni[21, "Regions"] <- "Nova_Ubirata"
fsoyp10_1_muni[23, "Regions"] <- "Sao_Jose_do_Rio_Claro"
fsoyp10_1_muni[24, "Regions"] <- "Others_Medio_Norte"
fsoyp10_1_muni[27, "Regions"] <- "Campo_Novo_dos_Parecis"
fsoyp10_1_muni[28, "Regions"] <- "Campos_de_Julio"
fsoyp10_1_muni[29, "Regions"] <- "Others_Oeste"
fsoyp10_1_muni[30, "Regions"] <- "Centro_Sul"
fsoyp10_1_muni[32, "Regions"] <- "Tangara_da_Serra"
fsoyp10_1_muni[33, "Regions"] <- "Santo_Antonio_do_Leveger"
fsoyp10_1_muni[34, "Regions"] <- "Chapada_dos_Guimaraes"
fsoyp10_1_muni[35, "Regions"] <- "Others_Centro_Sul"
fsoyp10_1_muni[37, "Regions"] <- "Campo_Verde"
fsoyp10_1_muni[38, "Regions"] <- "Primavera_do_Leste"
fsoyp10_1_muni[39, "Regions"] <- "Alto_Garcas_e_Alto_Taquari"
fsoyp10_1_muni[40, "Regions"] <- "Jaciara_e_Juscimeira"
fsoyp10_1_muni[41, "Regions"] <- "Santo_Antonio_do_Leste"
fsoyp10_1_muni[42, "Regions"] <- "Others_Sudeste"
fsoyp10_1_muni[43, "Regions"] <- "Mato_Grosso"
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
fsoyp10_2_muni[11, "Regions"] <- "Nova_Xavantina"
fsoyp10_2_muni[12, "Regions"] <- "Others_Nordeste"
fsoyp10_2_muni[13, "Regions"] <- "Medio_Norte"
fsoyp10_2_muni[14, "Regions"] <- "Lucas_do_Rio_Verde"
fsoyp10_2_muni[16, "Regions"] <- "Nova_Mutum"
fsoyp10_2_muni[17, "Regions"] <- "Ipiranga_do_Norte"
fsoyp10_2_muni[20, "Regions"] <- "Santa_Rita_do_Trivelato"
fsoyp10_2_muni[21, "Regions"] <- "Nova_Ubirata"
fsoyp10_2_muni[23, "Regions"] <- "Sao_Jose_do_Rio_Claro"
fsoyp10_2_muni[24, "Regions"] <- "Others_Medio_Norte"
fsoyp10_2_muni[27, "Regions"] <- "Campo_Novo_dos_Parecis"
fsoyp10_2_muni[28, "Regions"] <- "Campos_de_Julio"
fsoyp10_2_muni[29, "Regions"] <- "Others_Oeste"
fsoyp10_2_muni[30, "Regions"] <- "Centro_Sul"
fsoyp10_2_muni[32, "Regions"] <- "Tangara_da_Serra"
fsoyp10_2_muni[33, "Regions"] <- "Santo_Antonio_do_Leveger"
fsoyp10_2_muni[34, "Regions"] <- "Chapada_dos_Guimaraes"
fsoyp10_2_muni[35, "Regions"] <- "Others_Centro_Sul"
fsoyp10_2_muni[37, "Regions"] <- "Campo_Verde"
fsoyp10_2_muni[38, "Regions"] <- "Primavera_do_Leste"
fsoyp10_2_muni[39, "Regions"] <- "Alto_Garcas_e_Alto_Taquari"
fsoyp10_2_muni[40, "Regions"] <- "Jaciara_e_Juscimeira"
fsoyp10_2_muni[41, "Regions"] <- "Santo_Antonio_do_Leste"
fsoyp10_2_muni[42, "Regions"] <- "Others_Sudeste"
fsoyp10_2_muni[43, "Regions"] <- "Mato_Grosso"
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

#xxx <- 3
#colnames(fsoyp10_muni_1)[1]

for (xxx in 3:dim(fsoyp10_muni_1)[2]){
  fsoyp10_muni_1[[paste(colnames(fsoyp10_muni_1)[xxx])]] <- gsub(",", "\\.", fsoyp10_muni_1[[paste(colnames(fsoyp10_muni_1)[xxx])]])
  fsoyp10_muni_1[[paste(colnames(fsoyp10_muni_1)[xxx])]] <- gsub("%", "", fsoyp10_muni_1[[paste(colnames(fsoyp10_muni_1)[xxx])]])
  fsoyp10_muni_1[[paste(colnames(fsoyp10_muni_1)[xxx])]] <- as.numeric(fsoyp10_muni_1[[paste(colnames(fsoyp10_muni_1)[xxx])]])
  fsoyp10_muni_1[[paste(colnames(fsoyp10_muni_1)[xxx])]] <- fsoyp10_muni_1[[paste(colnames(fsoyp10_muni_1)[xxx])]]/100
}
dim(fsoyp10_muni_1)
sapply(fsoyp10_muni_1, mode)

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

#xxx <- 3
#colnames(fsoyp10_2_re_1)[1]

for (xxx in 3:dim(fsoyp10_2_re_1)[2]){
  fsoyp10_2_re_1[[paste(colnames(fsoyp10_2_re_1)[xxx])]] <- gsub(",", "\\.", fsoyp10_2_re_1[[paste(colnames(fsoyp10_2_re_1)[xxx])]])
  fsoyp10_2_re_1[[paste(colnames(fsoyp10_2_re_1)[xxx])]] <- gsub("%", "", fsoyp10_2_re_1[[paste(colnames(fsoyp10_2_re_1)[xxx])]])
  fsoyp10_2_re_1[[paste(colnames(fsoyp10_2_re_1)[xxx])]] <- gsub("p.p.", "", fsoyp10_2_re_1[[paste(colnames(fsoyp10_2_re_1)[xxx])]])
  fsoyp10_2_re_1[[paste(colnames(fsoyp10_2_re_1)[xxx])]] <- as.numeric(fsoyp10_2_re_1[[paste(colnames(fsoyp10_2_re_1)[xxx])]])
  fsoyp10_2_re_1[[paste(colnames(fsoyp10_2_re_1)[xxx])]] <- fsoyp10_2_re_1[[paste(colnames(fsoyp10_2_re_1)[xxx])]]/100
}
dim(fsoyp10_2_re_1)

#check the type of data in each column
sapply(fsoyp10_2_re_1, mode)
#rename the date columns
colnames(fsoyp10_2_re_1)[3] <- "2009-12-03"
colnames(fsoyp10_2_re_1)[4] <- "2008-12-04"
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
fsoyp11_1_1[11, "Regions"] <- "Nova_Xavantina"
fsoyp11_1_1[12, "Regions"] <- "Others_Nordeste"
fsoyp11_1_1[13, "Regions"] <- "Medio_Norte"
fsoyp11_1_1[14, "Regions"] <- "Lucas_do_Rio_Verde"
fsoyp11_1_1[16, "Regions"] <- "Nova_Mutum"
fsoyp11_1_1[17, "Regions"] <- "Ipiranga_do_Norte"
fsoyp11_1_1[20, "Regions"] <- "Santa_Rita_do_Trivelato"
fsoyp11_1_1[21, "Regions"] <- "Nova_Ubirata"
fsoyp11_1_1[23, "Regions"] <- "Sao_Jose_do_Rio_Claro"
fsoyp11_1_1[24, "Regions"] <- "Others_Medio_Norte"
fsoyp11_1_1[27, "Regions"] <- "Campo_Novo_dos_Parecis"
fsoyp11_1_1[28, "Regions"] <- "Campos_de_Julio"
fsoyp11_1_1[29, "Regions"] <- "Others_Oeste"
fsoyp11_1_1[30, "Regions"] <- "Centro_Sul"
fsoyp11_1_1[32, "Regions"] <- "Tangara_da_Serra"
fsoyp11_1_1[33, "Regions"] <- "Santo_Antonio_do_Leveger"
fsoyp11_1_1[34, "Regions"] <- "Chapada_dos_Guimaraes"
fsoyp11_1_1[35, "Regions"] <- "Others_Centro_Sul"
fsoyp11_1_1[37, "Regions"] <- "Campo_Verde"
fsoyp11_1_1[38, "Regions"] <- "Primavera_do_Leste"
fsoyp11_1_1[39, "Regions"] <- "Alto_Garcas_e_Alto_Taquari"
fsoyp11_1_1[40, "Regions"] <- "Jaciara_e_Juscimeira"
fsoyp11_1_1[41, "Regions"] <- "Santo_Antonio_do_Leste"
fsoyp11_1_1[42, "Regions"] <- "Others_Sudeste"
fsoyp11_1_1[43, "Regions"] <- "Mato_Grosso"
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
fsoyp11_2_1[11, "Regions"] <- "Nova_Xavantina"
fsoyp11_2_1[12, "Regions"] <- "Others_Nordeste"
fsoyp11_2_1[13, "Regions"] <- "Medio_Norte"
fsoyp11_2_1[14, "Regions"] <- "Lucas_do_Rio_Verde"
fsoyp11_2_1[16, "Regions"] <- "Nova_Mutum"
fsoyp11_2_1[17, "Regions"] <- "Ipiranga_do_Norte"
fsoyp11_2_1[20, "Regions"] <- "Santa_Rita_do_Trivelato"
fsoyp11_2_1[21, "Regions"] <- "Nova_Ubirata"
fsoyp11_2_1[23, "Regions"] <- "Sao_Jose_do_Rio_Claro"
fsoyp11_2_1[24, "Regions"] <- "Others_Medio_Norte"
fsoyp11_2_1[27, "Regions"] <- "Campo_Novo_dos_Parecis"
fsoyp11_2_1[28, "Regions"] <- "Campos_de_Julio"
fsoyp11_2_1[29, "Regions"] <- "Others_Oeste"
fsoyp11_2_1[30, "Regions"] <- "Centro_Sul"
fsoyp11_2_1[32, "Regions"] <- "Tangara_da_Serra"
fsoyp11_2_1[33, "Regions"] <- "Santo_Antonio_do_Leveger"
fsoyp11_2_1[34, "Regions"] <- "Chapada_dos_Guimaraes"
fsoyp11_2_1[35, "Regions"] <- "Others_Centro_Sul"
fsoyp11_2_1[37, "Regions"] <- "Campo_Verde"
fsoyp11_2_1[38, "Regions"] <- "Primavera_do_Leste"
fsoyp11_2_1[39, "Regions"] <- "Alto_Garcas_e_Alto_Taquari"
fsoyp11_2_1[40, "Regions"] <- "Jaciara_e_Juscimeira"
fsoyp11_2_1[41, "Regions"] <- "Santo_Antonio_do_Leste"
fsoyp11_2_1[42, "Regions"] <- "Others_Sudeste"
fsoyp11_2_1[43, "Regions"] <- "Mato_Grosso"
#Merging first and second files for municipal level data
fsoyp11_muni <- merge(fsoyp11_1_1, fsoyp11_2_1, by="Regions", sort = FALSE)
View(fsoyp11_muni)
#Remove periods and spaces from decimal/thousands positions and convert Area_ha to numeric
fsoyp11_muni$Area_ha <- gsub("\\.", "", fsoyp11_muni$Area_ha)
fsoyp11_muni$Area_ha <- gsub(" ", "", fsoyp11_muni$Area_ha)
fsoyp11_muni <- fsoyp11_muni %>%
  mutate(Area_ha = as.numeric(Area_ha))

#xxx <- 3
#colnames(fsoyp11_muni)[1]

for (xxx in 3:dim(fsoyp11_muni)[2]){
  fsoyp11_muni[[paste(colnames(fsoyp11_muni)[xxx])]] <- gsub(",", "\\.", fsoyp11_muni[[paste(colnames(fsoyp11_muni)[xxx])]])
  fsoyp11_muni[[paste(colnames(fsoyp11_muni)[xxx])]] <- gsub("%", "", fsoyp11_muni[[paste(colnames(fsoyp11_muni)[xxx])]])
  fsoyp11_muni[[paste(colnames(fsoyp11_muni)[xxx])]] <- as.numeric(fsoyp11_muni[[paste(colnames(fsoyp11_muni)[xxx])]])
  fsoyp11_muni[[paste(colnames(fsoyp11_muni)[xxx])]] <- fsoyp11_muni[[paste(colnames(fsoyp11_muni)[xxx])]]/100
}
dim(fsoyp11_muni)

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
fsoyp11reg$change_in_plant_per <- as.numeric(fsoyp11reg$change_in_plant_per)
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
fsoyp12_1_1[11, "Regions"] <- "Nova_Xavantina"
fsoyp12_1_1[12, "Regions"] <- "Others_Nordeste"
fsoyp12_1_1[13, "Regions"] <- "Medio_Norte"
fsoyp12_1_1[14, "Regions"] <- "Lucas_do_Rio_Verde"
fsoyp12_1_1[16, "Regions"] <- "Nova_Mutum"
fsoyp12_1_1[17, "Regions"] <- "Ipiranga_do_Norte"
fsoyp12_1_1[20, "Regions"] <- "Santa_Rita_do_Trivelato"
fsoyp12_1_1[21, "Regions"] <- "Nova_Ubirata"
fsoyp12_1_1[23, "Regions"] <- "Sao_Jose_do_Rio_Claro"
fsoyp12_1_1[24, "Regions"] <- "Others_Medio_Norte"
fsoyp12_1_1[27, "Regions"] <- "Campo_Novo_dos_Parecis"
fsoyp12_1_1[28, "Regions"] <- "Campos_de_Julio"
fsoyp12_1_1[29, "Regions"] <- "Others_Oeste"
fsoyp12_1_1[30, "Regions"] <- "Centro_Sul"
fsoyp12_1_1[32, "Regions"] <- "Tangara_da_Serra"
fsoyp12_1_1[33, "Regions"] <- "Santo_Antonio_do_Leveger"
fsoyp12_1_1[34, "Regions"] <- "Chapada_dos_Guimaraes"
fsoyp12_1_1[35, "Regions"] <- "Others_Centro_Sul"
fsoyp12_1_1[37, "Regions"] <- "Campo_Verde"
fsoyp12_1_1[38, "Regions"] <- "Primavera_do_Leste"
fsoyp12_1_1[39, "Regions"] <- "Alto_Garcas_e_Alto_Taquari"
fsoyp12_1_1[40, "Regions"] <- "Jaciara_e_Juscimeira"
fsoyp12_1_1[41, "Regions"] <- "Santo_Antonio_do_Leste"
fsoyp12_1_1[42, "Regions"] <- "Others_Sudeste"
fsoyp12_1_1[43, "Regions"] <- "Mato_Grosso"
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
fsoyp12_2_1[11, "Regions"] <- "Nova_Xavantina"
fsoyp12_2_1[12, "Regions"] <- "Others_Nordeste"
fsoyp12_2_1[13, "Regions"] <- "Medio_Norte"
fsoyp12_2_1[14, "Regions"] <- "Lucas_do_Rio_Verde"
fsoyp12_2_1[16, "Regions"] <- "Nova_Mutum"
fsoyp12_2_1[17, "Regions"] <- "Ipiranga_do_Norte"
fsoyp12_2_1[20, "Regions"] <- "Santa_Rita_do_Trivelato"
fsoyp12_2_1[21, "Regions"] <- "Nova_Ubirata"
fsoyp12_2_1[23, "Regions"] <- "Sao_Jose_do_Rio_Claro"
fsoyp12_2_1[24, "Regions"] <- "Others_Medio_Norte"
fsoyp12_2_1[27, "Regions"] <- "Campo_Novo_dos_Parecis"
fsoyp12_2_1[28, "Regions"] <- "Campos_de_Julio"
fsoyp12_2_1[29, "Regions"] <- "Others_Oeste"
fsoyp12_2_1[30, "Regions"] <- "Centro_Sul"
fsoyp12_2_1[32, "Regions"] <- "Tangara_da_Serra"
fsoyp12_2_1[33, "Regions"] <- "Santo_Antonio_do_Leveger"
fsoyp12_2_1[34, "Regions"] <- "Chapada_dos_Guimaraes"
fsoyp12_2_1[35, "Regions"] <- "Others_Centro_Sul"
fsoyp12_2_1[37, "Regions"] <- "Campo_Verde"
fsoyp12_2_1[38, "Regions"] <- "Primavera_do_Leste"
fsoyp12_2_1[39, "Regions"] <- "Alto_Garcas_e_Alto_Taquari"
fsoyp12_2_1[40, "Regions"] <- "Jaciara_e_Juscimeira"
fsoyp12_2_1[41, "Regions"] <- "Santo_Antonio_do_Leste"
fsoyp12_2_1[42, "Regions"] <- "Others_Sudeste"
fsoyp12_2_1[43, "Regions"] <- "Mato_Grosso"
#Merging first and second files for municipal level data
fsoyp12_muni <- merge(fsoyp12_1_1, fsoyp12_2_1, by="Regions", sort = FALSE)
View(fsoyp12_muni)
#Remove periods and spaces from decimal/thousands positions and convert Area_ha to numeric
fsoyp12_muni$Area_ha <- gsub("\\.", "", fsoyp12_muni$Area_ha)
fsoyp12_muni$Area_ha <- gsub(" ", "", fsoyp12_muni$Area_ha)
fsoyp12_muni <- fsoyp12_muni %>%
  mutate(Area_ha = as.numeric(Area_ha))

#xxx <- 3
#colnames(fsoyp12_muni)[1]

for (xxx in 3:dim(fsoyp12_muni)[2]){
  fsoyp12_muni[[paste(colnames(fsoyp12_muni)[xxx])]] <- gsub(",", "\\.", fsoyp12_muni[[paste(colnames(fsoyp12_muni)[xxx])]])
  fsoyp12_muni[[paste(colnames(fsoyp12_muni)[xxx])]] <- gsub("%", "", fsoyp12_muni[[paste(colnames(fsoyp12_muni)[xxx])]])
  fsoyp12_muni[[paste(colnames(fsoyp12_muni)[xxx])]] <- as.numeric(fsoyp12_muni[[paste(colnames(fsoyp12_muni)[xxx])]])
  fsoyp12_muni[[paste(colnames(fsoyp12_muni)[xxx])]] <- fsoyp12_muni[[paste(colnames(fsoyp12_muni)[xxx])]]/100
}
dim(fsoyp12_muni)

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
fsoyp13_1[11, "Regions"] <- "Nova_Xavantina"
fsoyp13_1[12, "Regions"] <- "Others_Nordeste"
fsoyp13_1[13, "Regions"] <- "Medio_Norte"
fsoyp13_1[14, "Regions"] <- "Lucas_do_Rio_Verde"
fsoyp13_1[16, "Regions"] <- "Nova_Mutum"
fsoyp13_1[17, "Regions"] <- "Ipiranga_do_Norte"
fsoyp13_1[20, "Regions"] <- "Santa_Rita_do_Trivelato"
fsoyp13_1[21, "Regions"] <- "Nova_Ubirata"
fsoyp13_1[23, "Regions"] <- "Sao_Jose_do_Rio_Claro"
fsoyp13_1[24, "Regions"] <- "Others_Medio_Norte"
fsoyp13_1[27, "Regions"] <- "Campo_Novo_dos_Parecis"
fsoyp13_1[28, "Regions"] <- "Campos_de_Julio"
fsoyp13_1[29, "Regions"] <- "Others_Oeste"
fsoyp13_1[30, "Regions"] <- "Centro_Sul"
fsoyp13_1[32, "Regions"] <- "Tangara_da_Serra"
fsoyp13_1[33, "Regions"] <- "Santo_Antonio_do_Leveger"
fsoyp13_1[34, "Regions"] <- "Chapada_dos_Guimaraes"
fsoyp13_1[35, "Regions"] <- "Others_Centro_Sul"
fsoyp13_1[37, "Regions"] <- "Campo_Verde"
fsoyp13_1[38, "Regions"] <- "Primavera_do_Leste"
fsoyp13_1[39, "Regions"] <- "Alto_Garcas_e_Alto_Taquari"
fsoyp13_1[40, "Regions"] <- "Jaciara_e_Juscimeira"
fsoyp13_1[41, "Regions"] <- "Santo_Antonio_do_Leste"
fsoyp13_1[42, "Regions"] <- "Others_Sudeste"
fsoyp13_1[43, "Regions"] <- "Mato_Grosso"
#Remove periods and spaces from decimal/thousands positions and convert Area_ha to numeric
fsoyp13_1$Area_ha <- gsub("\\.", "", fsoyp13_1$Area_ha)
fsoyp13_1$Area_ha <- gsub(" ", "", fsoyp13_1$Area_ha)
fsoyp13_1 <- fsoyp13_1 %>%
  mutate(Area_ha = as.numeric(Area_ha))
View(fsoyp13_1)
#xxx <- 3
#colnames(fsoyp13_1)[1]

for (xxx in 3:dim(fsoyp13_1)[2]){
  fsoyp13_1[[paste(colnames(fsoyp13_1)[xxx])]] <- gsub(",", "\\.", fsoyp13_1[[paste(colnames(fsoyp13_1)[xxx])]])
  fsoyp13_1[[paste(colnames(fsoyp13_1)[xxx])]] <- gsub("%", "", fsoyp13_1[[paste(colnames(fsoyp13_1)[xxx])]])
  fsoyp13_1[[paste(colnames(fsoyp13_1)[xxx])]] <- gsub("p.p.", "", fsoyp13_1[[paste(colnames(fsoyp13_1)[xxx])]])
  fsoyp13_1[[paste(colnames(fsoyp13_1)[xxx])]] <- as.numeric(fsoyp13_1[[paste(colnames(fsoyp13_1)[xxx])]])
  fsoyp13_1[[paste(colnames(fsoyp13_1)[xxx])]] <- fsoyp13_1[[paste(colnames(fsoyp13_1)[xxx])]]/100
}
dim(fsoyp13_1)
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
fsoyp14_1_1[11, "Regions"] <- "Nova_Xavantina"
fsoyp14_1_1[12, "Regions"] <- "Others_Nordeste"
fsoyp14_1_1[13, "Regions"] <- "Medio_Norte"
fsoyp14_1_1[14, "Regions"] <- "Lucas_do_Rio_Verde"
fsoyp14_1_1[16, "Regions"] <- "Nova_Mutum"
fsoyp14_1_1[17, "Regions"] <- "Ipiranga_do_Norte"
fsoyp14_1_1[20, "Regions"] <- "Santa_Rita_do_Trivelato"
fsoyp14_1_1[21, "Regions"] <- "Nova_Ubirata"
fsoyp14_1_1[23, "Regions"] <- "Sao_Jose_do_Rio_Claro"
fsoyp14_1_1[24, "Regions"] <- "Others_Medio_Norte"
fsoyp14_1_1[27, "Regions"] <- "Campo_Novo_dos_Parecis"
fsoyp14_1_1[28, "Regions"] <- "Campos_de_Julio"
fsoyp14_1_1[29, "Regions"] <- "Others_Oeste"
fsoyp14_1_1[30, "Regions"] <- "Centro_Sul"
fsoyp14_1_1[32, "Regions"] <- "Tangara_da_Serra"
fsoyp14_1_1[33, "Regions"] <- "Santo_Antonio_do_Leveger"
fsoyp14_1_1[34, "Regions"] <- "Chapada_dos_Guimaraes"
fsoyp14_1_1[35, "Regions"] <- "Others_Centro_Sul"
fsoyp14_1_1[37, "Regions"] <- "Campo_Verde"
fsoyp14_1_1[38, "Regions"] <- "Primavera_do_Leste"
fsoyp14_1_1[39, "Regions"] <- "Alto_Garcas_e_Alto_Taquari"
fsoyp14_1_1[40, "Regions"] <- "Jaciara_e_Juscimeira"
fsoyp14_1_1[41, "Regions"] <- "Santo_Antonio_do_Leste"
fsoyp14_1_1[42, "Regions"] <- "Others_Sudeste"
fsoyp14_1_1[43, "Regions"] <- "Mato_Grosso"
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
fsoyp14_2_1[11, "Regions"] <- "Nova_Xavantina"
fsoyp14_2_1[12, "Regions"] <- "Others_Nordeste"
fsoyp14_2_1[13, "Regions"] <- "Medio_Norte"
fsoyp14_2_1[14, "Regions"] <- "Lucas_do_Rio_Verde"
fsoyp14_2_1[16, "Regions"] <- "Nova_Mutum"
fsoyp14_2_1[17, "Regions"] <- "Ipiranga_do_Norte"
fsoyp14_2_1[20, "Regions"] <- "Santa_Rita_do_Trivelato"
fsoyp14_2_1[21, "Regions"] <- "Nova_Ubirata"
fsoyp14_2_1[23, "Regions"] <- "Sao_Jose_do_Rio_Claro"
fsoyp14_2_1[24, "Regions"] <- "Others_Medio_Norte"
fsoyp14_2_1[27, "Regions"] <- "Campo_Novo_dos_Parecis"
fsoyp14_2_1[28, "Regions"] <- "Campos_de_Julio"
fsoyp14_2_1[29, "Regions"] <- "Others_Oeste"
fsoyp14_2_1[30, "Regions"] <- "Centro_Sul"
fsoyp14_2_1[32, "Regions"] <- "Tangara_da_Serra"
fsoyp14_2_1[33, "Regions"] <- "Santo_Antonio_do_Leveger"
fsoyp14_2_1[34, "Regions"] <- "Chapada_dos_Guimaraes"
fsoyp14_2_1[35, "Regions"] <- "Others_Centro_Sul"
fsoyp14_2_1[37, "Regions"] <- "Campo_Verde"
fsoyp14_2_1[38, "Regions"] <- "Primavera_do_Leste"
fsoyp14_2_1[39, "Regions"] <- "Alto_Garcas_e_Alto_Taquari"
fsoyp14_2_1[40, "Regions"] <- "Jaciara_e_Juscimeira"
fsoyp14_2_1[41, "Regions"] <- "Santo_Antonio_do_Leste"
fsoyp14_2_1[42, "Regions"] <- "Others_Sudeste"
fsoyp14_2_1[43, "Regions"] <- "Mato_Grosso"
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

#2014-2015 soy planting - setting as data frame - 1st file - municipal data
fsoyp15_1 <- as.data.frame(fsoyp15_1[2:nrow(fsoyp15_1), ], stringsAsFactors = FALSE)
hefsoyp15_1 <- c('Regions', 'Area_ha', '2014-09-18', '2014-09-25', '2014-10-02', '2014-10-09', '2014-10-16',
                   '2014-10-23', '2014-10-30', '2014-11-06', '2014-11-13', '2014-11-20', '2014-11-27',
                '2014-12-04', '2014-12-11')
names(fsoyp15_1) <- hefsoyp15_1
fsoyp15_1[3, "Regions"] <- "Others_Noroeste"
fsoyp15_1[5, "Regions"] <- "Itauba"
fsoyp15_1[6, "Regions"] <- "Others_Norte"
fsoyp15_1[9, "Regions"] <- "Querencia"
fsoyp15_1[10, "Regions"] <- "Gaucha_do_Norte"
fsoyp15_1[11, "Regions"] <- "Nova_Xavantina"
fsoyp15_1[12, "Regions"] <- "Others_Nordeste"
fsoyp15_1[13, "Regions"] <- "Medio_Norte"
fsoyp15_1[14, "Regions"] <- "Lucas_do_Rio_Verde"
fsoyp15_1[16, "Regions"] <- "Nova_Mutum"
fsoyp15_1[17, "Regions"] <- "Ipiranga_do_Norte"
fsoyp15_1[20, "Regions"] <- "Santa_Rita_do_Trivelato"
fsoyp15_1[21, "Regions"] <- "Nova_Ubirata"
fsoyp15_1[23, "Regions"] <- "Sao_Jose_do_Rio_Claro"
fsoyp15_1[24, "Regions"] <- "Others_Medio_Norte"
fsoyp15_1[27, "Regions"] <- "Campo_Novo_dos_Parecis"
fsoyp15_1[28, "Regions"] <- "Campos_de_Julio"
fsoyp15_1[29, "Regions"] <- "Others_Oeste"
fsoyp15_1[30, "Regions"] <- "Centro_Sul"
fsoyp15_1[32, "Regions"] <- "Tangara_da_Serra"
fsoyp15_1[33, "Regions"] <- "Santo_Antonio_do_Leveger"
fsoyp15_1[34, "Regions"] <- "Chapada_dos_Guimaraes"
fsoyp15_1[35, "Regions"] <- "Others_Centro_Sul"
fsoyp15_1[37, "Regions"] <- "Campo_Verde"
fsoyp15_1[38, "Regions"] <- "Primavera_do_Leste"
fsoyp15_1[39, "Regions"] <- "Alto_Garcas_e_Alto_Taquari"
fsoyp15_1[40, "Regions"] <- "Jaciara_e_Juscimeira"
fsoyp15_1[41, "Regions"] <- "Santo_Antonio_do_Leste"
fsoyp15_1[42, "Regions"] <- "Others_Sudeste"
fsoyp15_1[43, "Regions"] <- "Mato_Grosso"

#Remove periods and spaces from decimal/thousands positions and convert Area_ha to numeric
fsoyp15_1$Area_ha <- gsub("\\.", "", fsoyp15_1$Area_ha)
fsoyp15_1$Area_ha <- gsub(" ", "", fsoyp15_1$Area_ha)
fsoyp15_1 <- fsoyp15_1 %>%
  mutate(Area_ha = as.numeric(Area_ha))
View(fsoyp15_1)

#xxx <- 3
#colnames(fsoyp15_1)[1]

for (xxx in 3:dim(fsoyp15_1)[2]){
  fsoyp15_1[[paste(colnames(fsoyp15_1)[xxx])]] <- gsub(",", "\\.", fsoyp15_1[[paste(colnames(fsoyp15_1)[xxx])]])
  fsoyp15_1[[paste(colnames(fsoyp15_1)[xxx])]] <- gsub("%", "", fsoyp15_1[[paste(colnames(fsoyp15_1)[xxx])]])
  fsoyp15_1[[paste(colnames(fsoyp15_1)[xxx])]] <- as.numeric(fsoyp15_1[[paste(colnames(fsoyp15_1)[xxx])]])
  fsoyp15_1[[paste(colnames(fsoyp15_1)[xxx])]] <- fsoyp15_1[[paste(colnames(fsoyp15_1)[xxx])]]/100
}
dim(fsoyp15_1)
sapply(fsoyp15_1, mode)

#Writing 2013-2014 Municipal data to CSV
write.csv(fsoyp15_1, file='soy_plant_2015_muni.csv', row.names=FALSE)

#2014-2015 soy planting - isolating regional summary table by removing unnecessary rows from both files
View(fsoyp15_2)
fsoyp15_2 <- as.data.frame(fsoyp15_2[5:nrow(fsoyp15_2), ], stringsAsFactors = FALSE)
fsoyp15_2[15] <- NULL
fsoyp15_2[14] <- NULL
fsoyp15_2[13] <- NULL
fsoyp15_2[12] <- NULL
fsoyp15_2[11] <- NULL
fsoyp15_2[10] <- NULL
fsoyp15_2[6] <- NULL

hefsoyp15_2 <- c('Headers', 'Norte', 'Nordeste', 'Medio_Norte', 'Oeste',
                   'Centro_Sul', 'Sudeste', 'Mato_Grosso')
names(fsoyp15_2) <- hefsoyp15_2
fsoyp15_2$Noroeste <- c('608.298','0,4%', '0,14%','0,4%','1,0%','9,0%','8,8%','20,4%','33,8%', '66,3%',
                        '80,8%','89,4%','97,4%','99,7%','100,0%','100,0%','0','0,0 p.p.','0')
fsoyp15_2 <- fsoyp15_2[c(1,9,2:8)]
#Transpose 2012 soy planting regions table (rows to columns, columns to rows)
fsoyp15_2 <- t(fsoyp15_2)
#Turn this transposed table into a data frame and remove headers in first row
fsoyp15_2 <- as.data.frame(fsoyp15_2[1:nrow(fsoyp15_2), ], sort= FALSE)
fsoyp15_2 <- fsoyp15_2[-c(1), ]
fsoyp15_2[17] <- NULL
fsoyp15_2[19] <- NULL
#Create new header names and insert them
setDT(fsoyp15_2, keep.rownames=TRUE)
colnames(fsoyp15_2)[1] <- "IMEA_Regions"
hefsoyp15_2 <- c('IMEA_Regions', 'Area_ha', 'none', '2014-09-18', '2014-09-25', '2014-10-02', '2014-10-09', '2014-10-16',
                 '2014-10-23', '2014-10-30', '2014-11-06', '2014-11-13', '2014-11-20', '2014-11-27',
                 '2014-12-04', '2014-12-11', '2013-12-05', 'change_in_plant_per', 'none2')
names(fsoyp15_2) <- hefsoyp15_2
fsoyp15_2 <- fsoyp15_2[,-3]
fsoyp15_2 <- fsoyp15_2[,-18]

#change Area_ha column to numeric and remove periods from thousandths position
fsoyp15_2 <- fsoyp15_2 %>%
  mutate(Area_ha = as.numeric(gsub("\\.", "", Area_ha)))
#xxx <- 3
#colnames(fsoyp15_2)[1]

for (xxx in 3:dim(fsoyp15_2)[2]){
  fsoyp15_2[[paste(colnames(fsoyp15_2)[xxx])]] <- gsub(",", "\\.", fsoyp15_2[[paste(colnames(fsoyp15_2)[xxx])]])
  fsoyp15_2[[paste(colnames(fsoyp15_2)[xxx])]] <- gsub("%", "", fsoyp15_2[[paste(colnames(fsoyp15_2)[xxx])]])
  fsoyp15_2[[paste(colnames(fsoyp15_2)[xxx])]] <- gsub("p.p.", "", fsoyp15_2[[paste(colnames(fsoyp15_2)[xxx])]])
  fsoyp15_2[[paste(colnames(fsoyp15_2)[xxx])]] <- as.numeric(fsoyp15_2[[paste(colnames(fsoyp15_2)[xxx])]])
  fsoyp15_2[[paste(colnames(fsoyp15_2)[xxx])]] <- fsoyp15_2[[paste(colnames(fsoyp15_2)[xxx])]]/100
}
dim(fsoyp15_2)
sapply(fsoyp15_2, mode)

#Writing 2014-2015 Regional data to CSV
write.csv(fsoyp15_2, file='soy_plant_2015_region.csv', row.names=FALSE)

#2015-2016 soy planting - isolating regional summary table by removing unnecessary rows from both files
View(fsoyp16)
fsoyp16 <- as.data.frame(fsoyp16[2:nrow(fsoyp16), ], stringsAsFactors = FALSE)


hefsoyp16 <- c('Headers', 'Noroeste', 'Norte', 'Nordeste', 'Medio_Norte', 'Oeste',
                 'Centro_Sul', 'Sudeste', 'Mato_Grosso')
names(fsoyp16) <- hefsoyp16

#Transpose 2012 soy planting regions table (rows to columns, columns to rows)
fsoyp16 <- t(fsoyp16)
#Turn this transposed table into a data frame and remove headers in first row
fsoyp16 <- as.data.frame(fsoyp16[1:nrow(fsoyp16), ], sort= FALSE)
fsoyp16 <- fsoyp16[-c(1), ]

#Create new header names and insert them
setDT(fsoyp16, keep.rownames=TRUE)
colnames(fsoyp16)[1] <- "IMEA_Regions"
fsoyp16 <- fsoyp16[,-22]
fsoyp16 <- fsoyp16[,-20]
hefsoyp16 <- c('IMEA_Regions', 'Area_ha', '2015-09-24', '2015-10-01', '2015-10-08', '2015-10-15',
                 '2015-10-22', '2015-10-29', '2015-11-05', '2015-11-12', '2015-11-19', '2015-11-26',
                 '2015-12-03', '2015-12-10', '2015-12-17', '2016-01-07', '2016-01-14', 'weekly_change',
                 '2014-12-11', 'change_in_plant_per')
names(fsoyp16) <- hefsoyp16

#change Area_ha column to numeric and remove periods from thousandths position
fsoyp16 <- fsoyp16 %>%
  mutate(Area_ha = as.numeric(gsub("\\.", "", Area_ha)))
#xxx <- 3
#colnames(fsoyp16)[1]

for (xxx in 3:dim(fsoyp16)[2]){
  fsoyp16[[paste(colnames(fsoyp16)[xxx])]] <- gsub(",", "\\.", fsoyp16[[paste(colnames(fsoyp16)[xxx])]])
  fsoyp16[[paste(colnames(fsoyp16)[xxx])]] <- gsub("%", "", fsoyp16[[paste(colnames(fsoyp16)[xxx])]])
  fsoyp16[[paste(colnames(fsoyp16)[xxx])]] <- gsub("p.p.", "", fsoyp16[[paste(colnames(fsoyp16)[xxx])]])
  fsoyp16[[paste(colnames(fsoyp16)[xxx])]] <- as.numeric(fsoyp16[[paste(colnames(fsoyp16)[xxx])]])
  fsoyp16[[paste(colnames(fsoyp16)[xxx])]] <- fsoyp16[[paste(colnames(fsoyp16)[xxx])]]/100
}
dim(fsoyp16)
sapply(fsoyp16, mode)

#Writing 2015-2016 Regional data to CSV
write.csv(fsoyp16, file='soy_plant_2016_region.csv', row.names=FALSE)

#2016-2017 soy planting - isolating regional summary table by removing unnecessary rows from both files
View(fsoyp17)
fsoyp17 <- as.data.frame(fsoyp17[2:nrow(fsoyp17), ], stringsAsFactors = FALSE)


hefsoyp17 <- c('Headers', 'Noroeste', 'Norte', 'Nordeste', 'Medio_Norte', 'Oeste',
               'Centro_Sul', 'Sudeste', 'Mato_Grosso')
names(fsoyp17) <- hefsoyp17

#Transpose 2012 soy planting regions table (rows to columns, columns to rows)
fsoyp17 <- t(fsoyp17)
#Turn this transposed table into a data frame and remove headers in first row
fsoyp17 <- as.data.frame(fsoyp17[1:nrow(fsoyp17), ], sort= FALSE)
fsoyp17 <- fsoyp17[-c(1), ]

#Create new header names and insert them
setDT(fsoyp17, keep.rownames=TRUE)
colnames(fsoyp17)[1] <- "IMEA_Regions"
fsoyp17 <- fsoyp17[,-20]
fsoyp17 <- fsoyp17[,-18]
hefsoyp17 <- c('IMEA_Regions', 'Area_ha', '2016-09-22','2016-09-29', '2016-10-06', '2016-10-13',
               '2016-10-20', '2016-10-27', '2016-11-03', '2016-11-10', '2016-11-17', '2016-11-24',
               '2016-12-01', '2016-12-08', '2016-12-15', 'weekly_change', '2015-12-18',
               'change_in_plant_per')
names(fsoyp17) <- hefsoyp17

#change Area_ha column to numeric and remove periods from thousandths position
fsoyp17 <- fsoyp17 %>%
  mutate(Area_ha = as.numeric(gsub("\\.", "", Area_ha)))
#xxx <- 3
#colnames(fsoyp17)[1]

for (xxx in 3:dim(fsoyp17)[2]){
  fsoyp17[[paste(colnames(fsoyp17)[xxx])]] <- gsub(",", "\\.", fsoyp17[[paste(colnames(fsoyp17)[xxx])]])
  fsoyp17[[paste(colnames(fsoyp17)[xxx])]] <- gsub("%", "", fsoyp17[[paste(colnames(fsoyp17)[xxx])]])
  fsoyp17[[paste(colnames(fsoyp17)[xxx])]] <- gsub("p.p.", "", fsoyp17[[paste(colnames(fsoyp17)[xxx])]])
  fsoyp17[[paste(colnames(fsoyp17)[xxx])]] <- as.numeric(fsoyp17[[paste(colnames(fsoyp17)[xxx])]])
  fsoyp17[[paste(colnames(fsoyp17)[xxx])]] <- fsoyp17[[paste(colnames(fsoyp17)[xxx])]]/100
}
dim(fsoyp17)
sapply(fsoyp17, mode)

#Writing 2016-2017 Regional data to CSV
write.csv(fsoyp17, file='soy_plant_2017_region.csv', row.names=FALSE)

#2017-2018 soy planting - isolating regional summary table by removing unnecessary rows 
View(fsoyp18)
fsoyp18 <- as.data.frame(fsoyp18[2:nrow(fsoyp18), ], stringsAsFactors = FALSE)


hefsoyp18 <- c('Headers', 'Noroeste', 'Norte', 'Nordeste', 'Medio_Norte', 'Oeste',
               'Centro_Sul', 'Sudeste', 'Mato_Grosso')
names(fsoyp18) <- hefsoyp18

#Transpose 2012 soy planting regions table (rows to columns, columns to rows)
fsoyp18 <- t(fsoyp18)
#Turn this transposed table into a data frame and remove headers in first row
fsoyp18 <- as.data.frame(fsoyp18[1:nrow(fsoyp18), ], sort= FALSE)
fsoyp18 <- fsoyp18[-c(1), ]

#Create new header names and insert them
setDT(fsoyp18, keep.rownames=TRUE)
colnames(fsoyp18)[1] <- "IMEA_Regions"
fsoyp18 <- fsoyp18[,-20]
fsoyp18 <- fsoyp18[,-18]
hefsoyp18 <- c('IMEA_Regions', 'Area_ha', '2017-09-22','2017-09-29', '2017-10-06', '2017-10-13',
               '2017-10-20', '2017-10-27', '2017-11-03', '2017-11-10', '2017-11-17', '2017-11-24',
               '2017-12-01', '2017-12-08', '2017-12-15', 'weekly_change', '2016-12-15',
               'change_in_plant_per')
names(fsoyp18) <- hefsoyp18

#change Area_ha column to numeric and remove periods from thousandths position
fsoyp18 <- fsoyp18 %>%
  mutate(Area_ha = as.numeric(gsub("\\.", "", Area_ha)))
#xxx <- 3
#colnames(fsoyp18)[1]

for (xxx in 3:dim(fsoyp18)[2]){
  fsoyp18[[paste(colnames(fsoyp18)[xxx])]] <- gsub(",", "\\.", fsoyp18[[paste(colnames(fsoyp18)[xxx])]])
  fsoyp18[[paste(colnames(fsoyp18)[xxx])]] <- gsub("%", "", fsoyp18[[paste(colnames(fsoyp18)[xxx])]])
  fsoyp18[[paste(colnames(fsoyp18)[xxx])]] <- gsub("p.p.", "", fsoyp18[[paste(colnames(fsoyp18)[xxx])]])
  fsoyp18[[paste(colnames(fsoyp18)[xxx])]] <- as.numeric(fsoyp18[[paste(colnames(fsoyp18)[xxx])]])
  fsoyp18[[paste(colnames(fsoyp18)[xxx])]] <- fsoyp18[[paste(colnames(fsoyp18)[xxx])]]/100
}
dim(fsoyp18)
sapply(fsoyp18, mode)

#Writing 2017-2018 Regional data to CSV
write.csv(fsoyp18, file='soy_plant_2018_region.csv', row.names=FALSE)

#2018-2019 soy planting - isolating regional summary table by removing unnecessary rows from both files
View(fsoyp19)
fsoyp19 <- as.data.frame(fsoyp19[2:nrow(fsoyp19), ], stringsAsFactors = FALSE)


hefsoyp19 <- c('Headers', 'Noroeste', 'Norte', 'Nordeste', 'Medio_Norte', 'Oeste',
               'Centro_Sul', 'Sudeste', 'Mato_Grosso')
names(fsoyp19) <- hefsoyp19

fsoyp19 <- fsoyp19[-c(1), ]
fsoyp19 <- fsoyp19[-c(3,6,9,12,15,18,20,22), ]

#Transpose 2012 soy planting regions table (rows to columns, columns to rows)
fsoyp19 <- t(fsoyp19)
#Turn this transposed table into a data frame and remove headers in first row
fsoyp19 <- as.data.frame(fsoyp19[1:nrow(fsoyp19), ], sort= FALSE)
fsoyp19 <- fsoyp19[-c(1), ]

#Create new header names and insert them
setDT(fsoyp19, keep.rownames=TRUE)
colnames(fsoyp19)[1] <- "IMEA_Regions"
hefsoyp19 <- c('IMEA_Regions', 'Area_ha', '2018-09-21', '2018-09-28', '2018-10-05', '2018-10-12',
               '2018-10-19', '2018-10-26', '2018-11-02', '2018-11-09', '2018-11-16', '2018-11-23',
               'weekly_change', '2017-11-24', 'change_in_plant_per')
names(fsoyp19) <- hefsoyp19

#change Area_ha column to numeric and remove periods from thousandths position
fsoyp19 <- fsoyp19 %>%
  mutate(Area_ha = as.numeric(gsub("\\.", "", Area_ha)))
#xxx <- 3
#colnames(fsoyp19)[1]

for (xxx in 3:dim(fsoyp19)[2]){
  fsoyp19[[paste(colnames(fsoyp19)[xxx])]] <- gsub(",", "\\.", fsoyp19[[paste(colnames(fsoyp19)[xxx])]])
  fsoyp19[[paste(colnames(fsoyp19)[xxx])]] <- gsub("%", "", fsoyp19[[paste(colnames(fsoyp19)[xxx])]])
  fsoyp19[[paste(colnames(fsoyp19)[xxx])]] <- gsub("p.p.", "", fsoyp19[[paste(colnames(fsoyp19)[xxx])]])
  fsoyp19[[paste(colnames(fsoyp19)[xxx])]] <- as.numeric(fsoyp19[[paste(colnames(fsoyp19)[xxx])]])
  fsoyp19[[paste(colnames(fsoyp19)[xxx])]] <- fsoyp19[[paste(colnames(fsoyp19)[xxx])]]/100
}
dim(fsoyp19)
sapply(fsoyp19, mode)

#Writing 2015-2016 Regional data to CSV
write.csv(fsoyp19, file='soy_plant_2019_region.csv', row.names=FALSE)

# Create individual data matrices for soy harvesting data
fsoyh9_2 <- do.call(rbind, outsoyh9_2)
fsoyh9_4 <- do.call(rbind, outsoyh9_4)
fsoyh9_6 <- do.call(rbind, outsoyh9_6)
fsoyh9_8 <- do.call(rbind, outsoyh9_8)
fsoyh9_10 <- do.call(rbind, outsoyh9_10)
fsoyh9_12 <- do.call(rbind, outsoyh9_12)
fsoyh9_14 <- do.call(rbind, outsoyh9_14)
fsoyh10_1 <- do.call(rbind, outsoyh10[1])
fsoyh10_2 <- do.call(rbind, outsoyh10[2])
fsoyh11_1_1 <- do.call(rbind, outsoyh11_1[1])
fsoyh11_1_2 <- do.call(rbind, outsoyh11_1[2])
fsoyh11_2_1 <- do.call(rbind, outsoyh11_2[1])
fsoyh11_2_2 <- do.call(rbind, outsoyh11_2[2])
fsoyh12_1_1 <- do.call(rbind, outsoyh12_1[1])
fsoyh12_1_2 <- do.call(rbind, outsoyh12_1[2])
fsoyh12_2_1 <- do.call(rbind, outsoyh12_2[1])
fsoyh12_2_2 <- do.call(rbind, outsoyh12_2[2])
fsoyh13_1 <- do.call(rbind, outsoyh13)
fsoyh14_1 <- do.call(rbind, outsoyh14[1])
fsoyh14_2 <- do.call(rbind, outsoyh14[2])
fsoyh15_1 <- do.call(rbind, outsoyh15[1])
fsoyh15_2 <- do.call(rbind, outsoyh15[2])
fsoyh16_1 <- do.call(rbind, outsoyh16[1])
fsoyh16_2 <- do.call(rbind, outsoyh16[2])
fsoyh17 <- do.call(rbind, outsoyh17)
fsoyh18 <- do.call(rbind, outsoyh18)

#2009 soy harvest
fsoyh9_2 <- as.data.frame(fsoyh9_2[2:nrow(fsoyh9_2), ], stringsAsFactors = FALSE)
fsoyh9_4 <- as.data.frame(fsoyh9_4[2:nrow(fsoyh9_4), ], stringsAsFactors = FALSE)
fsoyh9_6 <- as.data.frame(fsoyh9_6[2:nrow(fsoyh9_6), ], stringsAsFactors = FALSE)
fsoyh9_8 <- as.data.frame(fsoyh9_8[2:nrow(fsoyh9_8), ], stringsAsFactors = FALSE)
fsoyh9_10 <- as.data.frame(fsoyh9_10[2:nrow(fsoyh9_10), ], stringsAsFactors = FALSE)
fsoyh9_12 <- as.data.frame(fsoyh9_12[2:nrow(fsoyh9_12), ], stringsAsFactors = FALSE)
fsoyh9_14 <- as.data.frame(fsoyh9_14[2:nrow(fsoyh9_14), ], stringsAsFactors = FALSE)

fsoyh9_2 <- fsoyh9_2[-c(1,3,5,7,10,12,14,16,18,20,22,25,27,29,31,34,36,38), ]
fsoyh9_2[2] <- NULL
fsoyh9_4[1] <- NULL
fsoyh9_4 <- fsoyh9_4[-c(4,24,33,39), ]
fsoyh9_6[2] <- NULL
fsoyh9_6[1] <- NULL
fsoyh9_6 <- fsoyh9_6[-c(23), ]
fsoyh9_8[7] <- NULL
fsoyh9_8[5] <- NULL
fsoyh9_8[4] <- NULL
fsoyh9_8[3] <- NULL
fsoyh9_8[2] <- NULL
fsoyh9_8[1] <- NULL
fsoyh9_8 <- fsoyh9_8[-c(2,44), ]
fsoyh9_10[6] <- NULL
fsoyh9_10[4] <- NULL
fsoyh9_10[3] <- NULL
fsoyh9_10[2] <- NULL
fsoyh9_10[1] <- NULL
fsoyh9_10 <- fsoyh9_10[-c(6,9,11,15,25,27,31,33,35,37), ]
fsoyh9_12[3] <- NULL
fsoyh9_12[1] <- NULL
fsoyh9_14[1] <- NULL
fsoyh9_14 <- fsoyh9_14[-c(1,3,10,13,21,28,31), ]

hefsoyh9_2 <- c('Regions', 'Area_ha', '2009-01-09', '2009-01-15')
names(fsoyh9_2) <- hefsoyh9_2
fsoyh9_4[3] <- NULL
fsoyh9_4[2] <- NULL
hefsoyh9_4 <- c('Regions', '2009-01-22', '2009-01-29')
names(fsoyh9_4) <- hefsoyh9_4
fsoyh9_6[2] <- NULL
hefsoyh9_6 <- c('Regions', '2009-02-05', '2009-02-11')
names(fsoyh9_6) <- hefsoyh9_6
fsoyh9_8[1] <- NULL
fsoyh9_8 <- fsoyh9_8[-c(1), ]
hefsoyh9_8 <- c('Regions', '2009-02-19', '2009-02-26')
names(fsoyh9_8) <- hefsoyh9_8
fsoyh9_10[2] <- NULL
hefsoyh9_10 <- c('Regions', '2009-03-05', '2009-03-10')
names(fsoyh9_10) <- hefsoyh9_10
fsoyh9_12[2] <- NULL
hefsoyh9_12 <- c('Regions', '2009-03-19', '2009-03-25')
names(fsoyh9_12) <- hefsoyh9_12
fsoyh9_14[2] <- NULL
hefsoyh9_14 <- c('Regions', '2009-04-01', '2009-04-09')
names(fsoyh9_14) <- hefsoyh9_14

fsoyh9_2[3, "Regions"] <- "Others_Noroeste"
fsoyh9_2[5, "Regions"] <- "Itauba"
fsoyh9_2[6, "Regions"] <- "Others_Norte"
fsoyh9_2[9, "Regions"] <- "Querencia"
fsoyh9_2[10, "Regions"] <- "Gaucha_do_Norte"
fsoyh9_2[11, "Regions"] <- "Nova_Xavantina"
fsoyh9_2[12, "Regions"] <- "Others_Nordeste"
fsoyh9_2[13, "Regions"] <- "Medio_Norte"
fsoyh9_2[14, "Regions"] <- "Lucas_do_Rio_Verde"
fsoyh9_2[16, "Regions"] <- "Nova_Mutum"
fsoyh9_2[17, "Regions"] <- "Ipiranga_do_Norte"
fsoyh9_2[20, "Regions"] <- "Santa_Rita_do_Trivelato"
fsoyh9_2[21, "Regions"] <- "Nova_Ubirata"
fsoyh9_2[23, "Regions"] <- "Sao_Jose_do_Rio_Claro"
fsoyh9_2[24, "Regions"] <- "Others_Medio_Norte"
fsoyh9_2[27, "Regions"] <- "Campo_Novo_dos_Parecis"
fsoyh9_2[28, "Regions"] <- "Campos_de_Julio"
fsoyh9_2[29, "Regions"] <- "Others_Oeste"
fsoyh9_2[30, "Regions"] <- "Centro_Sul"
fsoyh9_2[32, "Regions"] <- "Tangara_da_Serra"
fsoyh9_2[33, "Regions"] <- "Santo_Antonio_do_Leveger"
fsoyh9_2[34, "Regions"] <- "Chapada_dos_Guimaraes"
fsoyh9_2[35, "Regions"] <- "Others_Centro_Sul"
fsoyh9_2[37, "Regions"] <- "Campo_Verde"
fsoyh9_2[38, "Regions"] <- "Primavera_do_Leste"
fsoyh9_2[39, "Regions"] <- "Alto_Garcas_e_Alto_Taquari"
fsoyh9_2[40, "Regions"] <- "Jaciara_e_Juscimeira"
fsoyh9_2[41, "Regions"] <- "Santo_Antonio_do_Leste"
fsoyh9_2[42, "Regions"] <- "Others_Sudeste"
fsoyh9_2[43, "Regions"] <- "Mato_Grosso"

fsoyh9_4[3, "Regions"] <- "Others_Noroeste"
fsoyh9_4[5, "Regions"] <- "Itauba"
fsoyh9_4[6, "Regions"] <- "Others_Norte"
fsoyh9_4[9, "Regions"] <- "Querencia"
fsoyh9_4[10, "Regions"] <- "Gaucha_do_Norte"
fsoyh9_4[11, "Regions"] <- "Nova_Xavantina"
fsoyh9_4[12, "Regions"] <- "Others_Nordeste"
fsoyh9_4[13, "Regions"] <- "Medio_Norte"
fsoyh9_4[14, "Regions"] <- "Lucas_do_Rio_Verde"
fsoyh9_4[16, "Regions"] <- "Nova_Mutum"
fsoyh9_4[17, "Regions"] <- "Ipiranga_do_Norte"
fsoyh9_4[20, "Regions"] <- "Santa_Rita_do_Trivelato"
fsoyh9_4[21, "Regions"] <- "Nova_Ubirata"
fsoyh9_4[23, "Regions"] <- "Sao_Jose_do_Rio_Claro"
fsoyh9_4[24, "Regions"] <- "Others_Medio_Norte"
fsoyh9_4[27, "Regions"] <- "Campo_Novo_dos_Parecis"
fsoyh9_4[28, "Regions"] <- "Campos_de_Julio"
fsoyh9_4[29, "Regions"] <- "Others_Oeste"
fsoyh9_4[30, "Regions"] <- "Centro_Sul"
fsoyh9_4[32, "Regions"] <- "Tangara_da_Serra"
fsoyh9_4[33, "Regions"] <- "Santo_Antonio_do_Leveger"
fsoyh9_4[34, "Regions"] <- "Chapada_dos_Guimaraes"
fsoyh9_4[35, "Regions"] <- "Others_Centro_Sul"
fsoyh9_4[37, "Regions"] <- "Campo_Verde"
fsoyh9_4[38, "Regions"] <- "Primavera_do_Leste"
fsoyh9_4[39, "Regions"] <- "Alto_Garcas_e_Alto_Taquari"
fsoyh9_4[40, "Regions"] <- "Jaciara_e_Juscimeira"
fsoyh9_4[41, "Regions"] <- "Santo_Antonio_do_Leste"
fsoyh9_4[42, "Regions"] <- "Others_Sudeste"
fsoyh9_4[43, "Regions"] <- "Mato_Grosso"

fsoyh9_6[3, "Regions"] <- "Others_Noroeste"
fsoyh9_6[5, "Regions"] <- "Itauba"
fsoyh9_6[6, "Regions"] <- "Others_Norte"
fsoyh9_6[9, "Regions"] <- "Querencia"
fsoyh9_6[10, "Regions"] <- "Gaucha_do_Norte"
fsoyh9_6[11, "Regions"] <- "Nova_Xavantina"
fsoyh9_6[12, "Regions"] <- "Others_Nordeste"
fsoyh9_6[13, "Regions"] <- "Medio_Norte"
fsoyh9_6[14, "Regions"] <- "Lucas_do_Rio_Verde"
fsoyh9_6[16, "Regions"] <- "Nova_Mutum"
fsoyh9_6[17, "Regions"] <- "Ipiranga_do_Norte"
fsoyh9_6[20, "Regions"] <- "Santa_Rita_do_Trivelato"
fsoyh9_6[21, "Regions"] <- "Nova_Ubirata"
fsoyh9_6[23, "Regions"] <- "Sao_Jose_do_Rio_Claro"
fsoyh9_6[24, "Regions"] <- "Others_Medio_Norte"
fsoyh9_6[27, "Regions"] <- "Campo_Novo_dos_Parecis"
fsoyh9_6[28, "Regions"] <- "Campos_de_Julio"
fsoyh9_6[29, "Regions"] <- "Others_Oeste"
fsoyh9_6[30, "Regions"] <- "Centro_Sul"
fsoyh9_6[32, "Regions"] <- "Tangara_da_Serra"
fsoyh9_6[33, "Regions"] <- "Santo_Antonio_do_Leveger"
fsoyh9_6[34, "Regions"] <- "Chapada_dos_Guimaraes"
fsoyh9_6[35, "Regions"] <- "Others_Centro_Sul"
fsoyh9_6[37, "Regions"] <- "Campo_Verde"
fsoyh9_6[38, "Regions"] <- "Primavera_do_Leste"
fsoyh9_6[39, "Regions"] <- "Alto_Garcas_e_Alto_Taquari"
fsoyh9_6[40, "Regions"] <- "Jaciara_e_Juscimeira"
fsoyh9_6[41, "Regions"] <- "Santo_Antonio_do_Leste"
fsoyh9_6[42, "Regions"] <- "Others_Sudeste"
fsoyh9_6[43, "Regions"] <- "Mato_Grosso"

fsoyh9_8[3, "Regions"] <- "Others_Noroeste"
fsoyh9_8[5, "Regions"] <- "Itauba"
fsoyh9_8[6, "Regions"] <- "Others_Norte"
fsoyh9_8[9, "Regions"] <- "Querencia"
fsoyh9_8[10, "Regions"] <- "Gaucha_do_Norte"
fsoyh9_8[11, "Regions"] <- "Nova_Xavantina"
fsoyh9_8[12, "Regions"] <- "Others_Nordeste"
fsoyh9_8[13, "Regions"] <- "Medio_Norte"
fsoyh9_8[14, "Regions"] <- "Lucas_do_Rio_Verde"
fsoyh9_8[16, "Regions"] <- "Nova_Mutum"
fsoyh9_8[17, "Regions"] <- "Ipiranga_do_Norte"
fsoyh9_8[20, "Regions"] <- "Santa_Rita_do_Trivelato"
fsoyh9_8[21, "Regions"] <- "Nova_Ubirata"
fsoyh9_8[23, "Regions"] <- "Sao_Jose_do_Rio_Claro"
fsoyh9_8[24, "Regions"] <- "Others_Medio_Norte"
fsoyh9_8[27, "Regions"] <- "Campo_Novo_dos_Parecis"
fsoyh9_8[28, "Regions"] <- "Campos_de_Julio"
fsoyh9_8[29, "Regions"] <- "Others_Oeste"
fsoyh9_8[30, "Regions"] <- "Centro_Sul"
fsoyh9_8[32, "Regions"] <- "Tangara_da_Serra"
fsoyh9_8[33, "Regions"] <- "Santo_Antonio_do_Leveger"
fsoyh9_8[34, "Regions"] <- "Chapada_dos_Guimaraes"
fsoyh9_8[35, "Regions"] <- "Others_Centro_Sul"
fsoyh9_8[37, "Regions"] <- "Campo_Verde"
fsoyh9_8[38, "Regions"] <- "Primavera_do_Leste"
fsoyh9_8[39, "Regions"] <- "Alto_Garcas_e_Alto_Taquari"
fsoyh9_8[40, "Regions"] <- "Jaciara_e_Juscimeira"
fsoyh9_8[41, "Regions"] <- "Santo_Antonio_do_Leste"
fsoyh9_8[42, "Regions"] <- "Others_Sudeste"
fsoyh9_8[43, "Regions"] <- "Mato_Grosso"

fsoyh9_10[3, "Regions"] <- "Others_Noroeste"
fsoyh9_10[5, "Regions"] <- "Itauba"
fsoyh9_10[6, "Regions"] <- "Others_Norte"
fsoyh9_10[9, "Regions"] <- "Querencia"
fsoyh9_10[10, "Regions"] <- "Gaucha_do_Norte"
fsoyh9_10[11, "Regions"] <- "Nova_Xavantina"
fsoyh9_10[12, "Regions"] <- "Others_Nordeste"
fsoyh9_10[13, "Regions"] <- "Medio_Norte"
fsoyh9_10[14, "Regions"] <- "Lucas_do_Rio_Verde"
fsoyh9_10[16, "Regions"] <- "Nova_Mutum"
fsoyh9_10[17, "Regions"] <- "Ipiranga_do_Norte"
fsoyh9_10[20, "Regions"] <- "Santa_Rita_do_Trivelato"
fsoyh9_10[21, "Regions"] <- "Nova_Ubirata"
fsoyh9_10[23, "Regions"] <- "Sao_Jose_do_Rio_Claro"
fsoyh9_10[24, "Regions"] <- "Others_Medio_Norte"
fsoyh9_10[27, "Regions"] <- "Campo_Novo_dos_Parecis"
fsoyh9_10[28, "Regions"] <- "Campos_de_Julio"
fsoyh9_10[29, "Regions"] <- "Others_Oeste"
fsoyh9_10[30, "Regions"] <- "Centro_Sul"
fsoyh9_10[32, "Regions"] <- "Tangara_da_Serra"
fsoyh9_10[33, "Regions"] <- "Santo_Antonio_do_Leveger"
fsoyh9_10[34, "Regions"] <- "Chapada_dos_Guimaraes"
fsoyh9_10[35, "Regions"] <- "Others_Centro_Sul"
fsoyh9_10[37, "Regions"] <- "Campo_Verde"
fsoyh9_10[38, "Regions"] <- "Primavera_do_Leste"
fsoyh9_10[39, "Regions"] <- "Alto_Garcas_e_Alto_Taquari"
fsoyh9_10[40, "Regions"] <- "Jaciara_e_Juscimeira"
fsoyh9_10[41, "Regions"] <- "Santo_Antonio_do_Leste"
fsoyh9_10[42, "Regions"] <- "Others_Sudeste"
fsoyh9_10[43, "Regions"] <- "Mato_Grosso"

fsoyh9_12[3, "Regions"] <- "Others_Noroeste"
fsoyh9_12[5, "Regions"] <- "Itauba"
fsoyh9_12[6, "Regions"] <- "Others_Norte"
fsoyh9_12[9, "Regions"] <- "Querencia"
fsoyh9_12[10, "Regions"] <- "Gaucha_do_Norte"
fsoyh9_12[11, "Regions"] <- "Nova_Xavantina"
fsoyh9_12[12, "Regions"] <- "Others_Nordeste"
fsoyh9_12[13, "Regions"] <- "Medio_Norte"
fsoyh9_12[14, "Regions"] <- "Lucas_do_Rio_Verde"
fsoyh9_12[16, "Regions"] <- "Nova_Mutum"
fsoyh9_12[17, "Regions"] <- "Ipiranga_do_Norte"
fsoyh9_12[20, "Regions"] <- "Santa_Rita_do_Trivelato"
fsoyh9_12[21, "Regions"] <- "Nova_Ubirata"
fsoyh9_12[23, "Regions"] <- "Sao_Jose_do_Rio_Claro"
fsoyh9_12[24, "Regions"] <- "Others_Medio_Norte"
fsoyh9_12[27, "Regions"] <- "Campo_Novo_dos_Parecis"
fsoyh9_12[28, "Regions"] <- "Campos_de_Julio"
fsoyh9_12[29, "Regions"] <- "Others_Oeste"
fsoyh9_12[30, "Regions"] <- "Centro_Sul"
fsoyh9_12[32, "Regions"] <- "Tangara_da_Serra"
fsoyh9_12[33, "Regions"] <- "Santo_Antonio_do_Leveger"
fsoyh9_12[34, "Regions"] <- "Chapada_dos_Guimaraes"
fsoyh9_12[35, "Regions"] <- "Others_Centro_Sul"
fsoyh9_12[37, "Regions"] <- "Campo_Verde"
fsoyh9_12[38, "Regions"] <- "Primavera_do_Leste"
fsoyh9_12[39, "Regions"] <- "Alto_Garcas_e_Alto_Taquari"
fsoyh9_12[40, "Regions"] <- "Jaciara_e_Juscimeira"
fsoyh9_12[41, "Regions"] <- "Santo_Antonio_do_Leste"
fsoyh9_12[42, "Regions"] <- "Others_Sudeste"
fsoyh9_12[43, "Regions"] <- "Mato_Grosso"

fsoyh9_14[3, "Regions"] <- "Others_Noroeste"
fsoyh9_14[5, "Regions"] <- "Itauba"
fsoyh9_14[6, "Regions"] <- "Others_Norte"
fsoyh9_14[9, "Regions"] <- "Querencia"
fsoyh9_14[10, "Regions"] <- "Gaucha_do_Norte"
fsoyh9_14[11, "Regions"] <- "Nova_Xavantina"
fsoyh9_14[12, "Regions"] <- "Others_Nordeste"
fsoyh9_14[13, "Regions"] <- "Medio_Norte"
fsoyh9_14[14, "Regions"] <- "Lucas_do_Rio_Verde"
fsoyh9_14[16, "Regions"] <- "Nova_Mutum"
fsoyh9_14[17, "Regions"] <- "Ipiranga_do_Norte"
fsoyh9_14[20, "Regions"] <- "Santa_Rita_do_Trivelato"
fsoyh9_14[21, "Regions"] <- "Nova_Ubirata"
fsoyh9_14[23, "Regions"] <- "Sao_Jose_do_Rio_Claro"
fsoyh9_14[24, "Regions"] <- "Others_Medio_Norte"
fsoyh9_14[27, "Regions"] <- "Campo_Novo_dos_Parecis"
fsoyh9_14[28, "Regions"] <- "Campos_de_Julio"
fsoyh9_14[29, "Regions"] <- "Others_Oeste"
fsoyh9_14[30, "Regions"] <- "Centro_Sul"
fsoyh9_14[32, "Regions"] <- "Tangara_da_Serra"
fsoyh9_14[33, "Regions"] <- "Santo_Antonio_do_Leveger"
fsoyh9_14[34, "Regions"] <- "Chapada_dos_Guimaraes"
fsoyh9_14[35, "Regions"] <- "Others_Centro_Sul"
fsoyh9_14[37, "Regions"] <- "Campo_Verde"
fsoyh9_14[38, "Regions"] <- "Primavera_do_Leste"
fsoyh9_14[39, "Regions"] <- "Alto_Garcas_e_Alto_Taquari"
fsoyh9_14[40, "Regions"] <- "Jaciara_e_Juscimeira"
fsoyh9_14[41, "Regions"] <- "Santo_Antonio_do_Leste"
fsoyh9_14[42, "Regions"] <- "Others_Sudeste"
fsoyh9_14[43, "Regions"] <- "Mato_Grosso"

fsoyh9_mun <- merge(fsoyh9_2, fsoyh9_4, by="Regions", sort = FALSE)
fsoyh9_mun1 <- merge(fsoyh9_mun, fsoyh9_6, by="Regions", sort = FALSE)
fsoyh9_mun2 <- merge(fsoyh9_mun1, fsoyh9_8, by="Regions", sort = FALSE)
fsoyh9_mun3 <- merge(fsoyh9_mun2, fsoyh9_10, by="Regions", sort = FALSE)
fsoyh9_mun4 <- merge(fsoyh9_mun3, fsoyh9_12, by="Regions", sort = FALSE)
fsoyh9_mun5 <- merge(fsoyh9_mun4, fsoyh9_14, by="Regions", sort = FALSE)


fsoyh9_mun5[32, "2009-02-11"] <- "17,0%"
fsoyh9_mun5[40, "2009-02-11"] <- "7,0%"
fsoyh9_mun5[15, "2009-04-09"] <- "100,0%"


#Remove periods from thousands positions and convert Area_ha to numeric
fsoyh9_mun5$Area_ha <- gsub("\\.", "", fsoyh9_mun5$Area_ha)
fsoyh9_mun5 <- fsoyh9_mun5 %>%
  mutate(Area_ha = as.numeric(Area_ha))

#xxx <- 3
#colnames(fsoyh9_mun5)[1]

for (xxx in 3:dim(fsoyh9_mun5)[2]){
  fsoyh9_mun5[[paste(colnames(fsoyh9_mun5)[xxx])]] <- gsub(",", "\\.", fsoyh9_mun5[[paste(colnames(fsoyh9_mun5)[xxx])]])
  fsoyh9_mun5[[paste(colnames(fsoyh9_mun5)[xxx])]] <- gsub("%", "", fsoyh9_mun5[[paste(colnames(fsoyh9_mun5)[xxx])]])
  fsoyh9_mun5[[paste(colnames(fsoyh9_mun5)[xxx])]] <- as.numeric(fsoyh9_mun5[[paste(colnames(fsoyh9_mun5)[xxx])]])
  fsoyh9_mun5[[paste(colnames(fsoyh9_mun5)[xxx])]] <- fsoyh9_mun5[[paste(colnames(fsoyh9_mun5)[xxx])]]/100
}
dim(fsoyh9_mun5)
sapply(fsoyh9_mun5, mode)

#Write final table to disk
write.csv(fsoyh9_mun5, file='soy_harvest_2009_muni.csv', row.names=FALSE)

#2010 soy harvesting - setting as data frame - 1st file
fsoyh10_1 <- as.data.frame(fsoyh10_1[2:nrow(fsoyh10_1), ], stringsAsFactors = FALSE)
hefsoyh10_1 <- c('Regions', 'Area_ha', '2010-01-07', '2010-01-14', '2010-01-21', '2010-01-28',
                 '2010-02-04', '2010-02-11', '2010-02-18', '2010-02-25', '2010-03-04', '2010-03-11',
                 '2010-03-18', '2010-03-25', '2010-03-31', '2010-04-07', '2010-04-15')
names(fsoyh10_1) <- hefsoyh10_1

#2010 soy harvest - renaming rows with errors
fsoyh10_1[3, "Regions"] <- "Others_Noroeste"
fsoyh10_1[5, "Regions"] <- "Itauba"
fsoyh10_1[6, "Regions"] <- "Others_Norte"
fsoyh10_1[9, "Regions"] <- "Querencia"
fsoyh10_1[10, "Regions"] <- "Gaucha_do_Norte"
fsoyh10_1[11, "Regions"] <- "Nova_Xavantina"
fsoyh10_1[12, "Regions"] <- "Others_Nordeste"
fsoyh10_1[13, "Regions"] <- "Medio_Norte"
fsoyh10_1[14, "Regions"] <- "Lucas_do_Rio_Verde"
fsoyh10_1[16, "Regions"] <- "Nova_Mutum"
fsoyh10_1[17, "Regions"] <- "Ipiranga_do_Norte"
fsoyh10_1[20, "Regions"] <- "Santa_Rita_do_Trivelato"
fsoyh10_1[21, "Regions"] <- "Nova_Ubirata"
fsoyh10_1[23, "Regions"] <- "Sao_Jose_do_Rio_Claro"
fsoyh10_1[24, "Regions"] <- "Others_Medio_Norte"
fsoyh10_1[27, "Regions"] <- "Campo_Novo_dos_Parecis"
fsoyh10_1[28, "Regions"] <- "Campos_de_Julio"
fsoyh10_1[29, "Regions"] <- "Others_Oeste"
fsoyh10_1[30, "Regions"] <- "Centro_Sul"
fsoyh10_1[32, "Regions"] <- "Tangara_da_Serra"
fsoyh10_1[33, "Regions"] <- "Santo_Antonio_do_Leveger"
fsoyh10_1[34, "Regions"] <- "Chapada_dos_Guimaraes"
fsoyh10_1[35, "Regions"] <- "Others_Centro_Sul"
fsoyh10_1[37, "Regions"] <- "Campo_Verde"
fsoyh10_1[38, "Regions"] <- "Primavera_do_Leste"
fsoyh10_1[39, "Regions"] <- "Alto_Garcas_e_Alto_Taquari"
fsoyh10_1[40, "Regions"] <- "Jaciara_e_Juscimeira"
fsoyh10_1[41, "Regions"] <- "Santo_Antonio_do_Leste"
fsoyh10_1[42, "Regions"] <- "Others_Sudeste"
fsoyh10_1[43, "Regions"] <- "Mato_Grosso"


#Remove periods and spaces from decimal/thousands positions and convert Area_ha to numeric
fsoyh10_1$Area_ha <- gsub("\\.", "", fsoyh10_1$Area_ha)
fsoyh10_1$Area_ha <- gsub(" ", "", fsoyh10_1$Area_ha)
fsoyh10_1 <- fsoyh10_1 %>%
  mutate(Area_ha = as.numeric(Area_ha))

#xxx <- 3
#colnames(fsoyh10_1)[1]

for (xxx in 3:dim(fsoyh10_1)[2]){
  fsoyh10_1[[paste(colnames(fsoyh10_1)[xxx])]] <- gsub(",", "\\.", fsoyh10_1[[paste(colnames(fsoyh10_1)[xxx])]])
  fsoyh10_1[[paste(colnames(fsoyh10_1)[xxx])]] <- gsub("%", "", fsoyh10_1[[paste(colnames(fsoyh10_1)[xxx])]])
  fsoyh10_1[[paste(colnames(fsoyh10_1)[xxx])]] <- as.numeric(fsoyh10_1[[paste(colnames(fsoyh10_1)[xxx])]])
  fsoyh10_1[[paste(colnames(fsoyh10_1)[xxx])]] <- fsoyh10_1[[paste(colnames(fsoyh10_1)[xxx])]]/100
}
dim(fsoyh10_1)
sapply(fsoyh10_1, mode)

#Write final table to disk
write.csv(fsoyh10_1, file='soy_harvest_2010_muni.csv', row.names=FALSE)

#2009-2010 soy harvest 
View(fsoyh10_2)
fsoyh10_2 <- as.data.frame(fsoyh10_2[2:nrow(fsoyh10_2), ], stringsAsFactors = FALSE)


hefsoyh10_2 <- c('Headers', 'Noroeste', 'Norte', 'Nordeste', 'Medio_Norte', 'Oeste',
               'Centro_Sul', 'Sudeste', 'Mato_Grosso')
names(fsoyh10_2) <- hefsoyh10_2
fsoyh10_2 <- fsoyh10_2[-c(4,6), ]

#Transpose 2010 soy harvesting regions table (rows to columns, columns to rows)
fsoyh10_2 <- t(fsoyh10_2)
#Turn this transposed table into a data frame and remove headers in first row
fsoyh10_2 <- as.data.frame(fsoyh10_2[1:nrow(fsoyh10_2), ], sort= FALSE)

#Create new header names and insert them
setDT(fsoyh10_2, keep.rownames=TRUE)
colnames(fsoyh10_2)[1] <- "IMEA_Regions"
fsoyh10_2 <- fsoyh10_2[-c(1), ]
hefsoyh10_2 <- c('IMEA_Regions', 'Area_ha', '2010-04-15', '2009-04-15', 'change_in_plant_per')
names(fsoyh10_2) <- hefsoyh10_2

#change Area_ha column to numeric and remove periods from thousandths position
fsoyh10_2 <- fsoyh10_2 %>%
  mutate(Area_ha = as.numeric(gsub("\\.", "", Area_ha)))
#xxx <- 3
#colnames(fsoyh10_2)[1]

for (xxx in 3:dim(fsoyh10_2)[2]){
  fsoyh10_2[[paste(colnames(fsoyh10_2)[xxx])]] <- gsub(",", "\\.", fsoyh10_2[[paste(colnames(fsoyh10_2)[xxx])]])
  fsoyh10_2[[paste(colnames(fsoyh10_2)[xxx])]] <- gsub("%", "", fsoyh10_2[[paste(colnames(fsoyh10_2)[xxx])]])
  fsoyh10_2[[paste(colnames(fsoyh10_2)[xxx])]] <- gsub("p.p.", "", fsoyh10_2[[paste(colnames(fsoyh10_2)[xxx])]])
  fsoyh10_2[[paste(colnames(fsoyh10_2)[xxx])]] <- as.numeric(fsoyh10_2[[paste(colnames(fsoyh10_2)[xxx])]])
  fsoyh10_2[[paste(colnames(fsoyh10_2)[xxx])]] <- fsoyh10_2[[paste(colnames(fsoyh10_2)[xxx])]]/100
}
dim(fsoyh10_2)
sapply(fsoyh10_2, mode)

#Writing 2009-2010 soy harvest as a CSV file
write.csv(fsoyh10_2, file='soy_harvest_2010_region.csv', row.names=FALSE)

#2011 soy harvest - setting as data frame - 1st/2nd files municipal data
fsoyh11_1_1 <- as.data.frame(fsoyh11_1_1[2:nrow(fsoyh11_1_1), ], stringsAsFactors = FALSE)
fsoyh11_1_1$'V3' <- NULL
fsoyh11_1_1$'V2' <- NULL
hefsoyh11_1_1 <- c('Regions', '2011-01-06', '2011-01-13', '2011-01-20',
                   '2011-01-27', '2011-02-03', '2011-02-10', '2011-02-17')
names(fsoyh11_1_1) <- hefsoyh11_1_1
fsoyh11_1_1[3, "Regions"] <- "Others_Noroeste"
fsoyh11_1_1[5, "Regions"] <- "Itauba"
fsoyh11_1_1[6, "Regions"] <- "Others_Norte"
fsoyh11_1_1[9, "Regions"] <- "Querencia"
fsoyh11_1_1[10, "Regions"] <- "Gaucha_do_Norte"
fsoyh11_1_1[11, "Regions"] <- "Nova_Xavantina"
fsoyh11_1_1[12, "Regions"] <- "Others_Nordeste"
fsoyh11_1_1[13, "Regions"] <- "Medio_Norte"
fsoyh11_1_1[14, "Regions"] <- "Lucas_do_Rio_Verde"
fsoyh11_1_1[16, "Regions"] <- "Nova_Mutum"
fsoyh11_1_1[17, "Regions"] <- "Ipiranga_do_Norte"
fsoyh11_1_1[20, "Regions"] <- "Santa_Rita_do_Trivelato"
fsoyh11_1_1[21, "Regions"] <- "Nova_Ubirata"
fsoyh11_1_1[23, "Regions"] <- "Sao_Jose_do_Rio_Claro"
fsoyh11_1_1[24, "Regions"] <- "Others_Medio_Norte"
fsoyh11_1_1[27, "Regions"] <- "Campo_Novo_dos_Parecis"
fsoyh11_1_1[28, "Regions"] <- "Campos_de_Julio"
fsoyh11_1_1[29, "Regions"] <- "Others_Oeste"
fsoyh11_1_1[30, "Regions"] <- "Centro_Sul"
fsoyh11_1_1[32, "Regions"] <- "Tangara_da_Serra"
fsoyh11_1_1[33, "Regions"] <- "Santo_Antonio_do_Leveger"
fsoyh11_1_1[34, "Regions"] <- "Chapada_dos_Guimaraes"
fsoyh11_1_1[35, "Regions"] <- "Others_Centro_Sul"
fsoyh11_1_1[37, "Regions"] <- "Campo_Verde"
fsoyh11_1_1[38, "Regions"] <- "Primavera_do_Leste"
fsoyh11_1_1[39, "Regions"] <- "Alto_Garcas_e_Alto_Taquari"
fsoyh11_1_1[40, "Regions"] <- "Jaciara_e_Juscimeira"
fsoyh11_1_1[41, "Regions"] <- "Santo_Antonio_do_Leste"
fsoyh11_1_1[42, "Regions"] <- "Others_Sudeste"
fsoyh11_1_1[43, "Regions"] <- "Mato_Grosso"
#2nd file data frame and removing duplicate columns - naming remaining columns
fsoyh11_2_1 <- as.data.frame(fsoyh11_2_1[2:nrow(fsoyh11_2_1), ], stringsAsFactors = FALSE)
fsoyh11_2_1$'V4' <- NULL
fsoyh11_2_1$'V2' <- NULL
hefsoyh11_2_1 <- c('Regions', 'Area_ha', '2011-02-24', '2011-03-03', '2011-03-10', '2011-03-17',
                   '2011-03-24', '2011-03-31', '2011-04-07', '2011-04-14')
names(fsoyh11_2_1) <- hefsoyh11_2_1
fsoyh11_2_1[3, "Regions"] <- "Others_Noroeste"
fsoyh11_2_1[5, "Regions"] <- "Itauba"
fsoyh11_2_1[6, "Regions"] <- "Others_Norte"
fsoyh11_2_1[9, "Regions"] <- "Querencia"
fsoyh11_2_1[10, "Regions"] <- "Gaucha_do_Norte"
fsoyh11_2_1[11, "Regions"] <- "Nova_Xavantina"
fsoyh11_2_1[12, "Regions"] <- "Others_Nordeste"
fsoyh11_2_1[13, "Regions"] <- "Medio_Norte"
fsoyh11_2_1[14, "Regions"] <- "Lucas_do_Rio_Verde"
fsoyh11_2_1[16, "Regions"] <- "Nova_Mutum"
fsoyh11_2_1[17, "Regions"] <- "Ipiranga_do_Norte"
fsoyh11_2_1[20, "Regions"] <- "Santa_Rita_do_Trivelato"
fsoyh11_2_1[21, "Regions"] <- "Nova_Ubirata"
fsoyh11_2_1[23, "Regions"] <- "Sao_Jose_do_Rio_Claro"
fsoyh11_2_1[24, "Regions"] <- "Others_Medio_Norte"
fsoyh11_2_1[27, "Regions"] <- "Campo_Novo_dos_Parecis"
fsoyh11_2_1[28, "Regions"] <- "Campos_de_Julio"
fsoyh11_2_1[29, "Regions"] <- "Others_Oeste"
fsoyh11_2_1[30, "Regions"] <- "Centro_Sul"
fsoyh11_2_1[32, "Regions"] <- "Tangara_da_Serra"
fsoyh11_2_1[33, "Regions"] <- "Santo_Antonio_do_Leveger"
fsoyh11_2_1[34, "Regions"] <- "Chapada_dos_Guimaraes"
fsoyh11_2_1[35, "Regions"] <- "Others_Centro_Sul"
fsoyh11_2_1[37, "Regions"] <- "Campo_Verde"
fsoyh11_2_1[38, "Regions"] <- "Primavera_do_Leste"
fsoyh11_2_1[39, "Regions"] <- "Alto_Garcas_e_Alto_Taquari"
fsoyh11_2_1[40, "Regions"] <- "Jaciara_e_Juscimeira"
fsoyh11_2_1[41, "Regions"] <- "Santo_Antonio_do_Leste"
fsoyh11_2_1[42, "Regions"] <- "Others_Sudeste"
fsoyh11_2_1[43, "Regions"] <- "Mato_Grosso"
#Merging first and second files for municipal level data
fsoyh11_muni <- merge(fsoyh11_1_1, fsoyh11_2_1, by="Regions", sort = FALSE)
View(fsoyh11_muni)
fsoyh11_muni <- fsoyh11_muni[c(1,9,2:8,10:17)]
#Remove periods and spaces from decimal/thousands positions and convert Area_ha to numeric
fsoyh11_muni$Area_ha <- gsub("\\.", "", fsoyh11_muni$Area_ha)
fsoyh11_muni$Area_ha <- gsub(" ", "", fsoyh11_muni$Area_ha)
fsoyh11_muni <- fsoyh11_muni %>%
  mutate(Area_ha = as.numeric(Area_ha))

#xxx <- 3
#colnames(fsoyh11_muni)[1]

for (xxx in 3:dim(fsoyh11_muni)[2]){
  fsoyh11_muni[[paste(colnames(fsoyh11_muni)[xxx])]] <- gsub(",", "\\.", fsoyh11_muni[[paste(colnames(fsoyh11_muni)[xxx])]])
  fsoyh11_muni[[paste(colnames(fsoyh11_muni)[xxx])]] <- gsub("%", "", fsoyh11_muni[[paste(colnames(fsoyh11_muni)[xxx])]])
  fsoyh11_muni[[paste(colnames(fsoyh11_muni)[xxx])]] <- as.numeric(fsoyh11_muni[[paste(colnames(fsoyh11_muni)[xxx])]])
  fsoyh11_muni[[paste(colnames(fsoyh11_muni)[xxx])]] <- fsoyh11_muni[[paste(colnames(fsoyh11_muni)[xxx])]]/100
}
dim(fsoyh11_muni)

#changing to numeric
sapply(fsoyh11_muni, mode)
View(fsoyh11_muni)
#Write final table to disk
write.csv(fsoyh11_muni, file='soy_harvest_2011_muni.csv', row.names=FALSE)

#2011 soy harvesting - isolating regional summary table by removing unnecessary rows from 2nd file
View(fsoyh11_1_2)
View(fsoyh11_2_2)
fsoyh11_1_2 <- as.data.frame(fsoyh11_1_2[2:nrow(fsoyh11_1_2), ], stringsAsFactors = FALSE)
fsoyh11_2_2 <- as.data.frame(fsoyh11_2_2[2:nrow(fsoyh11_2_2), ], stringsAsFactors = FALSE)
fsoyh11_1_2 <- fsoyh11_1_2[-c(4,6), ]
fsoyh11_2_2 <- fsoyh11_2_2[-c(4,6), ]
hefsoyh11_1_2 <- c('Headers', 'Noroeste', 'Norte', 'Nordeste', 'Medio_Norte', 'Oeste',
                   'Centro_Sul', 'Sudeste', 'Mato_Grosso')
names(fsoyh11_1_2) <- hefsoyh11_1_2
hefsoyh11_2_2 <- c('Headers', 'Noroeste', 'Norte', 'Nordeste', 'Medio_Norte', 'Oeste',
                   'Centro_Sul', 'Sudeste', 'Mato_Grosso')
names(fsoyh11_2_2) <- hefsoyh11_2_2
#Transpose 2011 soy harvesting regions table (rows to columns, columns to rows)
fsoyh11_1_2 <- t(fsoyh11_1_2)
fsoyh11_2_2 <- t(fsoyh11_2_2)
#Turn this transposed table into a data frame and remove headers in first row
fsoyh11_1_2 <- as.data.frame(fsoyh11_1_2[1:nrow(fsoyh11_1_2), ], sort= FALSE)
fsoyh11_2_2 <- as.data.frame(fsoyh11_2_2[1:nrow(fsoyh11_2_2), ], sort= FALSE)

setDT(fsoyh11_1_2, keep.rownames=TRUE)
colnames(fsoyh11_1_2)[1] <- "IMEA_Regions"

setDT(fsoyh11_2_2, keep.rownames=TRUE)
colnames(fsoyh11_2_2)[1] <- "IMEA_Regions"

fsoyh11_1_2 <- fsoyh11_1_2[-c(1), ]
fsoyh11_2_2 <- fsoyh11_2_2[-c(1), ]

#Create new header names and insert them
hefsoyh11_1_2 <- c('IMEA_Regions', 'Area_ha', '2011-02-17', '2010-02-18', 'change_in_plant_per')
names(fsoyh11_1_2) <- hefsoyh11_1_2
hefsoyh11_2_2 <- c('IMEA_Regions', 'Area_ha', '2011-04-14', '2010-04-15', 'change_in_plant_per')
names(fsoyh11_2_2) <- hefsoyh11_2_2
# Merging two versions
fsoyh11reg <- merge(fsoyh11_1_2, fsoyh11_2_2, by="IMEA_Regions", sort=FALSE)
fsoyh11reg <- fsoyh11reg[, -c(5,2)]
fsoyh11reg <- fsoyh11reg[,c(1,4,2:3,5:7)]
#Rename column 1 as "IMEA_Regions" 
colnames(fsoyh11reg)[2] <- "Area_ha"
colnames(fsoyh11reg)[7] <- "change_in_plant_per"
#change Area_ha column to numeric and remove periods from thousandths position
fsoyh11reg <- fsoyh11reg %>%
  mutate(Area_ha = as.numeric(gsub("\\.", "", Area_ha)))
#xxx <- 3
#colnames(fsoyh11reg)[1]

for (xxx in 3:dim(fsoyh11reg)[2]){
  fsoyh11reg[[paste(colnames(fsoyh11reg)[xxx])]] <- gsub(",", "\\.", fsoyh11reg[[paste(colnames(fsoyh11reg)[xxx])]])
  fsoyh11reg[[paste(colnames(fsoyh11reg)[xxx])]] <- gsub("%", "", fsoyh11reg[[paste(colnames(fsoyh11reg)[xxx])]])
  fsoyh11reg[[paste(colnames(fsoyh11reg)[xxx])]] <- gsub("p.p.", "", fsoyh11reg[[paste(colnames(fsoyh11reg)[xxx])]])
  fsoyh11reg[[paste(colnames(fsoyh11reg)[xxx])]] <- as.numeric(fsoyh11reg[[paste(colnames(fsoyh11reg)[xxx])]])
  fsoyh11reg[[paste(colnames(fsoyh11reg)[xxx])]] <- fsoyh11reg[[paste(colnames(fsoyh11reg)[xxx])]]/100
}
dim(fsoyh11reg)
sapply(fsoyh11reg, mode)
#Write final table to disk
write.csv(fsoyh11reg, file='soy_harvest_2011_region.csv', row.names=FALSE)





#2012 soy harvest - setting as data frame - 1st/2nd files municipal data
fsoyh12_1_1 <- as.data.frame(fsoyh12_1_1[2:nrow(fsoyh12_1_1), ], stringsAsFactors = FALSE)
fsoyh12_1_1$'V2' <- NULL
hefsoyh12_1_1 <- c('Regions', 'Area_ha', '2012-01-05', '2012-01-12', '2012-01-19', '2012-01-26',
                   '2012-02-02', '2012-02-09', '2012-02-16', '2012-02-23', '2012-03-01',
                   '2012-03-09', '2012-03-16', '2012-03-23', '2012-03-30', '2012-04-06')
names(fsoyh12_1_1) <- hefsoyh12_1_1
fsoyh12_1_1[3, "Regions"] <- "Others_Noroeste"
fsoyh12_1_1[5, "Regions"] <- "Itauba"
fsoyh12_1_1[6, "Regions"] <- "Others_Norte"
fsoyh12_1_1[9, "Regions"] <- "Querencia"
fsoyh12_1_1[10, "Regions"] <- "Gaucha_do_Norte"
fsoyh12_1_1[11, "Regions"] <- "Nova_Xavantina"
fsoyh12_1_1[12, "Regions"] <- "Others_Nordeste"
fsoyh12_1_1[13, "Regions"] <- "Medio_Norte"
fsoyh12_1_1[14, "Regions"] <- "Lucas_do_Rio_Verde"
fsoyh12_1_1[16, "Regions"] <- "Nova_Mutum"
fsoyh12_1_1[17, "Regions"] <- "Ipiranga_do_Norte"
fsoyh12_1_1[20, "Regions"] <- "Santa_Rita_do_Trivelato"
fsoyh12_1_1[21, "Regions"] <- "Nova_Ubirata"
fsoyh12_1_1[23, "Regions"] <- "Sao_Jose_do_Rio_Claro"
fsoyh12_1_1[24, "Regions"] <- "Others_Medio_Norte"
fsoyh12_1_1[27, "Regions"] <- "Campo_Novo_dos_Parecis"
fsoyh12_1_1[28, "Regions"] <- "Campos_de_Julio"
fsoyh12_1_1[29, "Regions"] <- "Others_Oeste"
fsoyh12_1_1[30, "Regions"] <- "Centro_Sul"
fsoyh12_1_1[32, "Regions"] <- "Tangara_da_Serra"
fsoyh12_1_1[33, "Regions"] <- "Santo_Antonio_do_Leveger"
fsoyh12_1_1[34, "Regions"] <- "Chapada_dos_Guimaraes"
fsoyh12_1_1[35, "Regions"] <- "Others_Centro_Sul"
fsoyh12_1_1[37, "Regions"] <- "Campo_Verde"
fsoyh12_1_1[38, "Regions"] <- "Primavera_do_Leste"
fsoyh12_1_1[39, "Regions"] <- "Alto_Garcas_e_Alto_Taquari"
fsoyh12_1_1[40, "Regions"] <- "Jaciara_e_Juscimeira"
fsoyh12_1_1[41, "Regions"] <- "Santo_Antonio_do_Leste"
fsoyh12_1_1[42, "Regions"] <- "Others_Sudeste"
fsoyh12_1_1[43, "Regions"] <- "Mato_Grosso"
#2nd file data frame and removing duplicate columns - naming remaining columns
fsoyh12_2_1 <- as.data.frame(fsoyh12_2_1[2:nrow(fsoyh12_2_1), ], stringsAsFactors = FALSE)
fsoyh12_2_1$'V12' <- NULL
fsoyh12_2_1$'V11' <- NULL
fsoyh12_2_1$'V10' <- NULL
fsoyh12_2_1$'V9' <- NULL
fsoyh12_2_1$'V8' <- NULL
fsoyh12_2_1$'V7' <- NULL
fsoyh12_2_1$'V6' <- NULL
fsoyh12_2_1$'V5' <- NULL
fsoyh12_2_1$'V4' <- NULL
fsoyh12_2_1$'V3' <- NULL
fsoyh12_2_1$'V2' <- NULL
hefsoyh12_2_1 <- c('Regions', '2012-04-13')
names(fsoyh12_2_1) <- hefsoyh12_2_1
fsoyh12_2_1[3, "Regions"] <- "Others_Noroeste"
fsoyh12_2_1[5, "Regions"] <- "Itauba"
fsoyh12_2_1[6, "Regions"] <- "Others_Norte"
fsoyh12_2_1[9, "Regions"] <- "Querencia"
fsoyh12_2_1[10, "Regions"] <- "Gaucha_do_Norte"
fsoyh12_2_1[11, "Regions"] <- "Nova_Xavantina"
fsoyh12_2_1[12, "Regions"] <- "Others_Nordeste"
fsoyh12_2_1[13, "Regions"] <- "Medio_Norte"
fsoyh12_2_1[14, "Regions"] <- "Lucas_do_Rio_Verde"
fsoyh12_2_1[16, "Regions"] <- "Nova_Mutum"
fsoyh12_2_1[17, "Regions"] <- "Ipiranga_do_Norte"
fsoyh12_2_1[20, "Regions"] <- "Santa_Rita_do_Trivelato"
fsoyh12_2_1[21, "Regions"] <- "Nova_Ubirata"
fsoyh12_2_1[23, "Regions"] <- "Sao_Jose_do_Rio_Claro"
fsoyh12_2_1[24, "Regions"] <- "Others_Medio_Norte"
fsoyh12_2_1[27, "Regions"] <- "Campo_Novo_dos_Parecis"
fsoyh12_2_1[28, "Regions"] <- "Campos_de_Julio"
fsoyh12_2_1[29, "Regions"] <- "Others_Oeste"
fsoyh12_2_1[30, "Regions"] <- "Centro_Sul"
fsoyh12_2_1[32, "Regions"] <- "Tangara_da_Serra"
fsoyh12_2_1[33, "Regions"] <- "Santo_Antonio_do_Leveger"
fsoyh12_2_1[34, "Regions"] <- "Chapada_dos_Guimaraes"
fsoyh12_2_1[35, "Regions"] <- "Others_Centro_Sul"
fsoyh12_2_1[37, "Regions"] <- "Campo_Verde"
fsoyh12_2_1[38, "Regions"] <- "Primavera_do_Leste"
fsoyh12_2_1[39, "Regions"] <- "Alto_Garcas_e_Alto_Taquari"
fsoyh12_2_1[40, "Regions"] <- "Jaciara_e_Juscimeira"
fsoyh12_2_1[41, "Regions"] <- "Santo_Antonio_do_Leste"
fsoyh12_2_1[42, "Regions"] <- "Others_Sudeste"
fsoyh12_2_1[43, "Regions"] <- "Mato_Grosso"
#Merging first and second files for municipal level data
fsoyh12_muni <- merge(fsoyh12_1_1, fsoyh12_2_1, by="Regions", sort = FALSE)
View(fsoyh12_muni)
#Remove periods and spaces from decimal/thousands positions and convert Area_ha to numeric
fsoyh12_muni$Area_ha <- gsub("\\.", "", fsoyh12_muni$Area_ha)
fsoyh12_muni$Area_ha <- gsub(" ", "", fsoyh12_muni$Area_ha)
fsoyh12_muni <- fsoyh12_muni %>%
  mutate(Area_ha = as.numeric(Area_ha))

#xxx <- 3
#colnames(fsoyh12_muni)[1]

for (xxx in 3:dim(fsoyh12_muni)[2]){
  fsoyh12_muni[[paste(colnames(fsoyh12_muni)[xxx])]] <- gsub(",", "\\.", fsoyh12_muni[[paste(colnames(fsoyh12_muni)[xxx])]])
  fsoyh12_muni[[paste(colnames(fsoyh12_muni)[xxx])]] <- gsub("%", "", fsoyh12_muni[[paste(colnames(fsoyh12_muni)[xxx])]])
  fsoyh12_muni[[paste(colnames(fsoyh12_muni)[xxx])]] <- as.numeric(fsoyh12_muni[[paste(colnames(fsoyh12_muni)[xxx])]])
  fsoyh12_muni[[paste(colnames(fsoyh12_muni)[xxx])]] <- fsoyh12_muni[[paste(colnames(fsoyh12_muni)[xxx])]]/100
}
dim(fsoyh12_muni)

#changing to numeric
sapply(fsoyh12_muni, mode)
View(fsoyh12_muni)
#Write final table to disk
write.csv(fsoyh12_muni, file='soy_harvest_2012_muni.csv', row.names=FALSE)

#2012 soy harvesting - isolating regional summary table by removing unnecessary rows from 2nd file
View(fsoyh12_2_2)
fsoyh12_2_2 <- as.data.frame(fsoyh12_2_2[5:nrow(fsoyh12_2_2), ], stringsAsFactors = FALSE)

fsoyh12_2_2$'V12' <- NULL
fsoyh12_2_2$'V11' <- NULL
fsoyh12_2_2$'V10' <- NULL
fsoyh12_2_2$'V6' <- NULL

fsoyh12_2_2 <- fsoyh12_2_2[-c(18,20), ]
hefsoyh12_2_2 <- c('Noroeste', 'Norte', 'Nordeste', 'Medio_Norte', 'Oeste',
                   'Centro_Sul', 'Sudeste', 'Mato_Grosso')
names(fsoyh12_2_2) <- hefsoyh12_2_2

fsoyh12_2_2[1, "Noroeste"] <- "340.000"
fsoyh12_2_2[2, "Noroeste"] <- "0,0%"
fsoyh12_2_2[3, "Noroeste"] <- "0,0%"
fsoyh12_2_2[4, "Noroeste"] <- "0,5%"
fsoyh12_2_2[5, "Noroeste"] <- "1,5"
fsoyh12_2_2[6, "Noroeste"] <- "8,0%"
fsoyh12_2_2[7, "Noroeste"] <- "20,0%"
fsoyh12_2_2[8, "Noroeste"] <- "31,5%"
fsoyh12_2_2[9, "Noroeste"] <- "43,6"
fsoyh12_2_2[10, "Noroeste"] <- "53,6%"
fsoyh12_2_2[11, "Noroeste"] <- "73,6%"
fsoyh12_2_2[12, "Noroeste"] <- "82,2%"
fsoyh12_2_2[13, "Noroeste"] <- "92,2%"
fsoyh12_2_2[14, "Noroeste"] <- "96,6%"
fsoyh12_2_2[15, "Noroeste"] <- "100,0%"
fsoyh12_2_2[16, "Noroeste"] <- "100,0%"
fsoyh12_2_2[17, "Noroeste"] <- "100,0%"
fsoyh12_2_2[18, "Noroeste"] <- "0,0 p.p.%"


#Transpose 2011 soy harvesting regions table (rows to columns, columns to rows)
fsoyh12_2_2 <- t(fsoyh12_2_2)
#Turn this transposed table into a data frame and remove headers in first row

fsoyh12_2_2 <- as.data.frame(fsoyh12_2_2[1:nrow(fsoyh12_2_2), ], sort= FALSE)

setDT(fsoyh12_2_2, keep.rownames=TRUE)
colnames(fsoyh12_2_2)[1] <- "IMEA_Regions"


#Create new header names and insert them
hefsoyh12_2_2 <- c('IMEA_Regions', 'Area_ha', '2012-01-05', '2012-01-12','2012-01-19', 
                   '2012-01-26', '2012-02-02', '2012-02-09', '2012-02-16', '2012-02-23', '2012-03-01',
                   '2012-03-08', '2012-03-15', '2012-03-22', '2012-03-29', '2012-04-05',
                   '2012-04-12', '2011-04-07', 'change_in_plant_per')
names(fsoyh12_2_2) <- hefsoyh12_2_2


#change Area_ha column to numeric and remove periods from thousandths position
fsoyh12_2_2 <- fsoyh12_2_2 %>%
  mutate(Area_ha = as.numeric(gsub("\\.", "", Area_ha)))
#xxx <- 3
#colnames(fsoyh12_2_2)[1]

for (xxx in 3:dim(fsoyh12_2_2)[2]){
  fsoyh12_2_2[[paste(colnames(fsoyh12_2_2)[xxx])]] <- gsub(",", "\\.", fsoyh12_2_2[[paste(colnames(fsoyh12_2_2)[xxx])]])
  fsoyh12_2_2[[paste(colnames(fsoyh12_2_2)[xxx])]] <- gsub("%", "", fsoyh12_2_2[[paste(colnames(fsoyh12_2_2)[xxx])]])
  fsoyh12_2_2[[paste(colnames(fsoyh12_2_2)[xxx])]] <- gsub("p.p.", "", fsoyh12_2_2[[paste(colnames(fsoyh12_2_2)[xxx])]])
  fsoyh12_2_2[[paste(colnames(fsoyh12_2_2)[xxx])]] <- as.numeric(fsoyh12_2_2[[paste(colnames(fsoyh12_2_2)[xxx])]])
  fsoyh12_2_2[[paste(colnames(fsoyh12_2_2)[xxx])]] <- fsoyh12_2_2[[paste(colnames(fsoyh12_2_2)[xxx])]]/100
}
dim(fsoyh12_2_2)
sapply(fsoyh12_2_2, mode)
#Write final table to disk
write.csv(fsoyh12_2_2, file='soy_harvest_2012_region.csv', row.names=FALSE)






#2013 soy harvest - setting as data frame - 1st/2nd files municipal data
fsoyh13_1 <- as.data.frame(fsoyh13_1[2:nrow(fsoyh13_1), ], stringsAsFactors = FALSE)
fsoyh13_1$'V7' <- NULL
fsoyh13_1 <- fsoyh13_1[-c(44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57,
                          58, 59, 60, 61, 62, 63, 64, 65, 66, 67), ]
hefsoyh13_1 <- c('Regions', 'Area_ha', '2013-01-10', '2013-01-17', '2013-01-24', '2013-01-31',
                   '2013-02-07', '2013-02-14', '2013-02-21', '2013-02-28', '2013-03-07',
                   '2013-03-14', '2013-03-21', '2013-03-28', '2013-04-04', '2013-04-11',
                 '2013-04-18')
names(fsoyh13_1) <- hefsoyh13_1
fsoyh13_1[3, "Regions"] <- "Others_Noroeste"
fsoyh13_1[5, "Regions"] <- "Itauba"
fsoyh13_1[6, "Regions"] <- "Others_Norte"
fsoyh13_1[9, "Regions"] <- "Querencia"
fsoyh13_1[10, "Regions"] <- "Gaucha_do_Norte"
fsoyh13_1[11, "Regions"] <- "Nova_Xavantina"
fsoyh13_1[12, "Regions"] <- "Others_Nordeste"
fsoyh13_1[13, "Regions"] <- "Medio_Norte"
fsoyh13_1[14, "Regions"] <- "Lucas_do_Rio_Verde"
fsoyh13_1[16, "Regions"] <- "Nova_Mutum"
fsoyh13_1[17, "Regions"] <- "Ipiranga_do_Norte"
fsoyh13_1[20, "Regions"] <- "Santa_Rita_do_Trivelato"
fsoyh13_1[21, "Regions"] <- "Nova_Ubirata"
fsoyh13_1[23, "Regions"] <- "Sao_Jose_do_Rio_Claro"
fsoyh13_1[24, "Regions"] <- "Others_Medio_Norte"
fsoyh13_1[27, "Regions"] <- "Campo_Novo_dos_Parecis"
fsoyh13_1[28, "Regions"] <- "Campos_de_Julio"
fsoyh13_1[29, "Regions"] <- "Others_Oeste"
fsoyh13_1[30, "Regions"] <- "Centro_Sul"
fsoyh13_1[32, "Regions"] <- "Tangara_da_Serra"
fsoyh13_1[33, "Regions"] <- "Santo_Antonio_do_Leveger"
fsoyh13_1[34, "Regions"] <- "Chapada_dos_Guimaraes"
fsoyh13_1[35, "Regions"] <- "Others_Centro_Sul"
fsoyh13_1[37, "Regions"] <- "Campo_Verde"
fsoyh13_1[38, "Regions"] <- "Primavera_do_Leste"
fsoyh13_1[39, "Regions"] <- "Alto_Garcas_e_Alto_Taquari"
fsoyh13_1[40, "Regions"] <- "Jaciara_e_Juscimeira"
fsoyh13_1[41, "Regions"] <- "Santo_Antonio_do_Leste"
fsoyh13_1[42, "Regions"] <- "Others_Sudeste"
fsoyh13_1[43, "Regions"] <- "Mato_Grosso"
#Remove periods and spaces from decimal/thousands positions and convert Area_ha to numeric
fsoyh13_1$Area_ha <- gsub("\\.", "", fsoyh13_1$Area_ha)
fsoyh13_1$Area_ha <- gsub(" ", "", fsoyh13_1$Area_ha)
fsoyh13_1 <- fsoyh13_1 %>%
  mutate(Area_ha = as.numeric(Area_ha))

#xxx <- 3
#colnames(fsoyh13_1)[1]

for (xxx in 3:dim(fsoyh13_1)[2]){
  fsoyh13_1[[paste(colnames(fsoyh13_1)[xxx])]] <- gsub(",", "\\.", fsoyh13_1[[paste(colnames(fsoyh13_1)[xxx])]])
  fsoyh13_1[[paste(colnames(fsoyh13_1)[xxx])]] <- gsub("%", "", fsoyh13_1[[paste(colnames(fsoyh13_1)[xxx])]])
  fsoyh13_1[[paste(colnames(fsoyh13_1)[xxx])]] <- as.numeric(fsoyh13_1[[paste(colnames(fsoyh13_1)[xxx])]])
  fsoyh13_1[[paste(colnames(fsoyh13_1)[xxx])]] <- fsoyh13_1[[paste(colnames(fsoyh13_1)[xxx])]]/100
}
dim(fsoyh13_1)

#changing to numeric
sapply(fsoyh13_1, mode)
View(fsoyh13_1)
#Write final table to disk
write.csv(fsoyh13_1, file='soy_harvest_2013_muni.csv', row.names=FALSE)

#2013 soy harvesting - isolating regional summary table by removing unnecessary rows from 2nd file
fsoyh13_1 <- do.call(rbind, outsoyh13)
View(fsoyh13_1)
fsoyh13_1 <- as.data.frame(fsoyh13_1[48:nrow(fsoyh13_1), ], stringsAsFactors = FALSE)

fsoyh13_1$'V18' <- NULL
fsoyh13_1$'V17' <- NULL
fsoyh13_1$'V16' <- NULL
fsoyh13_1$'V15' <- NULL
fsoyh13_1$'V14' <- NULL
fsoyh13_1$'V13' <- NULL
fsoyh13_1$'V12' <- NULL
fsoyh13_1$'V11' <- NULL
fsoyh13_1$'V7' <- NULL
fsoyh13_1$'V1' <- NULL

fsoyh13_1 <- fsoyh13_1[-c(19,21), ]
hefsoyh13_1 <- c('Noroeste', 'Norte', 'Nordeste', 'Medio_Norte', 'Oeste',
                   'Centro_Sul', 'Sudeste', 'Mato_Grosso')
names(fsoyh13_1) <- hefsoyh13_1

fsoyh13_1[1, "Noroeste"] <- "415.480"
fsoyh13_1[2, "Noroeste"] <- "49,0"
fsoyh13_1[3, "Noroeste"] <- "0,0%"
fsoyh13_1[4, "Noroeste"] <- "0,5%"
fsoyh13_1[5, "Noroeste"] <- "4,0%"
fsoyh13_1[6, "Noroeste"] <- "10,0%"
fsoyh13_1[7, "Noroeste"] <- "13,0%"
fsoyh13_1[8, "Noroeste"] <- "22,0%"
fsoyh13_1[9, "Noroeste"] <- "30,0%"
fsoyh13_1[10, "Noroeste"] <- "42,0%"
fsoyh13_1[11, "Noroeste"] <- "58,0%"
fsoyh13_1[12, "Noroeste"] <- "78,0%"
fsoyh13_1[13, "Noroeste"] <- "91,0%"
fsoyh13_1[14, "Noroeste"] <- "97,0%"
fsoyh13_1[15, "Noroeste"] <- "99,0%"
fsoyh13_1[16, "Noroeste"] <- "100,0%"
fsoyh13_1[17, "Noroeste"] <- "100,0%"
fsoyh13_1[18, "Noroeste"] <- "100,0%"
fsoyh13_1[19, "Noroeste"] <- "0,0 p.p.%"


#Transpose 2013 soy harvesting regions table (rows to columns, columns to rows)
fsoyh13_1 <- t(fsoyh13_1)
#Turn this transposed table into a data frame and remove headers in first row

fsoyh13_1 <- as.data.frame(fsoyh13_1[1:nrow(fsoyh13_1), ], sort= FALSE)

setDT(fsoyh13_1, keep.rownames=TRUE)
colnames(fsoyh13_1)[1] <- "IMEA_Regions"


#Create new header names and insert them
hefsoyh13_1 <- c('IMEA_Regions', 'Area_ha', 'Partial_prod_sc_ha', '2013-01-10', '2013-01-17','2013-01-24', 
                   '2013-01-31', '2013-02-07', '2013-02-14', '2013-02-21', '2013-02-28', '2013-03-07',
                   '2013-03-14', '2013-03-21', '2013-03-28', '2013-04-04', '2013-04-11',
                   '2013-04-18', '2012-04-12', 'change_in_plant_per')
names(fsoyh13_1) <- hefsoyh13_1


#change Area_ha column to numeric and remove periods from thousandths position
fsoyh13_1 <- fsoyh13_1 %>%
  mutate(Area_ha = as.numeric(gsub("\\.", "", Area_ha)))
fsoyh13_1 <- fsoyh13_1 %>%
  mutate(Partial_prod_sc_ha = as.numeric(gsub(",", "\\.", Partial_prod_sc_ha)))

#xxx <- 3
#colnames(fsoyh13_1)[1]

for (xxx in 4:dim(fsoyh13_1)[2]){
  fsoyh13_1[[paste(colnames(fsoyh13_1)[xxx])]] <- gsub(",", "\\.", fsoyh13_1[[paste(colnames(fsoyh13_1)[xxx])]])
  fsoyh13_1[[paste(colnames(fsoyh13_1)[xxx])]] <- gsub("%", "", fsoyh13_1[[paste(colnames(fsoyh13_1)[xxx])]])
  fsoyh13_1[[paste(colnames(fsoyh13_1)[xxx])]] <- gsub("p.p.", "", fsoyh13_1[[paste(colnames(fsoyh13_1)[xxx])]])
  fsoyh13_1[[paste(colnames(fsoyh13_1)[xxx])]] <- as.numeric(fsoyh13_1[[paste(colnames(fsoyh13_1)[xxx])]])
  fsoyh13_1[[paste(colnames(fsoyh13_1)[xxx])]] <- fsoyh13_1[[paste(colnames(fsoyh13_1)[xxx])]]/100
}
dim(fsoyh13_1)
sapply(fsoyh13_1, mode)
#Write final table to disk
write.csv(fsoyh13_1, file='soy_harvest_2013_region.csv', row.names=FALSE)




#2013-2014 soy harvest - setting as data frame - 1st/2nd files municipal data
fsoyh14_1 <- as.data.frame(fsoyh14_1[2:nrow(fsoyh14_1), ], stringsAsFactors = FALSE)
fsoyh14_1$'V2' <- NULL
hefsoyh14_1 <- c('Regions', 'Area_ha', '2014-01-09', '2014-01-16', '2014-01-23', '2014-01-30',
                 '2014-02-06', '2014-02-13', '2014-02-20', '2014-02-27', '2014-03-06',
                 '2014-03-13', '2014-03-20', '2014-03-27', '2014-04-03', '2014-04-10',
                 '2014-04-17')
names(fsoyh14_1) <- hefsoyh14_1
fsoyh14_1[3, "Regions"] <- "Others_Noroeste"
fsoyh14_1[5, "Regions"] <- "Itauba"
fsoyh14_1[6, "Regions"] <- "Others_Norte"
fsoyh14_1[9, "Regions"] <- "Querencia"
fsoyh14_1[10, "Regions"] <- "Gaucha_do_Norte"
fsoyh14_1[11, "Regions"] <- "Nova_Xavantina"
fsoyh14_1[12, "Regions"] <- "Others_Nordeste"
fsoyh14_1[13, "Regions"] <- "Medio_Norte"
fsoyh14_1[14, "Regions"] <- "Lucas_do_Rio_Verde"
fsoyh14_1[16, "Regions"] <- "Nova_Mutum"
fsoyh14_1[17, "Regions"] <- "Ipiranga_do_Norte"
fsoyh14_1[20, "Regions"] <- "Santa_Rita_do_Trivelato"
fsoyh14_1[21, "Regions"] <- "Nova_Ubirata"
fsoyh14_1[23, "Regions"] <- "Sao_Jose_do_Rio_Claro"
fsoyh14_1[24, "Regions"] <- "Others_Medio_Norte"
fsoyh14_1[27, "Regions"] <- "Campo_Novo_dos_Parecis"
fsoyh14_1[28, "Regions"] <- "Campos_de_Julio"
fsoyh14_1[29, "Regions"] <- "Others_Oeste"
fsoyh14_1[30, "Regions"] <- "Centro_Sul"
fsoyh14_1[32, "Regions"] <- "Tangara_da_Serra"
fsoyh14_1[33, "Regions"] <- "Santo_Antonio_do_Leveger"
fsoyh14_1[34, "Regions"] <- "Chapada_dos_Guimaraes"
fsoyh14_1[35, "Regions"] <- "Others_Centro_Sul"
fsoyh14_1[37, "Regions"] <- "Campo_Verde"
fsoyh14_1[38, "Regions"] <- "Primavera_do_Leste"
fsoyh14_1[39, "Regions"] <- "Alto_Garcas_e_Alto_Taquari"
fsoyh14_1[40, "Regions"] <- "Jaciara_e_Juscimeira"
fsoyh14_1[41, "Regions"] <- "Santo_Antonio_do_Leste"
fsoyh14_1[42, "Regions"] <- "Others_Sudeste"
fsoyh14_1[43, "Regions"] <- "Mato_Grosso"
#Remove periods and spaces from decimal/thousands positions and convert Area_ha to numeric
fsoyh14_1$Area_ha <- gsub("\\.", "", fsoyh14_1$Area_ha)
fsoyh14_1$Area_ha <- gsub(" ", "", fsoyh14_1$Area_ha)
fsoyh14_1 <- fsoyh14_1 %>%
  mutate(Area_ha = as.numeric(Area_ha))

#xxx <- 3
#colnames(fsoyh14_1)[1]

for (xxx in 3:dim(fsoyh14_1)[2]){
  fsoyh14_1[[paste(colnames(fsoyh14_1)[xxx])]] <- gsub(",", "\\.", fsoyh14_1[[paste(colnames(fsoyh14_1)[xxx])]])
  fsoyh14_1[[paste(colnames(fsoyh14_1)[xxx])]] <- gsub("%", "", fsoyh14_1[[paste(colnames(fsoyh14_1)[xxx])]])
  fsoyh14_1[[paste(colnames(fsoyh14_1)[xxx])]] <- as.numeric(fsoyh14_1[[paste(colnames(fsoyh14_1)[xxx])]])
  fsoyh14_1[[paste(colnames(fsoyh14_1)[xxx])]] <- fsoyh14_1[[paste(colnames(fsoyh14_1)[xxx])]]/100
}
dim(fsoyh14_1)

#changing to numeric
sapply(fsoyh14_1, mode)
View(fsoyh14_1)
#Write final table to disk
write.csv(fsoyh14_1, file='soy_harvest_2014_muni.csv', row.names=FALSE)

#2013-2014 soy harvesting -regional table
fsoyh14_2 <- do.call(rbind, outsoyh14[2])
View(fsoyh14_2)
fsoyh14_2 <- as.data.frame(fsoyh14_2[5:nrow(fsoyh14_2), ], stringsAsFactors = FALSE)

fsoyh14_2$'V17' <- NULL
fsoyh14_2$'V16' <- NULL
fsoyh14_2$'V15' <- NULL
fsoyh14_2$'V14' <- NULL
fsoyh14_2$'V13' <- NULL
fsoyh14_2$'V12' <- NULL
fsoyh14_2$'V11' <- NULL
fsoyh14_2$'V10' <- NULL
fsoyh14_2$'V6' <- NULL

hefsoyh14_2 <- c('Noroeste', 'Norte', 'Nordeste', 'Medio_Norte', 'Oeste',
                 'Centro_Sul', 'Sudeste', 'Mato_Grosso')
names(fsoyh14_2) <- hefsoyh14_2

fsoyh14_2 <- fsoyh14_2[-c(19,21), ]

fsoyh14_2[1, "Noroeste"] <- "535.051"
fsoyh14_2[2, "Noroeste"] <- "52,2"
fsoyh14_2[3, "Noroeste"] <- "0,0%"
fsoyh14_2[4, "Noroeste"] <- "1,4%"
fsoyh14_2[5, "Noroeste"] <- "2,8%"
fsoyh14_2[6, "Noroeste"] <- "11,2%"
fsoyh14_2[7, "Noroeste"] <- "19,4%"
fsoyh14_2[8, "Noroeste"] <- "35,0%"
fsoyh14_2[9, "Noroeste"] <- "55,6%"
fsoyh14_2[10, "Noroeste"] <- "65,0%"
fsoyh14_2[11, "Noroeste"] <- "70,0%"
fsoyh14_2[12, "Noroeste"] <- "77,0%"
fsoyh14_2[13, "Noroeste"] <- "90,0%"
fsoyh14_2[14, "Noroeste"] <- "96,0%"
fsoyh14_2[15, "Noroeste"] <- "98,0%"
fsoyh14_2[16, "Noroeste"] <- "100,0%"
fsoyh14_2[17, "Noroeste"] <- "100,0%"
fsoyh14_2[18, "Noroeste"] <- "100,0%"
fsoyh14_2[19, "Noroeste"] <- "0,0 p.p.%"


#Transpose 2014 soy harvesting regions table (rows to columns, columns to rows)
fsoyh14_2 <- t(fsoyh14_2)
#Turn this transposed table into a data frame and remove headers in first row

fsoyh14_2 <- as.data.frame(fsoyh14_2[1:nrow(fsoyh14_2), ], sort= FALSE)

setDT(fsoyh14_2, keep.rownames=TRUE)
colnames(fsoyh14_2)[1] <- "IMEA_Regions"


#Create new header names and insert them
hefsoyh14_2 <- c('IMEA_Regions', 'Area_ha', 'Partial_prod_sc_ha', '2014-01-09', '2014-01-16', '2014-01-23', '2014-01-30',
                 '2014-02-06', '2014-02-13', '2014-02-20', '2014-02-27', '2014-03-06',
                 '2014-03-13', '2014-03-20', '2014-03-27', '2014-04-03', '2014-04-10', '2014-04-17',
                 '2013-04-18', 'change_in_plant_per')
names(fsoyh14_2) <- hefsoyh14_2


#change Area_ha column to numeric and remove periods from thousandths position
fsoyh14_2 <- fsoyh14_2 %>%
  mutate(Area_ha = as.numeric(gsub("\\.", "", Area_ha)))
fsoyh14_2 <- fsoyh14_2 %>%
  mutate(Partial_prod_sc_ha = as.numeric(gsub(",", "\\.", Partial_prod_sc_ha)))

#xxx <- 3
#colnames(fsoyh14_2)[1]

for (xxx in 4:dim(fsoyh14_2)[2]){
  fsoyh14_2[[paste(colnames(fsoyh14_2)[xxx])]] <- gsub(",", "\\.", fsoyh14_2[[paste(colnames(fsoyh14_2)[xxx])]])
  fsoyh14_2[[paste(colnames(fsoyh14_2)[xxx])]] <- gsub("%", "", fsoyh14_2[[paste(colnames(fsoyh14_2)[xxx])]])
  fsoyh14_2[[paste(colnames(fsoyh14_2)[xxx])]] <- gsub("p.p.", "", fsoyh14_2[[paste(colnames(fsoyh14_2)[xxx])]])
  fsoyh14_2[[paste(colnames(fsoyh14_2)[xxx])]] <- as.numeric(fsoyh14_2[[paste(colnames(fsoyh14_2)[xxx])]])
  fsoyh14_2[[paste(colnames(fsoyh14_2)[xxx])]] <- fsoyh14_2[[paste(colnames(fsoyh14_2)[xxx])]]/100
}
dim(fsoyh14_2)
sapply(fsoyh14_2, mode)
#Write final table to disk
write.csv(fsoyh14_2, file='soy_harvest_2014_region.csv', row.names=FALSE)



#2014-2015 soy harvest - setting as data frame - 1st/2nd files municipal data
fsoyh15_1 <- as.data.frame(fsoyh15_1[2:nrow(fsoyh15_1), ], stringsAsFactors = FALSE)
fsoyh15_1$'V2' <- NULL
hefsoyh15_1 <- c('Regions', 'Area_ha', '2015-01-08', '2015-01-15', '2015-01-22', '2015-01-29',
                 '2015-02-05', '2015-02-12', '2015-02-19', '2015-02-26', '2015-03-05',
                 '2015-03-12', '2015-03-19', '2015-03-26', '2015-04-02', '2015-04-9',
                 '2015-04-16', '2015-04-23', '2015-04-30')
names(fsoyh15_1) <- hefsoyh15_1
fsoyh15_1[3, "Regions"] <- "Others_Noroeste"
fsoyh15_1[5, "Regions"] <- "Itauba"
fsoyh15_1[6, "Regions"] <- "Others_Norte"
fsoyh15_1[9, "Regions"] <- "Querencia"
fsoyh15_1[10, "Regions"] <- "Gaucha_do_Norte"
fsoyh15_1[11, "Regions"] <- "Nova_Xavantina"
fsoyh15_1[12, "Regions"] <- "Others_Nordeste"
fsoyh15_1[13, "Regions"] <- "Medio_Norte"
fsoyh15_1[14, "Regions"] <- "Lucas_do_Rio_Verde"
fsoyh15_1[16, "Regions"] <- "Nova_Mutum"
fsoyh15_1[17, "Regions"] <- "Ipiranga_do_Norte"
fsoyh15_1[20, "Regions"] <- "Santa_Rita_do_Trivelato"
fsoyh15_1[21, "Regions"] <- "Nova_Ubirata"
fsoyh15_1[23, "Regions"] <- "Sao_Jose_do_Rio_Claro"
fsoyh15_1[24, "Regions"] <- "Others_Medio_Norte"
fsoyh15_1[27, "Regions"] <- "Campo_Novo_dos_Parecis"
fsoyh15_1[28, "Regions"] <- "Campos_de_Julio"
fsoyh15_1[29, "Regions"] <- "Others_Oeste"
fsoyh15_1[30, "Regions"] <- "Centro_Sul"
fsoyh15_1[32, "Regions"] <- "Tangara_da_Serra"
fsoyh15_1[33, "Regions"] <- "Santo_Antonio_do_Leveger"
fsoyh15_1[34, "Regions"] <- "Chapada_dos_Guimaraes"
fsoyh15_1[35, "Regions"] <- "Others_Centro_Sul"
fsoyh15_1[37, "Regions"] <- "Campo_Verde"
fsoyh15_1[38, "Regions"] <- "Primavera_do_Leste"
fsoyh15_1[39, "Regions"] <- "Alto_Garcas_e_Alto_Taquari"
fsoyh15_1[40, "Regions"] <- "Jaciara_e_Juscimeira"
fsoyh15_1[41, "Regions"] <- "Santo_Antonio_do_Leste"
fsoyh15_1[42, "Regions"] <- "Others_Sudeste"
fsoyh15_1[43, "Regions"] <- "Mato_Grosso"
#Remove periods and spaces from decimal/thousands positions and convert Area_ha to numeric
fsoyh15_1$Area_ha <- gsub("\\.", "", fsoyh15_1$Area_ha)
fsoyh15_1$Area_ha <- gsub(" ", "", fsoyh15_1$Area_ha)
fsoyh15_1 <- fsoyh15_1 %>%
  mutate(Area_ha = as.numeric(Area_ha))

#xxx <- 3
#colnames(fsoyh15_1)[1]

for (xxx in 3:dim(fsoyh15_1)[2]){
  fsoyh15_1[[paste(colnames(fsoyh15_1)[xxx])]] <- gsub(",", "\\.", fsoyh15_1[[paste(colnames(fsoyh15_1)[xxx])]])
  fsoyh15_1[[paste(colnames(fsoyh15_1)[xxx])]] <- gsub("%", "", fsoyh15_1[[paste(colnames(fsoyh15_1)[xxx])]])
  fsoyh15_1[[paste(colnames(fsoyh15_1)[xxx])]] <- as.numeric(fsoyh15_1[[paste(colnames(fsoyh15_1)[xxx])]])
  fsoyh15_1[[paste(colnames(fsoyh15_1)[xxx])]] <- fsoyh15_1[[paste(colnames(fsoyh15_1)[xxx])]]/100
}
dim(fsoyh15_1)

#changing to numeric
sapply(fsoyh15_1, mode)
View(fsoyh15_1)
#Write final table to disk
write.csv(fsoyh15_1, file='soy_harvest_2015_muni.csv', row.names=FALSE)

#2013-2014 soy harvesting -regional table
fsoyh15_2 <- do.call(rbind, outsoyh15[2])
View(fsoyh15_2)
fsoyh15_2 <- as.data.frame(fsoyh15_2[5:nrow(fsoyh15_2), ], stringsAsFactors = FALSE)

fsoyh15_2$'V19' <- NULL
fsoyh15_2$'V18' <- NULL
fsoyh15_2$'V17' <- NULL
fsoyh15_2$'V16' <- NULL
fsoyh15_2$'V15' <- NULL
fsoyh15_2$'V14' <- NULL
fsoyh15_2$'V13' <- NULL
fsoyh15_2$'V12' <- NULL
fsoyh15_2$'V11' <- NULL
fsoyh15_2$'V10' <- NULL
fsoyh15_2$'V6' <- NULL

hefsoyh15_2 <- c('Noroeste', 'Norte', 'Nordeste', 'Medio_Norte', 'Oeste',
                 'Centro_Sul', 'Sudeste', 'Mato_Grosso')
names(fsoyh15_2) <- hefsoyh15_2

fsoyh15_2 <- fsoyh15_2[-c(22,24), ]

fsoyh15_2[1, "Noroeste"] <- "568.638"
fsoyh15_2[2, "Noroeste"] <- "51,0"
fsoyh15_2[3, "Noroeste"] <- "0,6%"
fsoyh15_2[4, "Noroeste"] <- "2,7%"
fsoyh15_2[5, "Noroeste"] <- "6,7%"
fsoyh15_2[6, "Noroeste"] <- "7,7%"
fsoyh15_2[7, "Noroeste"] <- "12,7%"
fsoyh15_2[8, "Noroeste"] <- "18,4%"
fsoyh15_2[9, "Noroeste"] <- "23,8%"
fsoyh15_2[10, "Noroeste"] <- "42,0%"
fsoyh15_2[11, "Noroeste"] <- "51,2%"
fsoyh15_2[12, "Noroeste"] <- "67,4%"
fsoyh15_2[13, "Noroeste"] <- "80,4%"
fsoyh15_2[14, "Noroeste"] <- "88,4%"
fsoyh15_2[15, "Noroeste"] <- "97,0%"
fsoyh15_2[16, "Noroeste"] <- "98,0%"
fsoyh15_2[17, "Noroeste"] <- "99,7%"
fsoyh15_2[18, "Noroeste"] <- "100,0%"
fsoyh15_2[19, "Noroeste"] <- "100,0%"
fsoyh15_2[20, "Noroeste"] <- "0,0 p.p.%"
fsoyh15_2[21, "Noroeste"] <- "100,0%" 
fsoyh15_2[22, "Noroeste"] <- "0,0 p.p.%"

#Transpose 2014 soy harvesting regions table (rows to columns, columns to rows)
fsoyh15_2 <- t(fsoyh15_2)
#Turn this transposed table into a data frame and remove headers in first row

fsoyh15_2 <- as.data.frame(fsoyh15_2[1:nrow(fsoyh15_2), ], sort= FALSE)

setDT(fsoyh15_2, keep.rownames=TRUE)
colnames(fsoyh15_2)[1] <- "IMEA_Regions"


#Create new header names and insert them
hefsoyh15_2 <- c('IMEA_Regions', 'Area_ha', 'Partial_prod_sc_ha', '2015-01-08', '2015-01-15', '2015-01-22', '2015-01-29',
                 '2015-02-05', '2015-02-12', '2015-02-19', '2015-02-26', '2015-03-05',
                 '2015-03-12', '2015-03-19', '2015-03-26', '2015-04-02', '2015-04-9',
                 '2015-04-16', '2015-04-23', '2015-04-30', 'weekly_change', '2014-04-17', 'change_in_plant_per')
names(fsoyh15_2) <- hefsoyh15_2


#change Area_ha column to numeric and remove periods from thousandths position
fsoyh15_2 <- fsoyh15_2 %>%
  mutate(Area_ha = as.numeric(gsub("\\.", "", Area_ha)))
fsoyh15_2 <- fsoyh15_2 %>%
  mutate(Partial_prod_sc_ha = as.numeric(gsub(",", "\\.", Partial_prod_sc_ha)))

#xxx <- 3
#colnames(fsoyh15_2)[1]

for (xxx in 4:dim(fsoyh15_2)[2]){
  fsoyh15_2[[paste(colnames(fsoyh15_2)[xxx])]] <- gsub(",", "\\.", fsoyh15_2[[paste(colnames(fsoyh15_2)[xxx])]])
  fsoyh15_2[[paste(colnames(fsoyh15_2)[xxx])]] <- gsub("%", "", fsoyh15_2[[paste(colnames(fsoyh15_2)[xxx])]])
  fsoyh15_2[[paste(colnames(fsoyh15_2)[xxx])]] <- gsub("p.p.", "", fsoyh15_2[[paste(colnames(fsoyh15_2)[xxx])]])
  fsoyh15_2[[paste(colnames(fsoyh15_2)[xxx])]] <- as.numeric(fsoyh15_2[[paste(colnames(fsoyh15_2)[xxx])]])
  fsoyh15_2[[paste(colnames(fsoyh15_2)[xxx])]] <- fsoyh15_2[[paste(colnames(fsoyh15_2)[xxx])]]/100
}
dim(fsoyh15_2)
sapply(fsoyh15_2, mode)
#Write final table to disk
write.csv(fsoyh15_2, file='soy_harvest_2015_region.csv', row.names=FALSE)




#2015-2016 soy harvesting -regional table
fsoyh16_1 <- do.call(rbind, outsoyh16[1])
View(fsoyh16_1)
fsoyh16_1 <- as.data.frame(fsoyh16_1[2:nrow(fsoyh16_1), ], stringsAsFactors = FALSE)


hefsoyh16_1 <- c('Date', 'Noroeste', 'Norte', 'Nordeste', 'Medio_Norte', 'Oeste',
                 'Centro_Sul', 'Sudeste', 'Mato_Grosso')
names(fsoyh16_1) <- hefsoyh16_1

fsoyh16_1 <- fsoyh16_1[-c(21,23), ]


#Transpose 2014 soy harvesting regions table (rows to columns, columns to rows)
fsoyh16_1 <- t(fsoyh16_1)
#Turn this transposed table into a data frame and remove headers in first row

fsoyh16_1 <- as.data.frame(fsoyh16_1[2:nrow(fsoyh16_1), ], sort= FALSE)

setDT(fsoyh16_1, keep.rownames=TRUE)
colnames(fsoyh16_1)[1] <- "IMEA_Regions"


#Create new header names and insert them
hefsoyh16_1 <- c('IMEA_Regions', 'Area_ha', 'Partial_prod_sc_ha', '2015-01-08', '2015-01-15', '2015-01-22', '2015-01-29',
                 '2015-02-05', '2015-02-12', '2015-02-19', '2015-02-26', '2015-03-05',
                 '2015-03-12', '2015-03-19', '2015-03-26', '2015-04-02', '2015-04-9',
                 '2015-04-16', '2015-04-23', '2015-04-30', 'weekly_change', '2014-04-17', 'change_in_plant_per')
names(fsoyh16_1) <- hefsoyh16_1


#change Area_ha column to numeric and remove periods from thousandths position
fsoyh16_1 <- fsoyh16_1 %>%
  mutate(Area_ha = as.numeric(gsub("\\.", "", Area_ha)))
fsoyh16_1 <- fsoyh16_1 %>%
  mutate(Partial_prod_sc_ha = as.numeric(gsub(",", "\\.", Partial_prod_sc_ha)))

#xxx <- 3
#colnames(fsoyh16_1)[1]

for (xxx in 4:dim(fsoyh16_1)[2]){
  fsoyh16_1[[paste(colnames(fsoyh16_1)[xxx])]] <- gsub(",", "\\.", fsoyh16_1[[paste(colnames(fsoyh16_1)[xxx])]])
  fsoyh16_1[[paste(colnames(fsoyh16_1)[xxx])]] <- gsub("%", "", fsoyh16_1[[paste(colnames(fsoyh16_1)[xxx])]])
  fsoyh16_1[[paste(colnames(fsoyh16_1)[xxx])]] <- gsub("p.p.", "", fsoyh16_1[[paste(colnames(fsoyh16_1)[xxx])]])
  fsoyh16_1[[paste(colnames(fsoyh16_1)[xxx])]] <- as.numeric(fsoyh16_1[[paste(colnames(fsoyh16_1)[xxx])]])
  fsoyh16_1[[paste(colnames(fsoyh16_1)[xxx])]] <- fsoyh16_1[[paste(colnames(fsoyh16_1)[xxx])]]/100
}
dim(fsoyh16_1)
sapply(fsoyh16_1, mode)
#Write final table to disk
write.csv(fsoyh16_2, file='soy_harvest_2016_region.csv', row.names=FALSE)

