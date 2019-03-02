library('parallel')
library('rJava')
library("tabulizer")
library("dplyr")
library("tidyverse")
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
soyp19 <- 'http://www.imea.com.br/upload/publicacoes/arquivos/23112018162346.pdf'

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
fsoyh9_8 <- fsoyh9_8[-c(1,2,44), ]
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

fsoyh9_8[1, "Regions"] <- "Noroeste"
fsoyh9_8[2, "Regions"] <- "Brasnorte"
fsoyh9_8[3, "Regions"] <- "Others_Noroeste"
fsoyh9_8[4, "Regions"] <- "Norte"
fsoyh9_8[5, "Regions"] <- "Itauba"
fsoyh9_8[6, "Regions"] <- "Others_Norte"
fsoyh9_8[7, "Regions"] <- "Nordeste"
fsoyh9_8[8, "Regions"] <- "Canarana"
fsoyh9_8[9, "Regions"] <- "Querencia"
fsoyh9_8[10, "Regions"] <- "Gaucha_do_Norte"
fsoyh9_8[11, "Regions"] <- "Nova_Xavantina"
fsoyh9_8[12, "Regions"] <- "Others_Nordeste"
fsoyh9_8[13, "Regions"] <- "Medio_Norte"
fsoyh9_8[14, "Regions"] <- "Lucas_do_Rio_Verde"
fsoyh9_8[15, "Regions"] <- "Sorriso"
fsoyh9_8[16, "Regions"] <- "Nova_Mutum"
fsoyh9_8[17, "Regions"] <- "Ipiranga_do_Norte"
fsoyh9_8[18, "Regions"] <- "Sinop"
fsoyh9_8[19, "Regions"] <- "Tapurah"
fsoyh9_8[20, "Regions"] <- "Santa_Rita_do_Trivelato"
fsoyh9_8[21, "Regions"] <- "Nova_Ubirata"
fsoyh9_8[22, "Regions"] <- "Vera"
fsoyh9_8[23, "Regions"] <- "Sao_Jose_do_Rio_Claro"
fsoyh9_8[24, "Regions"] <- "Others_Medio_Norte"
fsoyh9_8[25, "Regions"] <- "Oeste"
fsoyh9_8[26, "Regions"] <- "Sapezal"
fsoyh9_8[27, "Regions"] <- "Campo_Novo_dos_Parecis"
fsoyh9_8[28, "Regions"] <- "Campos_de_Julio"
fsoyh9_8[29, "Regions"] <- "Others_Oeste"
fsoyh9_8[30, "Regions"] <- "Centro_Sul"
fsoyh9_8[31, "Regions"] <- "Diamantino"
fsoyh9_8[32, "Regions"] <- "Tangara_da_Serra"
fsoyh9_8[33, "Regions"] <- "Santo_Antonio_do_Leveger"
fsoyh9_8[34, "Regions"] <- "Chapada_dos_Guimaraes"
fsoyh9_8[35, "Regions"] <- "Others_Centro_Sul"
fsoyh9_8[36, "Regions"] <- "Sudeste"
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
fsoyh13_muni <- fsoyh13_1
#Write final table to disk
write.csv(fsoyh13_muni, file='soy_harvest_2013_muni.csv', row.names=FALSE)

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
hefsoyh14_2 <- c('IMEA_Regions', 'Area_ha', 'Final_prod', '2014-01-09', '2014-01-16', '2014-01-23', '2014-01-30',
                 '2014-02-06', '2014-02-13', '2014-02-20', '2014-02-27', '2014-03-06',
                 '2014-03-13', '2014-03-20', '2014-03-27', '2014-04-03', '2014-04-10', '2014-04-17',
                 '2013-04-18', 'change_in_plant_per')
names(fsoyh14_2) <- hefsoyh14_2


#change Area_ha column to numeric and remove periods from thousandths position
fsoyh14_2 <- fsoyh14_2 %>%
  mutate(Area_ha = as.numeric(gsub("\\.", "", Area_ha)))
fsoyh14_2 <- fsoyh14_2 %>%
  mutate(Final_prod = as.numeric(gsub(",", "\\.", Final_prod)))

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
                 '2015-03-12', '2015-03-19', '2015-03-26', '2015-04-02', '2015-04-09',
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
hefsoyh15_2 <- c('IMEA_Regions', 'Area_ha', 'Final_prod', '2015-01-08', '2015-01-15', '2015-01-22', '2015-01-29',
                 '2015-02-05', '2015-02-12', '2015-02-19', '2015-02-26', '2015-03-05',
                 '2015-03-12', '2015-03-19', '2015-03-26', '2015-04-02', '2015-04-09',
                 '2015-04-16', '2015-04-23', '2015-04-30', 'weekly_change', '2014-04-17', 'change_in_plant_per')
names(fsoyh15_2) <- hefsoyh15_2


#change Area_ha column to numeric and remove periods from thousandths position
fsoyh15_2 <- fsoyh15_2 %>%
  mutate(Area_ha = as.numeric(gsub("\\.", "", Area_ha)))
fsoyh15_2 <- fsoyh15_2 %>%
  mutate(Final_prod = as.numeric(gsub(",", "\\.", Final_prod)))

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

fsoyh16_1 <- fsoyh16_1[,c(1,5,6,4,3,7,2,8,9)]
hefsoyh16_1 <- c('Date', 'Noroeste', 'Norte', 'Nordeste', 'Medio_Norte', 'Oeste',
                 'Centro_Sul', 'Sudeste', 'Mato_Grosso')
names(fsoyh16_1) <- hefsoyh16_1

fsoyh16_1 <- fsoyh16_1[-c(21,23), ]


#Transpose 2015-2016 soy harvesting regions table (rows to columns, columns to rows)
fsoyh16_1 <- t(fsoyh16_1)
#Turn this transposed table into a data frame and remove headers in first row

fsoyh16_1 <- as.data.frame(fsoyh16_1[2:nrow(fsoyh16_1), ], sort= FALSE)

setDT(fsoyh16_1, keep.rownames=TRUE)
colnames(fsoyh16_1)[1] <- "IMEA_Regions"


#Create new header names and insert them
hefsoyh16_1 <- c('IMEA_Regions', 'Area_ha', '2016-01-07', '2016-01-14', '2016-01-21', '2016-01-28',
                 '2016-02-04', '2016-02-11', '2016-02-18', '2016-02-25', '2016-03-03',
                 '2016-03-10', '2016-03-18', '2016-03-25', '2016-04-01', '2016-04-08',
                 '2016-04-15', '2016-04-22', '2016-04-29', 'weekly_change', '2015-04-30', 'change_in_plant_per')
names(fsoyh16_1) <- hefsoyh16_1


#change Area_ha column to numeric and remove periods from thousandths position
fsoyh16_1 <- fsoyh16_1 %>%
  mutate(Area_ha = as.numeric(gsub("\\.", "", Area_ha)))


#xxx <- 3
#colnames(fsoyh16_1)[1]

for (xxx in 3:dim(fsoyh16_1)[2]){
  fsoyh16_1[[paste(colnames(fsoyh16_1)[xxx])]] <- gsub(",", "\\.", fsoyh16_1[[paste(colnames(fsoyh16_1)[xxx])]])
  fsoyh16_1[[paste(colnames(fsoyh16_1)[xxx])]] <- gsub("%", "", fsoyh16_1[[paste(colnames(fsoyh16_1)[xxx])]])
  fsoyh16_1[[paste(colnames(fsoyh16_1)[xxx])]] <- gsub("p.p.", "", fsoyh16_1[[paste(colnames(fsoyh16_1)[xxx])]])
  fsoyh16_1[[paste(colnames(fsoyh16_1)[xxx])]] <- as.numeric(fsoyh16_1[[paste(colnames(fsoyh16_1)[xxx])]])
  fsoyh16_1[[paste(colnames(fsoyh16_1)[xxx])]] <- fsoyh16_1[[paste(colnames(fsoyh16_1)[xxx])]]/100
}
dim(fsoyh16_1)
sapply(fsoyh16_1, mode)
#Write final table to disk
write.csv(fsoyh16_1, file='soy_harvest_2016_region.csv', row.names=FALSE)




#2015-2016 weekly productivity of area harvested - soy harvesting
fsoyh16_2 <- do.call(rbind, outsoyh16[2])
View(fsoyh16_2)
fsoyh16_2 <- as.data.frame(fsoyh16_2[2:nrow(fsoyh16_2), ], stringsAsFactors = FALSE)

fsoyh16_2 <- fsoyh16_2[,c(1,5,6,4,3,7,2,8,9)]
hefsoyh16_2 <- c('Date', 'Noroeste', 'Norte', 'Nordeste', 'Medio_Norte', 'Oeste',
                 'Centro_Sul', 'Sudeste', 'Mato_Grosso')
names(fsoyh16_2) <- hefsoyh16_2

fsoyh16_2 <- fsoyh16_2[-c(21,23), ]


#Transpose 2015-2016 weekly productivity soy harvesting table (rows to columns, columns to rows)
fsoyh16_2 <- t(fsoyh16_2)
#Turn this transposed table into a data frame and remove headers in first row

fsoyh16_2 <- as.data.frame(fsoyh16_2[2:nrow(fsoyh16_2), ], sort= FALSE)

setDT(fsoyh16_2, keep.rownames=TRUE)
colnames(fsoyh16_2)[1] <- "IMEA_Regions"


#Create new header names and insert them
hefsoyh16_2 <- c('IMEA_Regions', 'Area_ha', '2016-01-07', '2016-01-14', '2016-01-21', '2016-01-28',
                 '2016-02-04', '2016-02-11', '2016-02-18', '2016-02-25', '2016-03-03',
                 '2016-03-10', '2016-03-18', '2016-03-25', '2016-04-01', '2016-04-08',
                 '2016-04-15', '2016-04-22', '2016-04-29', 'weekly_change', '2015-04-30', 'change_in_plant_per')
names(fsoyh16_2) <- hefsoyh16_2


#change Area_ha column to numeric and remove periods from thousandths position
fsoyh16_2 <- fsoyh16_2 %>%
  mutate(Area_ha = as.numeric(gsub("\\.", "", Area_ha)))


#xxx <- 3
#colnames(fsoyh16_2)[1]

for (xxx in 3:dim(fsoyh16_2)[2]){
  fsoyh16_2[[paste(colnames(fsoyh16_2)[xxx])]] <- gsub(",", "\\.", fsoyh16_2[[paste(colnames(fsoyh16_2)[xxx])]])
  fsoyh16_2[[paste(colnames(fsoyh16_2)[xxx])]] <- gsub("p.p.", "", fsoyh16_2[[paste(colnames(fsoyh16_2)[xxx])]])
  fsoyh16_2[[paste(colnames(fsoyh16_2)[xxx])]] <- as.numeric(fsoyh16_2[[paste(colnames(fsoyh16_2)[xxx])]])
  fsoyh16_2[[paste(colnames(fsoyh16_2)[xxx])]] <- fsoyh16_2[[paste(colnames(fsoyh16_2)[xxx])]]/100
}
dim(fsoyh16_2)
sapply(fsoyh16_2, mode)
#Write final table to disk
write.csv(fsoyh16_2, file='soy_harvest_2016_weekly_prod.csv', row.names=FALSE)




#2016-2017 soy harvesting -regional table
fsoyh17_1 <- do.call(rbind, outsoyh17)
View(fsoyh17_1)
fsoyh17_1 <- as.data.frame(fsoyh17_1[2:nrow(fsoyh17_1), ], stringsAsFactors = FALSE)

fsoyh17_1 <- fsoyh17_1[,c(1,5,6,4,3,7,2,8,9)]
hefsoyh17_1 <- c('Date', 'Noroeste', 'Norte', 'Nordeste', 'Medio_Norte', 'Oeste',
                 'Centro_Sul', 'Sudeste', 'Mato_Grosso')
names(fsoyh17_1) <- hefsoyh17_1

fsoyh17_1 <- fsoyh17_1[-c(21,23), ]


#Transpose 2016-2017 soy harvesting regions table (rows to columns, columns to rows)
fsoyh17_1 <- t(fsoyh17_1)
#Turn this transposed table into a data frame and remove headers in first row

fsoyh17_1 <- as.data.frame(fsoyh17_1[2:nrow(fsoyh17_1), ], sort= FALSE)

setDT(fsoyh17_1, keep.rownames=TRUE)
colnames(fsoyh17_1)[1] <- "IMEA_Regions"


#Create new header names and insert them
hefsoyh17_1 <- c('IMEA_Regions', 'Area_ha', '2017-01-06', '2017-01-13', '2017-01-20', '2017-01-27',
                 '2017-02-03', '2017-02-10', '2017-02-17', '2017-02-24', '2017-03-03',
                 '2017-03-10', '2017-03-17', '2017-03-24', '2017-03-31', '2017-04-07', '2017-04-14',
                 '2017-04-21', '2017-04-28', 'weekly_change', '2016-04-28', 'change_in_plant_per')
names(fsoyh17_1) <- hefsoyh17_1


#change Area_ha column to numeric and remove periods from thousandths position
fsoyh17_1 <- fsoyh17_1 %>%
  mutate(Area_ha = as.numeric(gsub("\\.", "", Area_ha)))


#xxx <- 3
#colnames(fsoyh17_1)[1]

for (xxx in 3:dim(fsoyh17_1)[2]){
  fsoyh17_1[[paste(colnames(fsoyh17_1)[xxx])]] <- gsub(",", "\\.", fsoyh17_1[[paste(colnames(fsoyh17_1)[xxx])]])
  fsoyh17_1[[paste(colnames(fsoyh17_1)[xxx])]] <- gsub("%", "", fsoyh17_1[[paste(colnames(fsoyh17_1)[xxx])]])
  fsoyh17_1[[paste(colnames(fsoyh17_1)[xxx])]] <- gsub("p.p.", "", fsoyh17_1[[paste(colnames(fsoyh17_1)[xxx])]])
  fsoyh17_1[[paste(colnames(fsoyh17_1)[xxx])]] <- as.numeric(fsoyh17_1[[paste(colnames(fsoyh17_1)[xxx])]])
  fsoyh17_1[[paste(colnames(fsoyh17_1)[xxx])]] <- fsoyh17_1[[paste(colnames(fsoyh17_1)[xxx])]]/100
}
dim(fsoyh17_1)
sapply(fsoyh17_1, mode)
#Write final table to disk
write.csv(fsoyh17_1, file='soy_harvest_2017_region.csv', row.names=FALSE)



#2016-2017 soy harvesting -regional table
fsoyh18 <- do.call(rbind, outsoyh18)
View(fsoyh18)
fsoyh18 <- as.data.frame(fsoyh18[2:nrow(fsoyh18), ], stringsAsFactors = FALSE)

fsoyh18 <- fsoyh18[,c(4,5,3,2,6,1,7,8)]
hefsoyh18 <- c('Noroeste', 'Norte', 'Nordeste', 'Medio_Norte', 'Oeste',
                 'Centro_Sul', 'Sudeste', 'Mato_Grosso')
names(fsoyh18) <- hefsoyh18

fsoyh18 <- fsoyh18[-c(2,8,11,17,20,24,27,29), ]

fsoyh18[1, "Centro_Sul"] <- "700.597"
fsoyh18[2, "Centro_Sul"] <- "1,47%"
fsoyh18[3, "Centro_Sul"] <- "3,82%"
fsoyh18[4, "Centro_Sul"] <- "11,52%"
fsoyh18[5, "Centro_Sul"] <- "20,95%"
fsoyh18[6, "Centro_Sul"] <- "30,49%"
fsoyh18[7, "Centro_Sul"] <- "43,34%"
fsoyh18[8, "Centro_Sul"] <- "50,87%"
fsoyh18[9, "Centro_Sul"] <- "64,24%"
fsoyh18[10, "Centro_Sul"] <- "80,47%"
fsoyh18[11, "Centro_Sul"] <- "94,00%"
fsoyh18[12, "Centro_Sul"] <- "98,39%"
fsoyh18[13, "Centro_Sul"] <- "99,46%"
fsoyh18[14, "Centro_Sul"] <- "100,00%"
fsoyh18[15, "Centro_Sul"] <- "100,00%"
fsoyh18[16, "Centro_Sul"] <- "100,00%"
fsoyh18[17, "Centro_Sul"] <- "100,00%"
fsoyh18[18, "Centro_Sul"] <- "100,00%"
fsoyh18[19, "Centro_Sul"] <- "0,0 p.p.%"
fsoyh18[20, "Centro_Sul"] <- "100,00%" 
fsoyh18[21, "Centro_Sul"] <- "0,0 p.p.%"


#Transpose 2017-2018 soy harvesting regions table (rows to columns, columns to rows)
fsoyh18 <- t(fsoyh18)
#Turn this transposed table into a data frame and remove headers in first row

fsoyh18 <- as.data.frame(fsoyh18[2:nrow(fsoyh18), ], sort= FALSE)

setDT(fsoyh18, keep.rownames=TRUE)
colnames(fsoyh18)[1] <- "IMEA_Regions"


#Create new header names and insert them
hefsoyh18 <- c('IMEA_Regions', 'Area_ha', '2018-01-12', '2018-01-19', '2018-01-26',
                 '2018-02-02', '2018-02-09', '2018-02-16', '2018-02-23', '2018-03-02',
                 '2018-03-09', '2018-03-16', '2018-03-23', '2018-03-30', '2018-04-06', '2018-04-13',
                 '2018-04-20', '2018-04-27', '2018-05-04', 'weekly_change',
                 '2017-05-05', 'change_in_plant_per')
names(fsoyh18) <- hefsoyh18


#change Area_ha column to numeric and remove periods from thousandths position
fsoyh18 <- fsoyh18 %>%
  mutate(Area_ha = as.numeric(gsub("\\.", "", Area_ha)))


#xxx <- 3
#colnames(fsoyh18)[1]

for (xxx in 3:dim(fsoyh18)[2]){
  fsoyh18[[paste(colnames(fsoyh18)[xxx])]] <- gsub(",", "\\.", fsoyh18[[paste(colnames(fsoyh18)[xxx])]])
  fsoyh18[[paste(colnames(fsoyh18)[xxx])]] <- gsub("%", "", fsoyh18[[paste(colnames(fsoyh18)[xxx])]])
  fsoyh18[[paste(colnames(fsoyh18)[xxx])]] <- gsub("p.p.", "", fsoyh18[[paste(colnames(fsoyh18)[xxx])]])
  fsoyh18[[paste(colnames(fsoyh18)[xxx])]] <- as.numeric(fsoyh18[[paste(colnames(fsoyh18)[xxx])]])
  fsoyh18[[paste(colnames(fsoyh18)[xxx])]] <- fsoyh18[[paste(colnames(fsoyh18)[xxx])]]/100
}
dim(fsoyh18)
sapply(fsoyh18, mode)
#Write final table to disk
write.csv(fsoyh18, file='soy_harvest_2018_region.csv', row.names=FALSE)

# Location of maize planting files of interest
map9_1 <- 'http://www.imea.com.br/upload/publicacoes/arquivos/090129_IAPM.pdf'
map9_3 <- 'http://www.imea.com.br/upload/publicacoes/arquivos/090212_IAPM.pdf'
map9_5 <- 'http://www.imea.com.br/upload/publicacoes/arquivos/090226_IAPM.pdf'
map9_7 <- 'http://www.imea.com.br/upload/publicacoes/arquivos/90312_IAPM.pdf'
map9_8 <- 'http://www.imea.com.br/upload/publicacoes/arquivos/090319_IAPM.pdf'
map10_1 <- 'http://www.imea.com.br/upload/publicacoes/arquivos/10_03_11_IPMilho.pdf'
map10_2 <- 'http://www.imea.com.br/upload/publicacoes/arquivos/10_03_18_IPMilho.pdf'
map11 <- 'http://www.imea.com.br/upload/publicacoes/arquivos/2011_03_24_IPMilho.pdf'
map12 <- 'http://www.imea.com.br/upload/publicacoes/arquivos/2012_03_15_IPMilho.pdf'
map13 <- 'http://www.imea.com.br/upload/publicacoes/arquivos/R403_Plantio_safra_12-13_14-03.pdf'
map14 <- 'http://www.imea.com.br/upload/publicacoes/arquivos/R403_Semeadura_Safra_13-14_27-03.pdf'
map15 <- 'http://www.imea.com.br/upload/publicacoes/arquivos/R403_Semeadura_Safra_14-15_19-03.pdf'
map16 <- 'http://www.imea.com.br/upload/publicacoes/arquivos/R403_Semeadura_Safra_15-16-31-03-2016.pdf'
map17 <- 'http://www.imea.com.br/upload/publicacoes/arquivos/31032017174329.pdf'
map18 <- 'http://www.imea.com.br/upload/publicacoes/arquivos/06042018190535.pdf'

# Extract maize planting tables
outmap9_1 <- extract_tables(map9_1)
outmap9_3 <- extract_tables(map9_3)
outmap9_5 <- extract_tables(map9_5)
outmap9_7 <- extract_tables(map9_7)
outmap9_8 <- extract_tables(map9_8)
outmap10_1 <- extract_tables(map10_1)
outmap10_2 <- extract_tables(map10_2)
outmap11 <- extract_tables(map11)
outmap12 <- extract_tables(map12)
outmap13 <- extract_tables(map13)
outmap14 <- extract_tables(map14)
outmap15 <- extract_tables(map15)
outmap16 <- extract_tables(map16)
outmap17 <- extract_tables(map17)
outmap18 <- extract_tables(map18)

# Create individual data matrices for maize planting data
fmap9_1 <- do.call(rbind, outmap9_1)
fmap9_3 <- do.call(rbind, outmap9_3)
fmap9_5 <- do.call(rbind, outmap9_5)
fmap9_7 <- do.call(rbind, outmap9_7)
fmap9_8 <- do.call(rbind, outmap9_8)
fmap10_1_1 <- do.call(rbind, outmap10_1[1])
fmap10_1_2 <- do.call(rbind, outmap10_1[2])
fmap10_2_1 <- do.call(rbind, outmap10_2[1])
fmap10_2_2 <- do.call(rbind, outmap10_2[2])
fmap11_1 <- do.call(rbind, outmap11[1])
fmap11_2 <- do.call(rbind, outmap11[2])
fmap12_1 <- do.call(rbind, outmap12[1])
fmap12_2 <- do.call(rbind, outmap12[2])
fmap13_1 <- do.call(rbind, outmap13[1])
fmap13_2 <- do.call(rbind, outmap13[2])
fmap14_1 <- do.call(rbind, outmap14[1])
fmap14_2 <- do.call(rbind, outmap14[2])
fmap15_1 <- do.call(rbind, outmap15[1])
fmap15_2 <- do.call(rbind, outmap15[2])
fmap16 <- do.call(rbind, outmap16)
fmap17 <- do.call(rbind, outmap17)
fmap18 <- do.call(rbind, outmap18)

#2009 maize planting
fmap9_1 <- as.data.frame(fmap9_1[2:nrow(fmap9_1), ], stringsAsFactors = FALSE)
fmap9_3 <- as.data.frame(fmap9_3[2:nrow(fmap9_3), ], stringsAsFactors = FALSE)
fmap9_5 <- as.data.frame(fmap9_5[2:nrow(fmap9_5), ], stringsAsFactors = FALSE)
fmap9_7 <- as.data.frame(fmap9_7[2:nrow(fmap9_7), ], stringsAsFactors = FALSE)
fmap9_8 <- as.data.frame(fmap9_8[2:nrow(fmap9_8), ], stringsAsFactors = FALSE)

fmap9_1[1] <- NULL
fmap9_1 <- fmap9_1[-c(5,17), ]
hefmap9_1 <- c('Regions', 'Area_ha', '2009-01-22', '2009-01-29')
names(fmap9_1) <- hefmap9_1
fmap9_3[2] <- NULL
fmap9_3 <- fmap9_3[-c(10,16), ]
hefmap9_3 <- c('Regions', 'Area_ha', '2009-02-05', '2009-02-12')
names(fmap9_3) <- hefmap9_3
fmap9_3[2] <- NULL
fmap9_5[2] <- NULL
hefmap9_5 <- c('Regions', '2009-02-19', '2009-02-25')
names(fmap9_5) <- hefmap9_5
fmap9_5 <- fmap9_5[-c(1,3,5,8,12,18,27,33,38,45), ]
fmap9_7[4] <- NULL
fmap9_7[3] <- NULL
fmap9_7[1] <- NULL
hefmap9_7 <- c('Regions', '2009-03-05', '2009-03-10')
names(fmap9_7) <- hefmap9_7
fmap9_7 <- fmap9_7[-c(6,9,27), ]
fmap9_8[4] <- NULL
fmap9_8[3] <- NULL
fmap9_8[2] <- NULL
fmap9_8 <- fmap9_8[-c(2,5,13,21), ]
hefmap9_8 <- c('Regions', '2009-03-19')
names(fmap9_8) <- hefmap9_8

fmap9_1[1, "Regions"] <- "Noroeste"
fmap9_1[2, "Regions"] <- "Brasnorte"
fmap9_1[3, "Regions"] <- "Others_Noroeste"
fmap9_1[4, "Regions"] <- "Norte"
fmap9_1[5, "Regions"] <- "Itauba"
fmap9_1[6, "Regions"] <- "Others_Norte"
fmap9_1[7, "Regions"] <- "Nordeste"
fmap9_1[8, "Regions"] <- "Canarana"
fmap9_1[9, "Regions"] <- "Querencia"
fmap9_1[10, "Regions"] <- "Gaucha_do_Norte"
fmap9_1[11, "Regions"] <- "Others_Nordeste"
fmap9_1[12, "Regions"] <- "Medio_Norte"
fmap9_1[13, "Regions"] <- "Lucas_do_Rio_Verde"
fmap9_1[14, "Regions"] <- "Sorriso"
fmap9_1[15, "Regions"] <- "Nova_Mutum"
fmap9_1[16, "Regions"] <- "Ipiranga_do_Norte"
fmap9_1[17, "Regions"] <- "Sinop"
fmap9_1[18, "Regions"] <- "Tapurah"
fmap9_1[19, "Regions"] <- "Others_Medio_Norte"
fmap9_1[20, "Regions"] <- "Oeste"
fmap9_1[21, "Regions"] <- "Sapezal"
fmap9_1[22, "Regions"] <- "Campo_Novo_dos_Parecis"
fmap9_1[23, "Regions"] <- "Campos_de_Julio"
fmap9_1[24, "Regions"] <- "Others_Oeste"
fmap9_1[25, "Regions"] <- "Centro_Sul"
fmap9_1[26, "Regions"] <- "Diamantino"
fmap9_1[27, "Regions"] <- "Tangara_da_Serra"
fmap9_1[28, "Regions"] <- "Others_Centro_Sul"
fmap9_1[29, "Regions"] <- "Sudeste"
fmap9_1[30, "Regions"] <- "Campo_Verde"
fmap9_1[31, "Regions"] <- "Primavera_do_Leste"
fmap9_1[32, "Regions"] <- "Alto_Garcas"
fmap9_1[33, "Regions"] <- "Jaciara_e_Juscimeira"
fmap9_1[34, "Regions"] <- "Others_Sudeste"
fmap9_1[35, "Regions"] <- "Mato_Grosso"

fmap9_3[1, "Regions"] <- "Noroeste"
fmap9_3[2, "Regions"] <- "Brasnorte"
fmap9_3[3, "Regions"] <- "Others_Noroeste"
fmap9_3[4, "Regions"] <- "Norte"
fmap9_3[5, "Regions"] <- "Itauba"
fmap9_3[6, "Regions"] <- "Others_Norte"
fmap9_3[7, "Regions"] <- "Nordeste"
fmap9_3[8, "Regions"] <- "Canarana"
fmap9_3[9, "Regions"] <- "Querencia"
fmap9_3[10, "Regions"] <- "Gaucha_do_Norte"
fmap9_3[11, "Regions"] <- "Others_Nordeste"
fmap9_3[12, "Regions"] <- "Medio_Norte"
fmap9_3[13, "Regions"] <- "Lucas_do_Rio_Verde"
fmap9_3[14, "Regions"] <- "Sorriso"
fmap9_3[15, "Regions"] <- "Nova_Mutum"
fmap9_3[16, "Regions"] <- "Ipiranga_do_Norte"
fmap9_3[17, "Regions"] <- "Sinop"
fmap9_3[18, "Regions"] <- "Tapurah"
fmap9_3[19, "Regions"] <- "Others_Medio_Norte"
fmap9_3[20, "Regions"] <- "Oeste"
fmap9_3[21, "Regions"] <- "Sapezal"
fmap9_3[22, "Regions"] <- "Campo_Novo_dos_Parecis"
fmap9_3[23, "Regions"] <- "Campos_de_Julio"
fmap9_3[24, "Regions"] <- "Others_Oeste"
fmap9_3[25, "Regions"] <- "Centro_Sul"
fmap9_3[26, "Regions"] <- "Diamantino"
fmap9_3[27, "Regions"] <- "Tangara_da_Serra"
fmap9_3[28, "Regions"] <- "Others_Centro_Sul"
fmap9_3[29, "Regions"] <- "Sudeste"
fmap9_3[30, "Regions"] <- "Campo_Verde"
fmap9_3[31, "Regions"] <- "Primavera_do_Leste"
fmap9_3[32, "Regions"] <- "Alto_Garcas"
fmap9_3[33, "Regions"] <- "Jaciara_e_Juscimeira"
fmap9_3[34, "Regions"] <- "Others_Sudeste"
fmap9_3[35, "Regions"] <- "Mato_Grosso"


fmap9_5[1, "Regions"] <- "Noroeste"
fmap9_5[2, "Regions"] <- "Brasnorte"
fmap9_5[3, "Regions"] <- "Others_Noroeste"
fmap9_5[4, "Regions"] <- "Norte"
fmap9_5[5, "Regions"] <- "Itauba"
fmap9_5[6, "Regions"] <- "Others_Norte"
fmap9_5[7, "Regions"] <- "Nordeste"
fmap9_5[8, "Regions"] <- "Canarana"
fmap9_5[9, "Regions"] <- "Querencia"
fmap9_5[10, "Regions"] <- "Gaucha_do_Norte"
fmap9_5[11, "Regions"] <- "Others_Nordeste"
fmap9_5[12, "Regions"] <- "Medio_Norte"
fmap9_5[13, "Regions"] <- "Lucas_do_Rio_Verde"
fmap9_5[14, "Regions"] <- "Sorriso"
fmap9_5[15, "Regions"] <- "Nova_Mutum"
fmap9_5[16, "Regions"] <- "Ipiranga_do_Norte"
fmap9_5[17, "Regions"] <- "Sinop"
fmap9_5[18, "Regions"] <- "Tapurah"
fmap9_5[19, "Regions"] <- "Others_Medio_Norte"
fmap9_5[20, "Regions"] <- "Oeste"
fmap9_5[21, "Regions"] <- "Sapezal"
fmap9_5[22, "Regions"] <- "Campo_Novo_dos_Parecis"
fmap9_5[23, "Regions"] <- "Campos_de_Julio"
fmap9_5[24, "Regions"] <- "Others_Oeste"
fmap9_5[25, "Regions"] <- "Centro_Sul"
fmap9_5[26, "Regions"] <- "Diamantino"
fmap9_5[27, "Regions"] <- "Tangara_da_Serra"
fmap9_5[28, "Regions"] <- "Others_Centro_Sul"
fmap9_5[29, "Regions"] <- "Sudeste"
fmap9_5[30, "Regions"] <- "Campo_Verde"
fmap9_5[31, "Regions"] <- "Primavera_do_Leste"
fmap9_5[32, "Regions"] <- "Alto_Garcas"
fmap9_5[33, "Regions"] <- "Jaciara_e_Juscimeira"
fmap9_5[34, "Regions"] <- "Others_Sudeste"
fmap9_5[35, "Regions"] <- "Mato_Grosso"


fmap9_7[1, "Regions"] <- "Noroeste"
fmap9_7[2, "Regions"] <- "Brasnorte"
fmap9_7[3, "Regions"] <- "Others_Noroeste"
fmap9_7[4, "Regions"] <- "Norte"
fmap9_7[5, "Regions"] <- "Itauba"
fmap9_7[6, "Regions"] <- "Others_Norte"
fmap9_7[7, "Regions"] <- "Nordeste"
fmap9_7[8, "Regions"] <- "Canarana"
fmap9_7[9, "Regions"] <- "Querencia"
fmap9_7[10, "Regions"] <- "Gaucha_do_Norte"
fmap9_7[11, "Regions"] <- "Others_Nordeste"
fmap9_7[12, "Regions"] <- "Medio_Norte"
fmap9_7[13, "Regions"] <- "Lucas_do_Rio_Verde"
fmap9_7[14, "Regions"] <- "Sorriso"
fmap9_7[15, "Regions"] <- "Nova_Mutum"
fmap9_7[16, "Regions"] <- "Ipiranga_do_Norte"
fmap9_7[17, "Regions"] <- "Sinop"
fmap9_7[18, "Regions"] <- "Tapurah"
fmap9_7[19, "Regions"] <- "Others_Medio_Norte"
fmap9_7[20, "Regions"] <- "Oeste"
fmap9_7[21, "Regions"] <- "Sapezal"
fmap9_7[22, "Regions"] <- "Campo_Novo_dos_Parecis"
fmap9_7[23, "Regions"] <- "Campos_de_Julio"
fmap9_7[24, "Regions"] <- "Others_Oeste"
fmap9_7[25, "Regions"] <- "Centro_Sul"
fmap9_7[26, "Regions"] <- "Diamantino"
fmap9_7[27, "Regions"] <- "Tangara_da_Serra"
fmap9_7[28, "Regions"] <- "Others_Centro_Sul"
fmap9_7[29, "Regions"] <- "Sudeste"
fmap9_7[30, "Regions"] <- "Campo_Verde"
fmap9_7[31, "Regions"] <- "Primavera_do_Leste"
fmap9_7[32, "Regions"] <- "Alto_Garcas"
fmap9_7[33, "Regions"] <- "Jaciara_e_Juscimeira"
fmap9_7[34, "Regions"] <- "Others_Sudeste"
fmap9_7[35, "Regions"] <- "Mato_Grosso"

fmap9_8[1, "Regions"] <- "Noroeste"
fmap9_8[2, "Regions"] <- "Brasnorte"
fmap9_8[3, "Regions"] <- "Others_Noroeste"
fmap9_8[4, "Regions"] <- "Norte"
fmap9_8[5, "Regions"] <- "Itauba"
fmap9_8[6, "Regions"] <- "Others_Norte"
fmap9_8[7, "Regions"] <- "Nordeste"
fmap9_8[8, "Regions"] <- "Canarana"
fmap9_8[9, "Regions"] <- "Querencia"
fmap9_8[10, "Regions"] <- "Gaucha_do_Norte"
fmap9_8[11, "Regions"] <- "Others_Nordeste"
fmap9_8[12, "Regions"] <- "Medio_Norte"
fmap9_8[13, "Regions"] <- "Lucas_do_Rio_Verde"
fmap9_8[14, "Regions"] <- "Sorriso"
fmap9_8[15, "Regions"] <- "Nova_Mutum"
fmap9_8[16, "Regions"] <- "Ipiranga_do_Norte"
fmap9_8[17, "Regions"] <- "Sinop"
fmap9_8[18, "Regions"] <- "Tapurah"
fmap9_8[19, "Regions"] <- "Others_Medio_Norte"
fmap9_8[20, "Regions"] <- "Oeste"
fmap9_8[21, "Regions"] <- "Sapezal"
fmap9_8[22, "Regions"] <- "Campo_Novo_dos_Parecis"
fmap9_8[23, "Regions"] <- "Campos_de_Julio"
fmap9_8[24, "Regions"] <- "Others_Oeste"
fmap9_8[25, "Regions"] <- "Centro_Sul"
fmap9_8[26, "Regions"] <- "Diamantino"
fmap9_8[27, "Regions"] <- "Tangara_da_Serra"
fmap9_8[28, "Regions"] <- "Others_Centro_Sul"
fmap9_8[29, "Regions"] <- "Sudeste"
fmap9_8[30, "Regions"] <- "Campo_Verde"
fmap9_8[31, "Regions"] <- "Primavera_do_Leste"
fmap9_8[32, "Regions"] <- "Alto_Garcas"
fmap9_8[33, "Regions"] <- "Jaciara_e_Juscimeira"
fmap9_8[34, "Regions"] <- "Others_Sudeste"
fmap9_8[35, "Regions"] <- "Mato_Grosso"



fmap9_mun <- merge(fmap9_1, fmap9_3, by="Regions", sort = FALSE)
fmap9_mun1 <- merge(fmap9_mun, fmap9_5, by="Regions", sort = FALSE)
fmap9_mun2 <- merge(fmap9_mun1, fmap9_7, by="Regions", sort = FALSE)
fmap9_mun3 <- merge(fmap9_mun2, fmap9_8, by="Regions", sort = FALSE)
fmap9_mun3[4, "2009-02-12"] <- "15%"


#Remove periods from thousands positions and convert Area_ha to numeric
fmap9_mun3$Area_ha <- gsub("\\.", "", fmap9_mun3$Area_ha)
fmap9_mun3 <- fmap9_mun3 %>%
  mutate(Area_ha = as.numeric(Area_ha))

#xxx <- 3
#colnames(fmap9_mun3)[1]

for (xxx in 3:dim(fmap9_mun3)[2]){
  fmap9_mun3[[paste(colnames(fmap9_mun3)[xxx])]] <- gsub(",", "\\.", fmap9_mun3[[paste(colnames(fmap9_mun3)[xxx])]])
  fmap9_mun3[[paste(colnames(fmap9_mun3)[xxx])]] <- gsub("%", "", fmap9_mun3[[paste(colnames(fmap9_mun3)[xxx])]])
  fmap9_mun3[[paste(colnames(fmap9_mun3)[xxx])]] <- as.numeric(fmap9_mun3[[paste(colnames(fmap9_mun3)[xxx])]])
  fmap9_mun3[[paste(colnames(fmap9_mun3)[xxx])]] <- fmap9_mun3[[paste(colnames(fmap9_mun3)[xxx])]]/100
}
dim(fmap9_mun3)
sapply(fmap9_mun3, mode)

#Write final table to disk
write.csv(fmap9_mun3, file='maize_plant_2009_muni.csv', row.names=FALSE)

#2009-2010 maize planting - setting as data frame - 1st file
fmap10_1_1 <- as.data.frame(fmap10_1_1[2:nrow(fmap10_1_1), ], stringsAsFactors = FALSE)
fmap10_1_1[2] <- NULL
hefmap10_1_1 <- c('Regions', 'Area_ha', '2010-01-14', '2010-01-21', '2010-01-28', '2010-02-04',
                  '2010-02-11', '2010-02-18', '2010-02-25', '2010-03-04', '2010-03-11')
names(fmap10_1_1) <- hefmap10_1_1
fmap10_2_1 <- as.data.frame(fmap10_2_1[2:nrow(fmap10_2_1), ], stringsAsFactors = FALSE)
fmap10_2_1[9] <- NULL
fmap10_2_1[8] <- NULL
fmap10_2_1[7] <- NULL
fmap10_2_1[6] <- NULL
fmap10_2_1[5] <- NULL
fmap10_2_1[4] <- NULL
fmap10_2_1[3] <- NULL
fmap10_2_1[2] <- NULL
hefmap10_2_1 <- c('Regions', '2010-03-18')
names(fmap10_2_1) <- hefmap10_2_1

#2009-2010 maize planting - renaming rows with errors
fmap10_1_1[3, "Regions"] <- "Others_Noroeste"
fmap10_1_1[5, "Regions"] <- "Itauba"
fmap10_1_1[6, "Regions"] <- "Others_Norte"
fmap10_1_1[9, "Regions"] <- "Querencia"
fmap10_1_1[10, "Regions"] <- "Gaucha_do_Norte"
fmap10_1_1[11, "Regions"] <- "Nova_Xavantina"
fmap10_1_1[12, "Regions"] <- "Others_Nordeste"
fmap10_1_1[13, "Regions"] <- "Medio_Norte"
fmap10_1_1[14, "Regions"] <- "Lucas_do_Rio_Verde"
fmap10_1_1[16, "Regions"] <- "Nova_Mutum"
fmap10_1_1[17, "Regions"] <- "Ipiranga_do_Norte"
fmap10_1_1[20, "Regions"] <- "Santa_Rita_do_Trivelato"
fmap10_1_1[21, "Regions"] <- "Nova_Ubirata"
fmap10_1_1[23, "Regions"] <- "Sao_Jose_do_Rio_Claro"
fmap10_1_1[24, "Regions"] <- "Others_Medio_Norte"
fmap10_1_1[27, "Regions"] <- "Campo_Novo_dos_Parecis"
fmap10_1_1[28, "Regions"] <- "Campos_de_Julio"
fmap10_1_1[29, "Regions"] <- "Others_Oeste"
fmap10_1_1[30, "Regions"] <- "Centro_Sul"
fmap10_1_1[32, "Regions"] <- "Tangara_da_Serra"
fmap10_1_1[33, "Regions"] <- "Santo_Antonio_do_Leveger"
fmap10_1_1[34, "Regions"] <- "Chapada_dos_Guimaraes"
fmap10_1_1[35, "Regions"] <- "Others_Centro_Sul"
fmap10_1_1[37, "Regions"] <- "Campo_Verde"
fmap10_1_1[38, "Regions"] <- "Primavera_do_Leste"
fmap10_1_1[39, "Regions"] <- "Alto_Garcas_e_Alto_Taquari"
fmap10_1_1[40, "Regions"] <- "Jaciara_e_Juscimeira"
fmap10_1_1[41, "Regions"] <- "Santo_Antonio_do_Leste"
fmap10_1_1[42, "Regions"] <- "Others_Sudeste"
fmap10_1_1[43, "Regions"] <- "Mato_Grosso"

fmap10_2_1[3, "Regions"] <- "Others_Noroeste"
fmap10_2_1[5, "Regions"] <- "Itauba"
fmap10_2_1[6, "Regions"] <- "Others_Norte"
fmap10_2_1[9, "Regions"] <- "Querencia"
fmap10_2_1[10, "Regions"] <- "Gaucha_do_Norte"
fmap10_2_1[11, "Regions"] <- "Nova_Xavantina"
fmap10_2_1[12, "Regions"] <- "Others_Nordeste"
fmap10_2_1[13, "Regions"] <- "Medio_Norte"
fmap10_2_1[14, "Regions"] <- "Lucas_do_Rio_Verde"
fmap10_2_1[16, "Regions"] <- "Nova_Mutum"
fmap10_2_1[17, "Regions"] <- "Ipiranga_do_Norte"
fmap10_2_1[20, "Regions"] <- "Santa_Rita_do_Trivelato"
fmap10_2_1[21, "Regions"] <- "Nova_Ubirata"
fmap10_2_1[23, "Regions"] <- "Sao_Jose_do_Rio_Claro"
fmap10_2_1[24, "Regions"] <- "Others_Medio_Norte"
fmap10_2_1[27, "Regions"] <- "Campo_Novo_dos_Parecis"
fmap10_2_1[28, "Regions"] <- "Campos_de_Julio"
fmap10_2_1[29, "Regions"] <- "Others_Oeste"
fmap10_2_1[30, "Regions"] <- "Centro_Sul"
fmap10_2_1[32, "Regions"] <- "Tangara_da_Serra"
fmap10_2_1[33, "Regions"] <- "Santo_Antonio_do_Leveger"
fmap10_2_1[34, "Regions"] <- "Chapada_dos_Guimaraes"
fmap10_2_1[35, "Regions"] <- "Others_Centro_Sul"
fmap10_2_1[37, "Regions"] <- "Campo_Verde"
fmap10_2_1[38, "Regions"] <- "Primavera_do_Leste"
fmap10_2_1[39, "Regions"] <- "Alto_Garcas_e_Alto_Taquari"
fmap10_2_1[40, "Regions"] <- "Jaciara_e_Juscimeira"
fmap10_2_1[41, "Regions"] <- "Santo_Antonio_do_Leste"
fmap10_2_1[42, "Regions"] <- "Others_Sudeste"
fmap10_2_1[43, "Regions"] <- "Mato_Grosso"

fmap10_mun <- merge(fmap10_1_1, fmap10_2_1, by="Regions", sort = FALSE)

#Remove periods and spaces from decimal/thousands positions and convert Area_ha to numeric
fmap10_mun$Area_ha <- gsub("\\.", "", fmap10_mun$Area_ha)
fmap10_mun$Area_ha <- gsub(" ", "", fmap10_mun$Area_ha)
fmap10_mun <- fmap10_mun %>%
  mutate(Area_ha = as.numeric(Area_ha))

#xxx <- 3
#colnames(fmap10_mun)[1]

for (xxx in 3:dim(fmap10_mun)[2]){
  fmap10_mun[[paste(colnames(fmap10_mun)[xxx])]] <- gsub(",", "\\.", fmap10_mun[[paste(colnames(fmap10_mun)[xxx])]])
  fmap10_mun[[paste(colnames(fmap10_mun)[xxx])]] <- gsub("%", "", fmap10_mun[[paste(colnames(fmap10_mun)[xxx])]])
  fmap10_mun[[paste(colnames(fmap10_mun)[xxx])]] <- as.numeric(fmap10_mun[[paste(colnames(fmap10_mun)[xxx])]])
  fmap10_mun[[paste(colnames(fmap10_mun)[xxx])]] <- fmap10_mun[[paste(colnames(fmap10_mun)[xxx])]]/100
}
dim(fmap10_mun)
sapply(fmap10_mun, mode)

#Write final table to disk
write.csv(fmap10_mun, file='maize_plant_2010_muni.csv', row.names=FALSE)

#2009-2010 maize planting regional
fmap10_1_2 <- as.data.frame(fmap10_1_2[2:nrow(fmap10_1_2), ], stringsAsFactors = FALSE)
fmap10_2_2 <- as.data.frame(fmap10_2_2[2:nrow(fmap10_2_2), ], stringsAsFactors = FALSE)

hefmap10_1_2 <- c('Headers', 'Noroeste', 'Norte', 'Nordeste', 'Medio_Norte', 'Oeste',
                 'Centro_Sul', 'Sudeste', 'Mato_Grosso')
names(fmap10_1_2) <- hefmap10_1_2
fmap10_1_2 <- fmap10_1_2[-c(4,6), ]
hefmap10_2_2 <- c('Headers', 'Noroeste', 'Norte', 'Nordeste', 'Medio_Norte', 'Oeste',
                  'Centro_Sul', 'Sudeste', 'Mato_Grosso')
names(fmap10_2_2) <- hefmap10_2_2
fmap10_2_2 <- fmap10_2_2[-c(1,4,6), ]

#Transpose 2010 soy harvesting regions table (rows to columns, columns to rows)
fmap10_1_2 <- t(fmap10_1_2)
fmap10_2_2 <- t(fmap10_2_2)
#Turn this transposed table into a data frame and remove headers in first row
fmap10_1_2 <- as.data.frame(fmap10_1_2[1:nrow(fmap10_1_2), ], sort= FALSE)
fmap10_2_2 <- as.data.frame(fmap10_2_2[1:nrow(fmap10_2_2), ], sort= FALSE)
#Create new header names and insert them
setDT(fmap10_1_2, keep.rownames=TRUE)
colnames(fmap10_1_2)[1] <- "IMEA_Regions"
fmap10_1_2 <- fmap10_1_2[-c(1), ]
hefmap10_1_2 <- c('IMEA_Regions', 'Area_ha', '2010-03-11', '2009-03-10', 'change_in_plant_per_1')
names(fmap10_1_2) <- hefmap10_1_2

setDT(fmap10_2_2, keep.rownames=TRUE)
colnames(fmap10_2_2)[1] <- "IMEA_Regions"
fmap10_2_2 <- fmap10_2_2[-c(1), ]
hefmap10_2_2 <- c('IMEA_Regions', '2010-03-18', '2009-03-19', 'change_in_plant_per_2')
names(fmap10_2_2) <- hefmap10_2_2

fmap10_reg <- merge(fmap10_1_2, fmap10_2_2, by="IMEA_Regions", sort = FALSE)

#change Area_ha column to numeric and remove periods from thousandths position
fmap10_reg <- fmap10_reg %>%
  mutate(Area_ha = as.numeric(gsub("\\.", "", Area_ha)))
#xxx <- 3
#colnames(fmap10_reg)[1]

for (xxx in 3:dim(fmap10_reg)[2]){
  fmap10_reg[[paste(colnames(fmap10_reg)[xxx])]] <- gsub(",", "\\.", fmap10_reg[[paste(colnames(fmap10_reg)[xxx])]])
  fmap10_reg[[paste(colnames(fmap10_reg)[xxx])]] <- gsub("%", "", fmap10_reg[[paste(colnames(fmap10_reg)[xxx])]])
  fmap10_reg[[paste(colnames(fmap10_reg)[xxx])]] <- as.numeric(fmap10_reg[[paste(colnames(fmap10_reg)[xxx])]])
  fmap10_reg[[paste(colnames(fmap10_reg)[xxx])]] <- fmap10_reg[[paste(colnames(fmap10_reg)[xxx])]]/100
}
dim(fmap10_reg)
sapply(fmap10_reg, mode)

#Writing 2009-2010 maize planting as a CSV file
write.csv(fmap10_reg, file='maize_plant_2010_region.csv', row.names=FALSE)

#2010-2011 maize planting - setting as data fram
fmap11_1 <- as.data.frame(fmap11_1[2:nrow(fmap11_1), ], stringsAsFactors = FALSE)
fmap11_1[2] <- NULL
hefmap11_1 <- c('Regions', 'Area_ha', '2011-01-27', '2011-02-03', '2011-02-10', '2011-02-17',
                  '2011-02-24', '2011-03-03', '2011-03-10', '2011-03-17', '2011-03-24')
names(fmap11_1) <- hefmap11_1


#2010-2011 maize planting - renaming rows with errors
fmap11_1[3, "Regions"] <- "Others_Noroeste"
fmap11_1[5, "Regions"] <- "Itauba"
fmap11_1[6, "Regions"] <- "Others_Norte"
fmap11_1[9, "Regions"] <- "Querencia"
fmap11_1[10, "Regions"] <- "Gaucha_do_Norte"
fmap11_1[11, "Regions"] <- "Nova_Xavantina"
fmap11_1[12, "Regions"] <- "Others_Nordeste"
fmap11_1[13, "Regions"] <- "Medio_Norte"
fmap11_1[14, "Regions"] <- "Lucas_do_Rio_Verde"
fmap11_1[16, "Regions"] <- "Nova_Mutum"
fmap11_1[17, "Regions"] <- "Ipiranga_do_Norte"
fmap11_1[20, "Regions"] <- "Santa_Rita_do_Trivelato"
fmap11_1[21, "Regions"] <- "Nova_Ubirata"
fmap11_1[23, "Regions"] <- "Sao_Jose_do_Rio_Claro"
fmap11_1[24, "Regions"] <- "Others_Medio_Norte"
fmap11_1[27, "Regions"] <- "Campo_Novo_dos_Parecis"
fmap11_1[28, "Regions"] <- "Campos_de_Julio"
fmap11_1[29, "Regions"] <- "Others_Oeste"
fmap11_1[30, "Regions"] <- "Centro_Sul"
fmap11_1[32, "Regions"] <- "Tangara_da_Serra"
fmap11_1[33, "Regions"] <- "Santo_Antonio_do_Leveger"
fmap11_1[34, "Regions"] <- "Chapada_dos_Guimaraes"
fmap11_1[35, "Regions"] <- "Others_Centro_Sul"
fmap11_1[37, "Regions"] <- "Campo_Verde"
fmap11_1[38, "Regions"] <- "Primavera_do_Leste"
fmap11_1[39, "Regions"] <- "Alto_Garcas_e_Alto_Taquari"
fmap11_1[40, "Regions"] <- "Jaciara_e_Juscimeira"
fmap11_1[41, "Regions"] <- "Santo_Antonio_do_Leste"
fmap11_1[42, "Regions"] <- "Others_Sudeste"
fmap11_1[43, "Regions"] <- "Mato_Grosso"


#Remove periods and spaces from decimal/thousands positions and convert Area_ha to numeric
fmap11_1$Area_ha <- gsub("\\.", "", fmap11_1$Area_ha)
fmap11_1$Area_ha <- gsub(" ", "", fmap11_1$Area_ha)
fmap11_1 <- fmap11_1 %>%
  mutate(Area_ha = as.numeric(Area_ha))

#xxx <- 3
#colnames(fmap11_1)[1]

for (xxx in 3:dim(fmap11_1)[2]){
  fmap11_1[[paste(colnames(fmap11_1)[xxx])]] <- gsub(",", "\\.", fmap11_1[[paste(colnames(fmap11_1)[xxx])]])
  fmap11_1[[paste(colnames(fmap11_1)[xxx])]] <- gsub("%", "", fmap11_1[[paste(colnames(fmap11_1)[xxx])]])
  fmap11_1[[paste(colnames(fmap11_1)[xxx])]] <- as.numeric(fmap11_1[[paste(colnames(fmap11_1)[xxx])]])
  fmap11_1[[paste(colnames(fmap11_1)[xxx])]] <- fmap11_1[[paste(colnames(fmap11_1)[xxx])]]/100
}
dim(fmap11_1)
sapply(fmap11_1, mode)

#Write final table to disk
write.csv(fmap11_1, file='maize_plant_2011_muni.csv', row.names=FALSE)

#2010-2011 maize planting regional
fmap11_2 <- as.data.frame(fmap11_2[2:nrow(fmap11_2), ], stringsAsFactors = FALSE)

hefmap11_2 <- c('Noroeste', 'Norte', 'Nordeste', 'Medio_Norte', 'Oeste',
                  'Centro_Sul', 'Sudeste', 'Mato_Grosso')
names(fmap11_2) <- hefmap11_2
fmap11_2 <- fmap11_2[-c(1,2,3,7,9), ]
fmap11_2[11] <- NULL
fmap11_2[10] <- NULL
fmap11_2[6] <- NULL
hefmap11_2 <- c('Noroeste', 'Norte', 'Nordeste', 'Medio_Norte', 'Oeste',
                'Centro_Sul', 'Sudeste', 'Mato_Grosso')
names(fmap11_2) <- hefmap11_2
fmap11_2[1, "Noroeste"] <- "60.400"
fmap11_2[2, "Noroeste"] <- "100,0%"
fmap11_2[3, "Noroeste"] <- "100,0%"
fmap11_2[4, "Noroeste"] <- "0,0 p.p."

#Transpose 2011 maize planting regions table (rows to columns, columns to rows)
fmap11_2 <- t(fmap11_2)

#Turn this transposed table into a data frame and remove headers in first row
fmap11_2 <- as.data.frame(fmap11_2[1:nrow(fmap11_2), ], sort= FALSE)

#Create new header names and insert them
setDT(fmap11_2, keep.rownames=TRUE)
colnames(fmap11_2)[1] <- "IMEA_Regions"
hefmap11_2 <- c('IMEA_Regions', 'Area_ha', '2011-03-24', '2010-03-18', 'change_in_plant_per_1')
names(fmap11_2) <- hefmap11_2

#change Area_ha column to numeric and remove periods from thousandths position
fmap11_2 <- fmap11_2 %>%
  mutate(Area_ha = as.numeric(gsub("\\.", "", Area_ha)))
#xxx <- 3
#colnames(fmap11_2)[1]

for (xxx in 3:dim(fmap11_2)[2]){
  fmap11_2[[paste(colnames(fmap11_2)[xxx])]] <- gsub(",", "\\.", fmap11_2[[paste(colnames(fmap11_2)[xxx])]])
  fmap11_2[[paste(colnames(fmap11_2)[xxx])]] <- gsub("%", "", fmap11_2[[paste(colnames(fmap11_2)[xxx])]])
  fmap11_2[[paste(colnames(fmap11_2)[xxx])]] <- gsub("p.p.", "", fmap11_2[[paste(colnames(fmap11_2)[xxx])]])
  fmap11_2[[paste(colnames(fmap11_2)[xxx])]] <- as.numeric(fmap11_2[[paste(colnames(fmap11_2)[xxx])]])
  fmap11_2[[paste(colnames(fmap11_2)[xxx])]] <- fmap11_2[[paste(colnames(fmap11_2)[xxx])]]/100
}
dim(fmap11_2)
sapply(fmap11_2, mode)

#Writing 2010-2011 maize planting as a CSV file
write.csv(fmap11_2, file='maize_plant_2011_region.csv', row.names=FALSE)

#2011-2012 maize planting - setting as data fram
fmap12_1 <- as.data.frame(fmap12_1[2:nrow(fmap12_1), ], stringsAsFactors = FALSE)
fmap12_1[2] <- NULL
hefmap12_1 <- c('Regions', 'Area_ha', '2012-01-12', '2012-01-19', '2012-01-26', '2012-02-02',
                '2012-02-09', '2012-02-16', '2012-02-23', '2012-03-01', '2012-03-08',
                '2012-03-15')
names(fmap12_1) <- hefmap12_1


#2011-2012 maize planting - renaming rows with errors
fmap12_1[3, "Regions"] <- "Others_Noroeste"
fmap12_1[5, "Regions"] <- "Itauba"
fmap12_1[6, "Regions"] <- "Others_Norte"
fmap12_1[9, "Regions"] <- "Querencia"
fmap12_1[10, "Regions"] <- "Gaucha_do_Norte"
fmap12_1[11, "Regions"] <- "Nova_Xavantina"
fmap12_1[12, "Regions"] <- "Others_Nordeste"
fmap12_1[13, "Regions"] <- "Medio_Norte"
fmap12_1[14, "Regions"] <- "Lucas_do_Rio_Verde"
fmap12_1[16, "Regions"] <- "Nova_Mutum"
fmap12_1[17, "Regions"] <- "Ipiranga_do_Norte"
fmap12_1[20, "Regions"] <- "Santa_Rita_do_Trivelato"
fmap12_1[21, "Regions"] <- "Nova_Ubirata"
fmap12_1[23, "Regions"] <- "Sao_Jose_do_Rio_Claro"
fmap12_1[24, "Regions"] <- "Others_Medio_Norte"
fmap12_1[27, "Regions"] <- "Campo_Novo_dos_Parecis"
fmap12_1[28, "Regions"] <- "Campos_de_Julio"
fmap12_1[29, "Regions"] <- "Others_Oeste"
fmap12_1[30, "Regions"] <- "Centro_Sul"
fmap12_1[32, "Regions"] <- "Tangara_da_Serra"
fmap12_1[33, "Regions"] <- "Santo_Antonio_do_Leveger"
fmap12_1[34, "Regions"] <- "Chapada_dos_Guimaraes"
fmap12_1[35, "Regions"] <- "Others_Centro_Sul"
fmap12_1[37, "Regions"] <- "Campo_Verde"
fmap12_1[38, "Regions"] <- "Primavera_do_Leste"
fmap12_1[39, "Regions"] <- "Alto_Garcas_e_Alto_Taquari"
fmap12_1[40, "Regions"] <- "Jaciara_e_Juscimeira"
fmap12_1[41, "Regions"] <- "Santo_Antonio_do_Leste"
fmap12_1[42, "Regions"] <- "Others_Sudeste"
fmap12_1[43, "Regions"] <- "Mato_Grosso"


#Remove periods and spaces from decimal/thousands positions and convert Area_ha to numeric
fmap12_1$Area_ha <- gsub("\\.", "", fmap12_1$Area_ha)
fmap12_1$Area_ha <- gsub(" ", "", fmap12_1$Area_ha)
fmap12_1 <- fmap12_1 %>%
  mutate(Area_ha = as.numeric(Area_ha))

#xxx <- 3
#colnames(fmap12_1)[1]

for (xxx in 3:dim(fmap12_1)[2]){
  fmap12_1[[paste(colnames(fmap12_1)[xxx])]] <- gsub(",", "\\.", fmap12_1[[paste(colnames(fmap12_1)[xxx])]])
  fmap12_1[[paste(colnames(fmap12_1)[xxx])]] <- gsub("%", "", fmap12_1[[paste(colnames(fmap12_1)[xxx])]])
  fmap12_1[[paste(colnames(fmap12_1)[xxx])]] <- as.numeric(fmap12_1[[paste(colnames(fmap12_1)[xxx])]])
  fmap12_1[[paste(colnames(fmap12_1)[xxx])]] <- fmap12_1[[paste(colnames(fmap12_1)[xxx])]]/100
}
dim(fmap12_1)
sapply(fmap12_1, mode)

#Write final table to disk
write.csv(fmap12_1, file='maize_plant_2012_muni.csv', row.names=FALSE)

#2011-2012 maize planting regional
fmap12_2 <- as.data.frame(fmap12_2[5:nrow(fmap12_2), ], stringsAsFactors = FALSE)
fmap12_2[13] <- NULL
fmap12_2[12] <- NULL
fmap12_2[11] <- NULL
fmap12_2[7] <- NULL
fmap12_2[2] <- NULL
hefmap12_2 <- c('Noroeste', 'Norte', 'Nordeste', 'Medio_Norte', 'Oeste',
                'Centro_Sul', 'Sudeste', 'Mato_Grosso')
names(fmap12_2) <- hefmap12_2
fmap12_2 <- fmap12_2[-c(13,15), ]

fmap12_2[1, "Noroeste"] <- "67.800"
fmap12_2[2, "Noroeste"] <- "0,0%"
fmap12_2[3, "Noroeste"] <- "0,0%"
fmap12_2[4, "Noroeste"] <- "0,0%"
fmap12_2[5, "Noroeste"] <- "10,0%"
fmap12_2[6, "Noroeste"] <- "47,1%"
fmap12_2[7, "Noroeste"] <- "57,5%"
fmap12_2[8, "Noroeste"] <- "84,8%"
fmap12_2[9, "Noroeste"] <- "98,0%"
fmap12_2[10, "Noroeste"] <- "100,0%"
fmap12_2[11, "Noroeste"] <- "100,0%"
fmap12_2[12, "Noroeste"] <- "100,0%"
fmap12_2[13, "Noroeste"] <- "0,0 p.p."

#Transpose 2012 maize planting regions table (rows to columns, columns to rows)
fmap12_2 <- t(fmap12_2)

#Turn this transposed table into a data frame and remove headers in first row
fmap12_2 <- as.data.frame(fmap12_2[1:nrow(fmap12_2), ], sort= FALSE)

#Create new header names and insert them
setDT(fmap12_2, keep.rownames=TRUE)
colnames(fmap12_2)[1] <- "IMEA_Regions"
hefmap12_2 <- c('IMEA_Regions', 'Area_ha', '2012-01-12', '2012-01-19', '2012-01-26', '2012-02-02',
                '2012-02-09', '2012-02-16', '2012-02-23', '2012-03-01', '2012-03-08',
                '2012-03-15', '2011-03-17', 'change_in_plant_per_1')
names(fmap12_2) <- hefmap12_2

#change Area_ha column to numeric and remove periods from thousandths position
fmap12_2 <- fmap12_2 %>%
  mutate(Area_ha = as.numeric(gsub("\\.", "", Area_ha)))
#xxx <- 3
#colnames(fmap12_2)[1]

for (xxx in 3:dim(fmap12_2)[2]){
  fmap12_2[[paste(colnames(fmap12_2)[xxx])]] <- gsub(",", "\\.", fmap12_2[[paste(colnames(fmap12_2)[xxx])]])
  fmap12_2[[paste(colnames(fmap12_2)[xxx])]] <- gsub("%", "", fmap12_2[[paste(colnames(fmap12_2)[xxx])]])
  fmap12_2[[paste(colnames(fmap12_2)[xxx])]] <- gsub("p.p.", "", fmap12_2[[paste(colnames(fmap12_2)[xxx])]])
  fmap12_2[[paste(colnames(fmap12_2)[xxx])]] <- as.numeric(fmap12_2[[paste(colnames(fmap12_2)[xxx])]])
  fmap12_2[[paste(colnames(fmap12_2)[xxx])]] <- fmap12_2[[paste(colnames(fmap12_2)[xxx])]]/100
}
dim(fmap12_2)
sapply(fmap12_2, mode)

#Writing 2011-2012 maize planting as a CSV file
write.csv(fmap12_2, file='maize_plant_2012_region.csv', row.names=FALSE)

#2012-2013 maize planting - setting as data fram
fmap13_1 <- as.data.frame(fmap13_1[2:nrow(fmap13_1), ], stringsAsFactors = FALSE)
fmap13_1[2] <- NULL
hefmap13_1 <- c('Regions', 'Area_ha', '2013-01-10', '2013-01-17', '2013-01-24', '2013-01-31',
                '2013-02-07', '2013-02-14', '2013-02-21', '2013-02-28', '2013-03-07', '2013-03-14')
names(fmap13_1) <- hefmap13_1


#2012-2013 maize planting - renaming rows with errors
fmap13_1[3, "Regions"] <- "Others_Noroeste"
fmap13_1[5, "Regions"] <- "Itauba"
fmap13_1[6, "Regions"] <- "Others_Norte"
fmap13_1[9, "Regions"] <- "Querencia"
fmap13_1[10, "Regions"] <- "Gaucha_do_Norte"
fmap13_1[11, "Regions"] <- "Nova_Xavantina"
fmap13_1[12, "Regions"] <- "Others_Nordeste"
fmap13_1[13, "Regions"] <- "Medio_Norte"
fmap13_1[14, "Regions"] <- "Lucas_do_Rio_Verde"
fmap13_1[16, "Regions"] <- "Nova_Mutum"
fmap13_1[17, "Regions"] <- "Ipiranga_do_Norte"
fmap13_1[20, "Regions"] <- "Santa_Rita_do_Trivelato"
fmap13_1[21, "Regions"] <- "Nova_Ubirata"
fmap13_1[23, "Regions"] <- "Sao_Jose_do_Rio_Claro"
fmap13_1[24, "Regions"] <- "Others_Medio_Norte"
fmap13_1[27, "Regions"] <- "Campo_Novo_dos_Parecis"
fmap13_1[28, "Regions"] <- "Campos_de_Julio"
fmap13_1[29, "Regions"] <- "Others_Oeste"
fmap13_1[30, "Regions"] <- "Centro_Sul"
fmap13_1[32, "Regions"] <- "Tangara_da_Serra"
fmap13_1[33, "Regions"] <- "Santo_Antonio_do_Leveger"
fmap13_1[34, "Regions"] <- "Chapada_dos_Guimaraes"
fmap13_1[35, "Regions"] <- "Others_Centro_Sul"
fmap13_1[37, "Regions"] <- "Campo_Verde"
fmap13_1[38, "Regions"] <- "Primavera_do_Leste"
fmap13_1[39, "Regions"] <- "Alto_Garcas_e_Alto_Taquari"
fmap13_1[40, "Regions"] <- "Jaciara_e_Juscimeira"
fmap13_1[41, "Regions"] <- "Santo_Antonio_do_Leste"
fmap13_1[42, "Regions"] <- "Others_Sudeste"
fmap13_1[43, "Regions"] <- "Mato_Grosso"


#Remove periods and spaces from decimal/thousands positions and convert Area_ha to numeric
fmap13_1$Area_ha <- gsub("\\.", "", fmap13_1$Area_ha)
fmap13_1$Area_ha <- gsub(" ", "", fmap13_1$Area_ha)
fmap13_1 <- fmap13_1 %>%
  mutate(Area_ha = as.numeric(Area_ha))

#xxx <- 3
#colnames(fmap13_1)[1]

for (xxx in 3:dim(fmap13_1)[2]){
  fmap13_1[[paste(colnames(fmap13_1)[xxx])]] <- gsub(",", "\\.", fmap13_1[[paste(colnames(fmap13_1)[xxx])]])
  fmap13_1[[paste(colnames(fmap13_1)[xxx])]] <- gsub("%", "", fmap13_1[[paste(colnames(fmap13_1)[xxx])]])
  fmap13_1[[paste(colnames(fmap13_1)[xxx])]] <- as.numeric(fmap13_1[[paste(colnames(fmap13_1)[xxx])]])
  fmap13_1[[paste(colnames(fmap13_1)[xxx])]] <- fmap13_1[[paste(colnames(fmap13_1)[xxx])]]/100
}
dim(fmap13_1)
sapply(fmap13_1, mode)

#Write final table to disk
write.csv(fmap13_1, file='maize_plant_2013_muni.csv', row.names=FALSE)

#2012-2013 maize planting regional
fmap13_2 <- as.data.frame(fmap13_2[5:nrow(fmap13_2), ], stringsAsFactors = FALSE)
fmap13_2[13] <- NULL
fmap13_2[12] <- NULL
fmap13_2[11] <- NULL
fmap13_2[7] <- NULL
fmap13_2[2] <- NULL
hefmap13_2 <- c('Noroeste', 'Norte', 'Nordeste', 'Medio_Norte', 'Oeste',
                'Centro_Sul', 'Sudeste', 'Mato_Grosso')
names(fmap13_2) <- hefmap13_2
fmap13_2 <- fmap13_2[-c(13,15), ]

fmap13_2[1, "Noroeste"] <- "75.160"
fmap13_2[2, "Noroeste"] <- "0,0%"
fmap13_2[3, "Noroeste"] <- "0,0%"
fmap13_2[4, "Noroeste"] <- "1,0%"
fmap13_2[5, "Noroeste"] <- "8,0%"
fmap13_2[6, "Noroeste"] <- "18,0%"
fmap13_2[7, "Noroeste"] <- "28,0%"
fmap13_2[8, "Noroeste"] <- "52,0%"
fmap13_2[9, "Noroeste"] <- "87,0%"
fmap13_2[10, "Noroeste"] <- "98,0%"
fmap13_2[11, "Noroeste"] <- "100,0%"
fmap13_2[12, "Noroeste"] <- "100,0%"
fmap13_2[13, "Noroeste"] <- "0,0 p.p."

#Transpose 2012 maize planting regions table (rows to columns, columns to rows)
fmap13_2 <- t(fmap13_2)

#Turn this transposed table into a data frame and remove headers in first row
fmap13_2 <- as.data.frame(fmap13_2[1:nrow(fmap13_2), ], sort= FALSE)

#Create new header names and insert them
setDT(fmap13_2, keep.rownames=TRUE)
colnames(fmap13_2)[1] <- "IMEA_Regions"
hefmap13_2 <- c('IMEA_Regions', 'Area_ha', '2013-01-10', '2013-01-17', '2013-01-24', '2013-01-31',
                '2013-02-07', '2013-02-14', '2013-02-21', '2013-02-28', '2013-03-07', '2013-03-14',
                '2012-03-15', 'change_in_plant_per_1')
names(fmap13_2) <- hefmap13_2

#change Area_ha column to numeric and remove periods from thousandths position
fmap13_2 <- fmap13_2 %>%
  mutate(Area_ha = as.numeric(gsub("\\.", "", Area_ha)))
#xxx <- 3
#colnames(fmap13_2)[1]

for (xxx in 3:dim(fmap13_2)[2]){
  fmap13_2[[paste(colnames(fmap13_2)[xxx])]] <- gsub(",", "\\.", fmap13_2[[paste(colnames(fmap13_2)[xxx])]])
  fmap13_2[[paste(colnames(fmap13_2)[xxx])]] <- gsub("%", "", fmap13_2[[paste(colnames(fmap13_2)[xxx])]])
  fmap13_2[[paste(colnames(fmap13_2)[xxx])]] <- gsub("p.p.", "", fmap13_2[[paste(colnames(fmap13_2)[xxx])]])
  fmap13_2[[paste(colnames(fmap13_2)[xxx])]] <- as.numeric(fmap13_2[[paste(colnames(fmap13_2)[xxx])]])
  fmap13_2[[paste(colnames(fmap13_2)[xxx])]] <- fmap13_2[[paste(colnames(fmap13_2)[xxx])]]/100
}
dim(fmap13_2)
sapply(fmap13_2, mode)

#Writing 2012-2013 maize planting as a CSV file
write.csv(fmap13_2, file='maize_plant_2013_region.csv', row.names=FALSE)


#2013-2014 maize planting - setting as data frame
fmap14_1 <- as.data.frame(fmap14_1[2:nrow(fmap14_1), ], stringsAsFactors = FALSE)
hefmap14_1 <- c('Regions', 'Area_ha', '2014-01-16', '2014-01-23', '2014-01-30', '2014-02-06',
                '2014-02-13', '2014-02-20', '2014-02-27', '2014-03-06', '2014-03-13', '2014-03-20',
                '2014-03-27')
names(fmap14_1) <- hefmap14_1


#2013-2014 maize planting - renaming rows with errors
fmap14_1[3, "Regions"] <- "Others_Noroeste"
fmap14_1[5, "Regions"] <- "Itauba"
fmap14_1[6, "Regions"] <- "Others_Norte"
fmap14_1[9, "Regions"] <- "Querencia"
fmap14_1[10, "Regions"] <- "Gaucha_do_Norte"
fmap14_1[11, "Regions"] <- "Nova_Xavantina"
fmap14_1[12, "Regions"] <- "Others_Nordeste"
fmap14_1[13, "Regions"] <- "Medio_Norte"
fmap14_1[14, "Regions"] <- "Lucas_do_Rio_Verde"
fmap14_1[16, "Regions"] <- "Nova_Mutum"
fmap14_1[17, "Regions"] <- "Ipiranga_do_Norte"
fmap14_1[20, "Regions"] <- "Santa_Rita_do_Trivelato"
fmap14_1[21, "Regions"] <- "Nova_Ubirata"
fmap14_1[23, "Regions"] <- "Sao_Jose_do_Rio_Claro"
fmap14_1[24, "Regions"] <- "Others_Medio_Norte"
fmap14_1[27, "Regions"] <- "Campo_Novo_dos_Parecis"
fmap14_1[28, "Regions"] <- "Campos_de_Julio"
fmap14_1[29, "Regions"] <- "Others_Oeste"
fmap14_1[30, "Regions"] <- "Centro_Sul"
fmap14_1[32, "Regions"] <- "Tangara_da_Serra"
fmap14_1[33, "Regions"] <- "Santo_Antonio_do_Leveger"
fmap14_1[34, "Regions"] <- "Chapada_dos_Guimaraes"
fmap14_1[35, "Regions"] <- "Others_Centro_Sul"
fmap14_1[37, "Regions"] <- "Campo_Verde"
fmap14_1[38, "Regions"] <- "Primavera_do_Leste"
fmap14_1[39, "Regions"] <- "Alto_Garcas_e_Alto_Taquari"
fmap14_1[40, "Regions"] <- "Jaciara_e_Juscimeira"
fmap14_1[41, "Regions"] <- "Santo_Antonio_do_Leste"
fmap14_1[42, "Regions"] <- "Others_Sudeste"
fmap14_1[43, "Regions"] <- "Mato_Grosso"


#Remove periods and spaces from decimal/thousands positions and convert Area_ha to numeric
fmap14_1$Area_ha <- gsub("\\.", "", fmap14_1$Area_ha)
fmap14_1$Area_ha <- gsub(" ", "", fmap14_1$Area_ha)
fmap14_1 <- fmap14_1 %>%
  mutate(Area_ha = as.numeric(Area_ha))

#xxx <- 3
#colnames(fmap14_1)[1]

for (xxx in 3:dim(fmap14_1)[2]){
  fmap14_1[[paste(colnames(fmap14_1)[xxx])]] <- gsub(",", "\\.", fmap14_1[[paste(colnames(fmap14_1)[xxx])]])
  fmap14_1[[paste(colnames(fmap14_1)[xxx])]] <- gsub("%", "", fmap14_1[[paste(colnames(fmap14_1)[xxx])]])
  fmap14_1[[paste(colnames(fmap14_1)[xxx])]] <- as.numeric(fmap14_1[[paste(colnames(fmap14_1)[xxx])]])
  fmap14_1[[paste(colnames(fmap14_1)[xxx])]] <- fmap14_1[[paste(colnames(fmap14_1)[xxx])]]/100
}
dim(fmap14_1)
sapply(fmap14_1, mode)

#Write final table to disk
write.csv(fmap14_1, file='maize_plant_2014_muni.csv', row.names=FALSE)

#2013-2014 maize planting regional
fmap14_2 <- as.data.frame(fmap14_2[5:nrow(fmap14_2), ], stringsAsFactors = FALSE)
fmap14_2[13] <- NULL
fmap14_2[12] <- NULL
fmap14_2[11] <- NULL
fmap14_2[10] <- NULL
fmap14_2[6] <- NULL
hefmap14_2 <- c('Noroeste', 'Norte', 'Nordeste', 'Medio_Norte', 'Oeste',
                'Centro_Sul', 'Sudeste', 'Mato_Grosso')
names(fmap14_2) <- hefmap14_2
fmap14_2 <- fmap14_2[-c(14,16), ]

fmap14_2[1, "Noroeste"] <- "133.130"
fmap14_2[2, "Noroeste"] <- "0,1%"
fmap14_2[3, "Noroeste"] <- "0,3%"
fmap14_2[4, "Noroeste"] <- "3,0%"
fmap14_2[5, "Noroeste"] <- "5,7%"
fmap14_2[6, "Noroeste"] <- "36,7%"
fmap14_2[7, "Noroeste"] <- "47,4%"
fmap14_2[8, "Noroeste"] <- "65,0%"
fmap14_2[9, "Noroeste"] <- "93,7%"
fmap14_2[10, "Noroeste"] <- "97,3%"
fmap14_2[11, "Noroeste"] <- "99,3%"
fmap14_2[12, "Noroeste"] <- "100,0%"
fmap14_2[13, "Noroeste"] <- "100,0%"
fmap14_2[14, "Noroeste"] <- "0,00"

#Transpose 2014 maize planting regions table (rows to columns, columns to rows)
fmap14_2 <- t(fmap14_2)

#Turn this transposed table into a data frame and remove headers in first row
fmap14_2 <- as.data.frame(fmap14_2[1:nrow(fmap14_2), ], sort= FALSE)

#Create new header names and insert them
setDT(fmap14_2, keep.rownames=TRUE)
colnames(fmap14_2)[1] <- "IMEA_Regions"
hefmap14_2 <- c('IMEA_Regions', 'Area_ha', '2014-01-16', '2014-01-23', '2014-01-30', '2014-02-06',
                '2014-02-13', '2014-02-20', '2014-02-27', '2014-03-06', '2014-03-13', '2014-03-20',
                '2014-03-27', '2013-03-14', 'change_in_plant_per_1')
names(fmap14_2) <- hefmap14_2

#change Area_ha column to numeric and remove periods from thousandths position
fmap14_2 <- fmap14_2 %>%
  mutate(Area_ha = as.numeric(gsub("\\.", "", Area_ha)))
#xxx <- 3
#colnames(fmap14_2)[1]

for (xxx in 3:dim(fmap14_2)[2]){
  fmap14_2[[paste(colnames(fmap14_2)[xxx])]] <- gsub(",", "\\.", fmap14_2[[paste(colnames(fmap14_2)[xxx])]])
  fmap14_2[[paste(colnames(fmap14_2)[xxx])]] <- gsub("%", "", fmap14_2[[paste(colnames(fmap14_2)[xxx])]])
  fmap14_2[[paste(colnames(fmap14_2)[xxx])]] <- as.numeric(fmap14_2[[paste(colnames(fmap14_2)[xxx])]])
  fmap14_2[[paste(colnames(fmap14_2)[xxx])]] <- fmap14_2[[paste(colnames(fmap14_2)[xxx])]]/100
}
dim(fmap14_2)
sapply(fmap14_2, mode)

#Writing 2013-2014 maize planting as a CSV file
write.csv(fmap14_2, file='maize_plant_2014_region.csv', row.names=FALSE)


#2014-2015 maize planting - setting as data frame
fmap15_1 <- as.data.frame(fmap15_1[2:nrow(fmap15_1), ], stringsAsFactors = FALSE)
hefmap15_1 <- c('Regions', 'Area_ha', '2015-01-16', '2015-01-22', '2015-01-29', '2015-02-05',
                '2015-02-12', '2015-02-19', '2015-02-26', '2015-03-05', '2015-03-12', '2015-03-19')
names(fmap15_1) <- hefmap15_1


#2014-2015 maize planting - renaming rows with errors
fmap15_1[3, "Regions"] <- "Others_Noroeste"
fmap15_1[5, "Regions"] <- "Itauba"
fmap15_1[6, "Regions"] <- "Others_Norte"
fmap15_1[9, "Regions"] <- "Querencia"
fmap15_1[10, "Regions"] <- "Gaucha_do_Norte"
fmap15_1[11, "Regions"] <- "Nova_Xavantina"
fmap15_1[12, "Regions"] <- "Others_Nordeste"
fmap15_1[13, "Regions"] <- "Medio_Norte"
fmap15_1[14, "Regions"] <- "Lucas_do_Rio_Verde"
fmap15_1[16, "Regions"] <- "Nova_Mutum"
fmap15_1[17, "Regions"] <- "Ipiranga_do_Norte"
fmap15_1[20, "Regions"] <- "Santa_Rita_do_Trivelato"
fmap15_1[21, "Regions"] <- "Nova_Ubirata"
fmap15_1[23, "Regions"] <- "Sao_Jose_do_Rio_Claro"
fmap15_1[24, "Regions"] <- "Others_Medio_Norte"
fmap15_1[27, "Regions"] <- "Campo_Novo_dos_Parecis"
fmap15_1[28, "Regions"] <- "Campos_de_Julio"
fmap15_1[29, "Regions"] <- "Others_Oeste"
fmap15_1[30, "Regions"] <- "Centro_Sul"
fmap15_1[32, "Regions"] <- "Tangara_da_Serra"
fmap15_1[33, "Regions"] <- "Santo_Antonio_do_Leveger"
fmap15_1[34, "Regions"] <- "Chapada_dos_Guimaraes"
fmap15_1[35, "Regions"] <- "Others_Centro_Sul"
fmap15_1[37, "Regions"] <- "Campo_Verde"
fmap15_1[38, "Regions"] <- "Primavera_do_Leste"
fmap15_1[39, "Regions"] <- "Alto_Garcas_e_Alto_Taquari"
fmap15_1[40, "Regions"] <- "Jaciara_e_Juscimeira"
fmap15_1[41, "Regions"] <- "Santo_Antonio_do_Leste"
fmap15_1[42, "Regions"] <- "Others_Sudeste"
fmap15_1[43, "Regions"] <- "Mato_Grosso"


#Remove periods and spaces from decimal/thousands positions and convert Area_ha to numeric
fmap15_1$Area_ha <- gsub("\\.", "", fmap15_1$Area_ha)
fmap15_1$Area_ha <- gsub(" ", "", fmap15_1$Area_ha)
fmap15_1 <- fmap15_1 %>%
  mutate(Area_ha = as.numeric(Area_ha))

#xxx <- 3
#colnames(fmap15_1)[1]

for (xxx in 3:dim(fmap15_1)[2]){
  fmap15_1[[paste(colnames(fmap15_1)[xxx])]] <- gsub(",", "\\.", fmap15_1[[paste(colnames(fmap15_1)[xxx])]])
  fmap15_1[[paste(colnames(fmap15_1)[xxx])]] <- gsub("%", "", fmap15_1[[paste(colnames(fmap15_1)[xxx])]])
  fmap15_1[[paste(colnames(fmap15_1)[xxx])]] <- as.numeric(fmap15_1[[paste(colnames(fmap15_1)[xxx])]])
  fmap15_1[[paste(colnames(fmap15_1)[xxx])]] <- fmap15_1[[paste(colnames(fmap15_1)[xxx])]]/100
}
dim(fmap15_1)
sapply(fmap15_1, mode)

#Write final table to disk
write.csv(fmap15_1, file='maize_plant_2015_muni.csv', row.names=FALSE)

#2014-2015 maize planting regional
fmap15_2 <- as.data.frame(fmap15_2[5:nrow(fmap15_2), ], stringsAsFactors = FALSE)
fmap15_2[12] <- NULL
fmap15_2[11] <- NULL
fmap15_2[10] <- NULL
fmap15_2[6] <- NULL
hefmap15_2 <- c('Noroeste', 'Norte', 'Nordeste', 'Medio_Norte', 'Oeste',
                'Centro_Sul', 'Sudeste', 'Mato_Grosso')
names(fmap15_2) <- hefmap15_2
fmap15_2 <- fmap15_2[-c(14,16), ]

fmap15_2[1, "Noroeste"] <- "117.008"
fmap15_2[2, "Noroeste"] <- "0,0%"
fmap15_2[3, "Noroeste"] <- "0,0%"
fmap15_2[4, "Noroeste"] <- "1,0%"
fmap15_2[5, "Noroeste"] <- "6,0%"
fmap15_2[6, "Noroeste"] <- "12,0%"
fmap15_2[7, "Noroeste"] <- "20,0%"
fmap15_2[8, "Noroeste"] <- "80,0%"
fmap15_2[9, "Noroeste"] <- "96,0%"
fmap15_2[10, "Noroeste"] <- "99,4%"
fmap15_2[11, "Noroeste"] <- "100,0%"
fmap15_2[12, "Noroeste"] <- "0,6 p.p.%"
fmap15_2[13, "Noroeste"] <- "99,3%"
fmap15_2[14, "Noroeste"] <- "0,7 p.p."

#Transpose 2015 maize planting regions table (rows to columns, columns to rows)
fmap15_2 <- t(fmap15_2)

#Turn this transposed table into a data frame and remove headers in first row
fmap15_2 <- as.data.frame(fmap15_2[1:nrow(fmap15_2), ], sort= FALSE)

#Create new header names and insert them
setDT(fmap15_2, keep.rownames=TRUE)
colnames(fmap15_2)[1] <- "IMEA_Regions"
hefmap15_2 <- c('IMEA_Regions', 'Area_ha', '2015-01-16', '2015-01-22', '2015-01-29', '2015-02-05',
                '2015-02-12', '2015-02-19', '2015-02-26', '2015-03-05', '2015-03-12', '2015-03-19',
                 'weekly_change', '2014-03-20', 'change_in_plant_per')
names(fmap15_2) <- hefmap15_2

#change Area_ha column to numeric and remove periods from thousandths position
fmap15_2 <- fmap15_2 %>%
  mutate(Area_ha = as.numeric(gsub("\\.", "", Area_ha)))
#xxx <- 3
#colnames(fmap15_2)[1]

for (xxx in 3:dim(fmap15_2)[2]){
  fmap15_2[[paste(colnames(fmap15_2)[xxx])]] <- gsub(",", "\\.", fmap15_2[[paste(colnames(fmap15_2)[xxx])]])
  fmap15_2[[paste(colnames(fmap15_2)[xxx])]] <- gsub("%", "", fmap15_2[[paste(colnames(fmap15_2)[xxx])]])
  fmap15_2[[paste(colnames(fmap15_2)[xxx])]] <- gsub("p.p.", "", fmap15_2[[paste(colnames(fmap15_2)[xxx])]])
  fmap15_2[[paste(colnames(fmap15_2)[xxx])]] <- as.numeric(fmap15_2[[paste(colnames(fmap15_2)[xxx])]])
  fmap15_2[[paste(colnames(fmap15_2)[xxx])]] <- fmap15_2[[paste(colnames(fmap15_2)[xxx])]]/100
}
dim(fmap15_2)
sapply(fmap15_2, mode)

#Writing 2014-2015 maize planting as a CSV file
write.csv(fmap15_2, file='maize_plant_2015_region.csv', row.names=FALSE)

#2015-2016 maize planting regional
fmap16 <- as.data.frame(fmap16[2:nrow(fmap16), ], stringsAsFactors = FALSE)
fmap16 <- fmap16[,c(1,5,6,4,3,7,2,8,9)]
hefmap16 <- c('Headers', 'Noroeste', 'Norte', 'Nordeste', 'Medio_Norte', 'Oeste',
                'Centro_Sul', 'Sudeste', 'Mato_Grosso')
names(fmap16) <- hefmap16
fmap16 <- fmap16[-c(16,18), ]

#Transpose 2016 maize planting regions table (rows to columns, columns to rows)
fmap16 <- t(fmap16)

#Turn this transposed table into a data frame and remove headers in first row
fmap16 <- as.data.frame(fmap16[1:nrow(fmap16), ], sort= FALSE)

#Create new header names and insert them
setDT(fmap16, keep.rownames=TRUE)
colnames(fmap16)[1] <- "IMEA_Regions"
fmap16 <- fmap16[-c(1), ]
hefmap16 <- c('IMEA_Regions', 'Area_ha', '2016-01-14', '2016-01-21', '2016-01-28', '2016-02-04',
                '2016-02-11', '2016-02-18', '2016-02-25', '2016-03-03', '2016-03-10', '2016-03-17',
                '2016-03-24', '2016-03-31', 'weekly_change', '2015-03-19', 'change_in_plant_per')
names(fmap16) <- hefmap16

#change Area_ha column to numeric and remove periods from thousandths position
fmap16 <- fmap16 %>%
  mutate(Area_ha = as.numeric(gsub("\\.", "", Area_ha)))
#xxx <- 3
#colnames(fmap16)[1]

for (xxx in 3:dim(fmap16)[2]){
  fmap16[[paste(colnames(fmap16)[xxx])]] <- gsub(",", "\\.", fmap16[[paste(colnames(fmap16)[xxx])]])
  fmap16[[paste(colnames(fmap16)[xxx])]] <- gsub("%", "", fmap16[[paste(colnames(fmap16)[xxx])]])
  fmap16[[paste(colnames(fmap16)[xxx])]] <- gsub("p.p.", "", fmap16[[paste(colnames(fmap16)[xxx])]])
  fmap16[[paste(colnames(fmap16)[xxx])]] <- as.numeric(fmap16[[paste(colnames(fmap16)[xxx])]])
  fmap16[[paste(colnames(fmap16)[xxx])]] <- fmap16[[paste(colnames(fmap16)[xxx])]]/100
}
dim(fmap16)
sapply(fmap16, mode)

#Writing 2015-2016 maize planting as a CSV file
write.csv(fmap16, file='maize_plant_2016_region.csv', row.names=FALSE)

#2016-2017 maize planting regional
fmap17 <- as.data.frame(fmap17[2:nrow(fmap17), ], stringsAsFactors = FALSE)
fmap17 <- fmap17[,c(1,5,6,4,3,7,2,8,9)]
hefmap17 <- c('Headers', 'Noroeste', 'Norte', 'Nordeste', 'Medio_Norte', 'Oeste',
              'Centro_Sul', 'Sudeste', 'Mato_Grosso')
names(fmap17) <- hefmap17
fmap17 <- fmap17[-c(17,19), ]

#Transpose 2017 maize planting regions table (rows to columns, columns to rows)
fmap17 <- t(fmap17)

#Turn this transposed table into a data frame and remove headers in first row
fmap17 <- as.data.frame(fmap17[1:nrow(fmap17), ], sort= FALSE)

#Create new header names and insert them
setDT(fmap17, keep.rownames=TRUE)
colnames(fmap17)[1] <- "IMEA_Regions"
fmap17 <- fmap17[-c(1), ]
hefmap17 <- c('IMEA_Regions', 'Area_ha', '2017-01-06', '2017-01-13', '2017-01-20', '2017-01-27',
              '2017-02-03', '2017-02-10', '2017-02-17', '2017-02-24', '2017-03-03', '2017-03-10',
              '2017-03-17', '2017-03-24', '2017-03-31', 'weekly_change', '2016-03-31', 'change_in_plant_per')
names(fmap17) <- hefmap17

#change Area_ha column to numeric and remove periods from thousandths position
fmap17 <- fmap17 %>%
  mutate(Area_ha = as.numeric(gsub("\\.", "", Area_ha)))
#xxx <- 3
#colnames(fmap17)[1]

for (xxx in 3:dim(fmap17)[2]){
  fmap17[[paste(colnames(fmap17)[xxx])]] <- gsub(",", "\\.", fmap17[[paste(colnames(fmap17)[xxx])]])
  fmap17[[paste(colnames(fmap17)[xxx])]] <- gsub("%", "", fmap17[[paste(colnames(fmap17)[xxx])]])
  fmap17[[paste(colnames(fmap17)[xxx])]] <- gsub("p.p.", "", fmap17[[paste(colnames(fmap17)[xxx])]])
  fmap17[[paste(colnames(fmap17)[xxx])]] <- as.numeric(fmap17[[paste(colnames(fmap17)[xxx])]])
  fmap17[[paste(colnames(fmap17)[xxx])]] <- fmap17[[paste(colnames(fmap17)[xxx])]]/100
}
dim(fmap17)
sapply(fmap17, mode)

#Writing 2016-2017 maize planting as a CSV file
write.csv(fmap17, file='maize_plant_2017_region.csv', row.names=FALSE)

#2017-2018 maize planting regional
fmap18 <- as.data.frame(fmap18[2:nrow(fmap18), ], stringsAsFactors = FALSE)
fmap18 <- fmap18[,c(1,5,6,4,3,7,2,8,9)]
hefmap18 <- c('Headers', 'Noroeste', 'Norte', 'Nordeste', 'Medio_Norte', 'Oeste',
              'Centro_Sul', 'Sudeste', 'Mato_Grosso')
names(fmap18) <- hefmap18
fmap18 <- fmap18[-c(6,15,19,21), ]
fmap18[3, "Norte"] <- "0,04%"
fmap18[8, "Norte"] <- "53,65%"
fmap18[11, "Norte"] <- "99,00%"
fmap18[16, "Norte"] <- "100,00%"

#Transpose 2018 maize planting regions table (rows to columns, columns to rows)
fmap18 <- t(fmap18)

#Turn this transposed table into a data frame and remove headers in first row
fmap18 <- as.data.frame(fmap18[1:nrow(fmap18), ], sort= FALSE)

#Create new header names and insert them
setDT(fmap18, keep.rownames=TRUE)
colnames(fmap18)[1] <- "IMEA_Regions"
fmap18 <- fmap18[-c(1), ]
hefmap18 <- c('IMEA_Regions', 'Area_ha', '2018-01-12', '2018-01-19', '2018-01-26',
              '2018-02-02', '2018-02-09', '2018-02-16', '2018-02-23', '2018-03-02', '2018-03-09',
              '2018-03-16', '2018-03-23', '2018-03-30', '2018-04-06', 'weekly_change',
              '2017-03-24', 'change_in_plant_per')
names(fmap18) <- hefmap18

#change Area_ha column to numeric and remove periods from thousandths position
fmap18 <- fmap18 %>%
  mutate(Area_ha = as.numeric(gsub("\\.", "", Area_ha)))
#xxx <- 3
#colnames(fmap18)[1]

for (xxx in 3:dim(fmap18)[2]){
  fmap18[[paste(colnames(fmap18)[xxx])]] <- gsub(",", "\\.", fmap18[[paste(colnames(fmap18)[xxx])]])
  fmap18[[paste(colnames(fmap18)[xxx])]] <- gsub("%", "", fmap18[[paste(colnames(fmap18)[xxx])]])
  fmap18[[paste(colnames(fmap18)[xxx])]] <- gsub("p.p.", "", fmap18[[paste(colnames(fmap18)[xxx])]])
  fmap18[[paste(colnames(fmap18)[xxx])]] <- as.numeric(fmap18[[paste(colnames(fmap18)[xxx])]])
  fmap18[[paste(colnames(fmap18)[xxx])]] <- fmap18[[paste(colnames(fmap18)[xxx])]]/100
}
dim(fmap18)
sapply(fmap18, mode)

#Writing 2017-2018 maize planting as a CSV file
write.csv(fmap18, file='maize_plant_2018_region.csv', row.names=FALSE)


# Location of maize harvest files of interest
mah9 <- 'http://www.imea.com.br/upload/publicacoes/arquivos/090827_ACM.pdf'
mah10_1 <- 'http://www.imea.com.br/upload/publicacoes/arquivos/100701_ICM.pdf'
mah10_2 <- 'http://www.imea.com.br/upload/publicacoes/arquivos/100812_ICM.pdf'
mah11 <- 'http://www.imea.com.br/upload/publicacoes/arquivos/18_08_2011_ECMilho.pdf'
mah12 <- 'http://www.imea.com.br/upload/publicacoes/arquivos/R403_2012_08_24_ECMilho.pdf'
mah13 <- 'http://www.imea.com.br/upload/publicacoes/arquivos/R403_05_09_13_Tratamento_Colheita_12-13.pdf'
mah14 <- 'http://www.imea.com.br/upload/publicacoes/arquivos/R203_14_09_04_Tratamento_Colheita_13-14.pdf'
mah15_1 <- 'http://www.imea.com.br/upload/publicacoes/arquivos/Colheita_23_07_2015.pdf'
mah15_2 <- 'http://www.imea.com.br/upload/publicacoes/arquivos/Colheita_03_09_2015.pdf'
mah16 <- 'http://www.imea.com.br/upload/publicacoes/arquivos/R403_Colheita_de_milho_15.16_sem._18.08.2016.pdf'
mah17 <- 'http://www.imea.com.br/upload/publicacoes/arquivos/01092017185825.pdf'
mah18 <- 'http://www.imea.com.br/upload/publicacoes/arquivos/06092018212011.pdf'

# Extract maize harvest tables
outmah9 <- extract_tables(mah9)
outmah10_1 <- extract_tables(mah10_1)
outmah10_2 <- extract_tables(mah10_2)
outmah11 <- extract_tables(mah11)
outmah12 <- extract_tables(mah12)
outmah13 <- extract_tables(mah13)
outmah14 <- extract_tables(mah14)
outmah15_1 <- extract_tables(mah15_1)
outmah15_2 <- extract_tables(mah15_2)
outmah16 <- extract_tables(mah16)
outmah17 <- extract_tables(mah17)
outmah18 <- extract_tables(mah18)

# Create individual data matrices for maize harvesting data
fmah9 <- do.call(rbind, outmah9)
fmah10_1_1 <- do.call(rbind, outmah10_1[1])
fmah10_1_2 <- do.call(rbind, outmah10_1[2])
fmah10_2_1 <- do.call(rbind, outmah10_2[1])
fmah10_2_2 <- do.call(rbind, outmah10_2[2])
fmah11_1 <- do.call(rbind, outmah11[1])
fmah11_2 <- do.call(rbind, outmah11[2])
fmah12_1 <- do.call(rbind, outmah12[1])
fmah12_2 <- do.call(rbind, outmah12[2])
fmah13_1 <- do.call(rbind, outmah13[1])
fmah13_2 <- do.call(rbind, outmah13[2])
fmah14_1 <- do.call(rbind, outmah14[1])
fmah14_2 <- do.call(rbind, outmah14[2])
fmah15_1 <- do.call(rbind, outmah15_1)
fmah15_2 <- do.call(rbind, outmah15_2)
fmah16 <- do.call(rbind, outmah16)
fmah17 <- do.call(rbind, outmah17)
fmah18 <- do.call(rbind, outmah18)
                  

#2008-2009 maize harvesting - setting as data frame
fmah9 <- as.data.frame(fmah9[2:nrow(fmah9), ], stringsAsFactors = FALSE)
hefmah9 <- c('Regions', 'Area_ha', '2009-06-11', '2009-06-18', '2009-06-25', '2009-07-02',
                '2009-07-09', '2009-07-16', '2009-07-23', '2009-07-30', '2009-08-06', '2009-08-13',
                '2009-08-20', '2009-08-27')
names(fmah9) <- hefmah9


#2013-2014 maize planting - renaming rows with errors
fmah9[3, "Regions"] <- "Others_Noroeste"
fmah9[5, "Regions"] <- "Itauba"
fmah9[6, "Regions"] <- "Others_Norte"
fmah9[9, "Regions"] <- "Querencia"
fmah9[10, "Regions"] <- "Gaucha_do_Norte"
fmah9[11, "Regions"] <- "Nova_Xavantina"
fmah9[12, "Regions"] <- "Others_Nordeste"
fmah9[13, "Regions"] <- "Medio_Norte"
fmah9[14, "Regions"] <- "Lucas_do_Rio_Verde"
fmah9[16, "Regions"] <- "Nova_Mutum"
fmah9[17, "Regions"] <- "Ipiranga_do_Norte"
fmah9[20, "Regions"] <- "Nova_Ubirata"
fmah9[22, "Regions"] <- "Sao_Jose_do_Rio_Claro"
fmah9[23, "Regions"] <- "Others_Medio_Norte"
fmah9[26, "Regions"] <- "Campo_Novo_dos_Parecis"
fmah9[27, "Regions"] <- "Campos_de_Julio"
fmah9[28, "Regions"] <- "Others_Oeste"
fmah9[29, "Regions"] <- "Centro_Sul"
fmah9[31, "Regions"] <- "Tangara_da_Serra"
fmah9[32, "Regions"] <- "Santo_Antonio_do_Leveger"
fmah9[33, "Regions"] <- "Chapada_dos_Guimaraes"
fmah9[34, "Regions"] <- "Others_Centro_Sul"
fmah9[36, "Regions"] <- "Campo_Verde"
fmah9[37, "Regions"] <- "Primavera_do_Leste"
fmah9[38, "Regions"] <- "Alto_Garcas_e_Alto_Taquari"
fmah9[39, "Regions"] <- "Jaciara_e_Juscimeira"
fmah9[40, "Regions"] <- "Santo_Antonio_do_Leste"
fmah9[41, "Regions"] <- "Others_Sudeste"
fmah9[42, "Regions"] <- "Mato_Grosso"


#Remove periods and spaces from decimal/thousands positions and convert Area_ha to numeric
fmah9$Area_ha <- gsub("\\.", "", fmah9$Area_ha)
fmah9$Area_ha <- gsub(" ", "", fmah9$Area_ha)
fmah9 <- fmah9 %>%
  mutate(Area_ha = as.numeric(Area_ha))

#xxx <- 3
#colnames(fmah9)[1]

for (xxx in 3:dim(fmah9)[2]){
  fmah9[[paste(colnames(fmah9)[xxx])]] <- gsub(",", "\\.", fmah9[[paste(colnames(fmah9)[xxx])]])
  fmah9[[paste(colnames(fmah9)[xxx])]] <- gsub("%", "", fmah9[[paste(colnames(fmah9)[xxx])]])
  fmah9[[paste(colnames(fmah9)[xxx])]] <- as.numeric(fmah9[[paste(colnames(fmah9)[xxx])]])
  fmah9[[paste(colnames(fmah9)[xxx])]] <- fmah9[[paste(colnames(fmah9)[xxx])]]/100
}
dim(fmah9)
sapply(fmah9, mode)

#Write final table to disk
write.csv(fmah9, file='maize_harvest_2009_muni.csv', row.names=FALSE)

#2009-2010 maize harvest - setting as data frame - 1st file
fmah10_1_1 <- as.data.frame(fmah10_1_1[2:nrow(fmah10_1_1), ], stringsAsFactors = FALSE)
fmah10_1_1[9] <- NULL
fmah10_1_1[8] <- NULL
hefmah10_1_1 <- c('Regions', 'Area_ha', '2010-06-02', '2010-06-10', '2010-06-17', '2010-06-24',
                  '2010-07-01')
names(fmah10_1_1) <- hefmah10_1_1
fmah10_2_1 <- as.data.frame(fmah10_2_1[2:nrow(fmah10_2_1), ], stringsAsFactors = FALSE)
fmah10_2_1[3] <- NULL
fmah10_2_1[2] <- NULL
hefmah10_2_1 <- c('Regions', '2010-07-08', '2010-07-15', '2010-07-22', '2010-07-29',
                  '2010-08-05', '2010-08-12')
names(fmah10_2_1) <- hefmah10_2_1

#2009-2010 maize harvest - renaming rows with errors
fmah10_1_1[3, "Regions"] <- "Others_Noroeste"
fmah10_1_1[5, "Regions"] <- "Itauba"
fmah10_1_1[6, "Regions"] <- "Others_Norte"
fmah10_1_1[9, "Regions"] <- "Querencia"
fmah10_1_1[10, "Regions"] <- "Gaucha_do_Norte"
fmah10_1_1[11, "Regions"] <- "Nova_Xavantina"
fmah10_1_1[12, "Regions"] <- "Others_Nordeste"
fmah10_1_1[13, "Regions"] <- "Medio_Norte"
fmah10_1_1[14, "Regions"] <- "Lucas_do_Rio_Verde"
fmah10_1_1[16, "Regions"] <- "Nova_Mutum"
fmah10_1_1[17, "Regions"] <- "Ipiranga_do_Norte"
fmah10_1_1[20, "Regions"] <- "Nova_Ubirata"
fmah10_1_1[22, "Regions"] <- "Sao_Jose_do_Rio_Claro"
fmah10_1_1[23, "Regions"] <- "Others_Medio_Norte"
fmah10_1_1[26, "Regions"] <- "Campo_Novo_dos_Parecis"
fmah10_1_1[27, "Regions"] <- "Campos_de_Julio"
fmah10_1_1[28, "Regions"] <- "Others_Oeste"
fmah10_1_1[29, "Regions"] <- "Centro_Sul"
fmah10_1_1[31, "Regions"] <- "Tangara_da_Serra"
fmah10_1_1[32, "Regions"] <- "Santo_Antonio_do_Leveger"
fmah10_1_1[33, "Regions"] <- "Chapada_dos_Guimaraes"
fmah10_1_1[34, "Regions"] <- "Others_Centro_Sul"
fmah10_1_1[36, "Regions"] <- "Campo_Verde"
fmah10_1_1[37, "Regions"] <- "Primavera_do_Leste"
fmah10_1_1[38, "Regions"] <- "Alto_Garcas_e_Alto_Taquari"
fmah10_1_1[39, "Regions"] <- "Jaciara_e_Juscimeira"
fmah10_1_1[40, "Regions"] <- "Santo_Antonio_do_Leste"
fmah10_1_1[41, "Regions"] <- "Others_Sudeste"
fmah10_1_1[42, "Regions"] <- "Mato_Grosso"

fmah10_2_1[3, "Regions"] <- "Others_Noroeste"
fmah10_2_1[5, "Regions"] <- "Itauba"
fmah10_2_1[6, "Regions"] <- "Others_Norte"
fmah10_2_1[9, "Regions"] <- "Querencia"
fmah10_2_1[10, "Regions"] <- "Gaucha_do_Norte"
fmah10_2_1[11, "Regions"] <- "Nova_Xavantina"
fmah10_2_1[12, "Regions"] <- "Others_Nordeste"
fmah10_2_1[13, "Regions"] <- "Medio_Norte"
fmah10_2_1[14, "Regions"] <- "Lucas_do_Rio_Verde"
fmah10_2_1[16, "Regions"] <- "Nova_Mutum"
fmah10_2_1[17, "Regions"] <- "Ipiranga_do_Norte"
fmah10_2_1[20, "Regions"] <- "Nova_Ubirata"
fmah10_2_1[22, "Regions"] <- "Sao_Jose_do_Rio_Claro"
fmah10_2_1[23, "Regions"] <- "Others_Medio_Norte"
fmah10_2_1[26, "Regions"] <- "Campo_Novo_dos_Parecis"
fmah10_2_1[27, "Regions"] <- "Campos_de_Julio"
fmah10_2_1[28, "Regions"] <- "Others_Oeste"
fmah10_2_1[29, "Regions"] <- "Centro_Sul"
fmah10_2_1[31, "Regions"] <- "Tangara_da_Serra"
fmah10_2_1[32, "Regions"] <- "Santo_Antonio_do_Leveger"
fmah10_2_1[33, "Regions"] <- "Chapada_dos_Guimaraes"
fmah10_2_1[34, "Regions"] <- "Others_Centro_Sul"
fmah10_2_1[36, "Regions"] <- "Campo_Verde"
fmah10_2_1[37, "Regions"] <- "Primavera_do_Leste"
fmah10_2_1[38, "Regions"] <- "Alto_Garcas_e_Alto_Taquari"
fmah10_2_1[39, "Regions"] <- "Jaciara_e_Juscimeira"
fmah10_2_1[40, "Regions"] <- "Santo_Antonio_do_Leste"
fmah10_2_1[41, "Regions"] <- "Others_Sudeste"
fmah10_2_1[42, "Regions"] <- "Mato_Grosso"

fmah10_mun <- merge(fmah10_1_1, fmah10_2_1, by="Regions", sort = FALSE)

#Remove periods and spaces from decimal/thousands positions and convert Area_ha to numeric
fmah10_mun$Area_ha <- gsub("\\.", "", fmah10_mun$Area_ha)
fmah10_mun$Area_ha <- gsub(" ", "", fmah10_mun$Area_ha)
fmah10_mun <- fmah10_mun %>%
  mutate(Area_ha = as.numeric(Area_ha))

#xxx <- 3
#colnames(fmah10_mun)[1]

for (xxx in 3:dim(fmah10_mun)[2]){
  fmah10_mun[[paste(colnames(fmah10_mun)[xxx])]] <- gsub(",", "\\.", fmah10_mun[[paste(colnames(fmah10_mun)[xxx])]])
  fmah10_mun[[paste(colnames(fmah10_mun)[xxx])]] <- gsub("%", "", fmah10_mun[[paste(colnames(fmah10_mun)[xxx])]])
  fmah10_mun[[paste(colnames(fmah10_mun)[xxx])]] <- as.numeric(fmah10_mun[[paste(colnames(fmah10_mun)[xxx])]])
  fmah10_mun[[paste(colnames(fmah10_mun)[xxx])]] <- fmah10_mun[[paste(colnames(fmah10_mun)[xxx])]]/100
}
dim(fmah10_mun)
sapply(fmah10_mun, mode)

#Write final table to disk
write.csv(fmah10_mun, file='maize_harvest_2010_muni.csv', row.names=FALSE)

#2009-2010 maize harvest regional
fmah10_1_2 <- as.data.frame(fmah10_1_2[2:nrow(fmah10_1_2), ], stringsAsFactors = FALSE)
fmah10_2_2 <- as.data.frame(fmah10_2_2[2:nrow(fmah10_2_2), ], stringsAsFactors = FALSE)

hefmah10_1_2 <- c('Headers', 'Noroeste', 'Norte', 'Nordeste', 'Medio_Norte', 'Oeste',
                  'Centro_Sul', 'Sudeste', 'Mato_Grosso')
names(fmah10_1_2) <- hefmah10_1_2
fmah10_1_2 <- fmah10_1_2[-c(4,6), ]
hefmah10_2_2 <- c('Headers', 'Noroeste', 'Norte', 'Nordeste', 'Medio_Norte', 'Oeste',
                  'Centro_Sul', 'Sudeste', 'Mato_Grosso')
names(fmah10_2_2) <- hefmah10_2_2
fmah10_2_2 <- fmah10_2_2[-c(1,4,6), ]

#Transpose 2010 maize harvesting regions table (rows to columns, columns to rows)
fmah10_1_2 <- t(fmah10_1_2)
fmah10_2_2 <- t(fmah10_2_2)
#Turn this transposed table into a data frame and remove headers in first row
fmah10_1_2 <- as.data.frame(fmah10_1_2[1:nrow(fmah10_1_2), ], sort= FALSE)
fmah10_2_2 <- as.data.frame(fmah10_2_2[1:nrow(fmah10_2_2), ], sort= FALSE)
#Create new header names and insert them
setDT(fmah10_1_2, keep.rownames=TRUE)
colnames(fmah10_1_2)[1] <- "IMEA_Regions"
fmah10_1_2 <- fmah10_1_2[-c(1), ]
hefmah10_1_2 <- c('IMEA_Regions', 'Area_ha', '2010-07-01', '2009-07-02', 'change_in_plant_per_1')
names(fmah10_1_2) <- hefmah10_1_2

setDT(fmah10_2_2, keep.rownames=TRUE)
colnames(fmah10_2_2)[1] <- "IMEA_Regions"
fmah10_2_2 <- fmah10_2_2[-c(1), ]
hefmah10_2_2 <- c('IMEA_Regions', '2010-08-12', '2009-08-13', 'change_in_plant_per_2')
names(fmah10_2_2) <- hefmah10_2_2

fmah10_reg <- merge(fmah10_1_2, fmah10_2_2, by="IMEA_Regions", sort = FALSE)

#change Area_ha column to numeric and remove periods from thousandths position
fmah10_reg <- fmah10_reg %>%
  mutate(Area_ha = as.numeric(gsub("\\.", "", Area_ha)))
#xxx <- 3
#colnames(fmah10_reg)[1]

for (xxx in 3:dim(fmah10_reg)[2]){
  fmah10_reg[[paste(colnames(fmah10_reg)[xxx])]] <- gsub(",", "\\.", fmah10_reg[[paste(colnames(fmah10_reg)[xxx])]])
  fmah10_reg[[paste(colnames(fmah10_reg)[xxx])]] <- gsub("%", "", fmah10_reg[[paste(colnames(fmah10_reg)[xxx])]])
  fmah10_reg[[paste(colnames(fmah10_reg)[xxx])]] <- as.numeric(fmah10_reg[[paste(colnames(fmah10_reg)[xxx])]])
  fmah10_reg[[paste(colnames(fmah10_reg)[xxx])]] <- fmah10_reg[[paste(colnames(fmah10_reg)[xxx])]]/100
}
dim(fmah10_reg)
sapply(fmah10_reg, mode)

#Writing 2009-2010 maize planting as a CSV file
write.csv(fmah10_reg, file='maize_harvest_2010_region.csv', row.names=FALSE)

#2010-2011 maize harvesting - setting as data frame
fmah11_1 <- as.data.frame(fmah11_1[2:nrow(fmah11_1), ], stringsAsFactors = FALSE)
hefmah11_1 <- c('Regions', 'Area_ha', '2011-06-09', '2011-06-16', '2011-06-23', '2011-06-30',
             '2011-07-07', '2011-07-14', '2011-07-21', '2011-07-28', '2011-08-04',
             '2011-08-11', '2011-08-18')
names(fmah11_1) <- hefmah11_1


#2010-2011 maize harvesting - renaming rows with errors
fmah11_1[3, "Regions"] <- "Others_Noroeste"
fmah11_1[5, "Regions"] <- "Itauba"
fmah11_1[6, "Regions"] <- "Others_Norte"
fmah11_1[9, "Regions"] <- "Querencia"
fmah11_1[10, "Regions"] <- "Gaucha_do_Norte"
fmah11_1[11, "Regions"] <- "Nova_Xavantina"
fmah11_1[12, "Regions"] <- "Others_Nordeste"
fmah11_1[13, "Regions"] <- "Medio_Norte"
fmah11_1[14, "Regions"] <- "Lucas_do_Rio_Verde"
fmah11_1[16, "Regions"] <- "Nova_Mutum"
fmah11_1[17, "Regions"] <- "Ipiranga_do_Norte"
fmah11_1[20, "Regions"] <- "Santa_Rita_do_Trivelato"
fmah11_1[21, "Regions"] <- "Nova_Ubirata"
fmah11_1[23, "Regions"] <- "Sao_Jose_do_Rio_Claro"
fmah11_1[24, "Regions"] <- "Others_Medio_Norte"
fmah11_1[27, "Regions"] <- "Campo_Novo_dos_Parecis"
fmah11_1[28, "Regions"] <- "Campos_de_Julio"
fmah11_1[29, "Regions"] <- "Others_Oeste"
fmah11_1[30, "Regions"] <- "Centro_Sul"
fmah11_1[32, "Regions"] <- "Tangara_da_Serra"
fmah11_1[33, "Regions"] <- "Santo_Antonio_do_Leveger"
fmah11_1[34, "Regions"] <- "Chapada_dos_Guimaraes"
fmah11_1[35, "Regions"] <- "Others_Centro_Sul"
fmah11_1[37, "Regions"] <- "Campo_Verde"
fmah11_1[38, "Regions"] <- "Primavera_do_Leste"
fmah11_1[39, "Regions"] <- "Alto_Garcas_e_Alto_Taquari"
fmah11_1[40, "Regions"] <- "Jaciara_e_Juscimeira"
fmah11_1[41, "Regions"] <- "Santo_Antonio_do_Leste"
fmah11_1[42, "Regions"] <- "Others_Sudeste"
fmah11_1[43, "Regions"] <- "Mato_Grosso"


#Remove periods and spaces from decimal/thousands positions and convert Area_ha to numeric
fmah11_1$Area_ha <- gsub("\\.", "", fmah11_1$Area_ha)
fmah11_1$Area_ha <- gsub(" ", "", fmah11_1$Area_ha)
fmah11_1 <- fmah11_1 %>%
  mutate(Area_ha = as.numeric(Area_ha))

#xxx <- 3
#colnames(fmah11_1)[1]

for (xxx in 3:dim(fmah11_1)[2]){
  fmah11_1[[paste(colnames(fmah11_1)[xxx])]] <- gsub(",", "\\.", fmah11_1[[paste(colnames(fmah11_1)[xxx])]])
  fmah11_1[[paste(colnames(fmah11_1)[xxx])]] <- gsub("%", "", fmah11_1[[paste(colnames(fmah11_1)[xxx])]])
  fmah11_1[[paste(colnames(fmah11_1)[xxx])]] <- as.numeric(fmah11_1[[paste(colnames(fmah11_1)[xxx])]])
  fmah11_1[[paste(colnames(fmah11_1)[xxx])]] <- fmah11_1[[paste(colnames(fmah11_1)[xxx])]]/100
}
dim(fmah11_1)
sapply(fmah11_1, mode)

#Write final table to disk
write.csv(fmah11_1, file='maize_harvest_2011_muni.csv', row.names=FALSE)

#2010-2011 maize harvest regional
fmah11_2 <- as.data.frame(fmah11_2[2:nrow(fmah11_2), ], stringsAsFactors = FALSE)

hefmah11_2 <- c('Headers', 'Noroeste', 'Norte', 'Nordeste', 'Medio_Norte', 'Oeste',
                  'Centro_Sul', 'Sudeste', 'Mato_Grosso')
names(fmah11_2) <- hefmah11_2
fmah11_2 <- fmah11_2[-c(4,6), ]

#Transpose 2011 maize harvesting regions table (rows to columns, columns to rows)
fmah11_2 <- t(fmah11_2)

#Turn this transposed table into a data frame and remove headers in first row
fmah11_2 <- as.data.frame(fmah11_2[1:nrow(fmah11_2), ], sort= FALSE)

#Create new header names and insert them
setDT(fmah11_2, keep.rownames=TRUE)
colnames(fmah11_2)[1] <- "IMEA_Regions"
fmah11_2 <- fmah11_2[-c(1), ]
hefmah11_2 <- c('IMEA_Regions', 'Area_ha', '2011-08-18', '2010-08-19', 'change_in_plant_per_1')
names(fmah11_2) <- hefmah11_2

#change Area_ha column to numeric and remove periods from thousandths position
fmah11_2 <- fmah11_2 %>%
  mutate(Area_ha = as.numeric(gsub("\\.", "", Area_ha)))
#xxx <- 3
#colnames(fmah11_2)[1]

for (xxx in 3:dim(fmah11_2)[2]){
  fmah11_2[[paste(colnames(fmah11_2)[xxx])]] <- gsub(",", "\\.", fmah11_2[[paste(colnames(fmah11_2)[xxx])]])
  fmah11_2[[paste(colnames(fmah11_2)[xxx])]] <- gsub("%", "", fmah11_2[[paste(colnames(fmah11_2)[xxx])]])
  fmah11_2[[paste(colnames(fmah11_2)[xxx])]] <- gsub("p.p.", "", fmah11_2[[paste(colnames(fmah11_2)[xxx])]])
  fmah11_2[[paste(colnames(fmah11_2)[xxx])]] <- as.numeric(fmah11_2[[paste(colnames(fmah11_2)[xxx])]])
  fmah11_2[[paste(colnames(fmah11_2)[xxx])]] <- fmah11_2[[paste(colnames(fmah11_2)[xxx])]]/100
}
dim(fmah11_2)
sapply(fmah11_2, mode)

#Writing 2010-2011 maize planting as a CSV file
write.csv(fmah11_2, file='maize_harvest_2011_region.csv', row.names=FALSE)

#2011-2012 maize harvesting - setting as data frame
fmah12_1 <- as.data.frame(fmah12_1[2:nrow(fmah12_1), ], stringsAsFactors = FALSE)
hefmah12_1 <- c('Regions', 'Area_ha', '2012-05-24', '2012-05-31', '2012-06-07', '2012-06-14', 
                '2012-06-21', '2012-06-28', '2012-07-05', '2012-07-12', '2012-07-19', '2012-07-26',
                '2012-08-02', '2012-08-09', '2012-08-16', '2012-08-23')
names(fmah12_1) <- hefmah12_1


#2010-2011 maize harvesting - renaming rows with errors
fmah12_1[3, "Regions"] <- "Others_Noroeste"
fmah12_1[5, "Regions"] <- "Itauba"
fmah12_1[6, "Regions"] <- "Others_Norte"
fmah12_1[9, "Regions"] <- "Querencia"
fmah12_1[10, "Regions"] <- "Gaucha_do_Norte"
fmah12_1[11, "Regions"] <- "Nova_Xavantina"
fmah12_1[12, "Regions"] <- "Others_Nordeste"
fmah12_1[13, "Regions"] <- "Medio_Norte"
fmah12_1[14, "Regions"] <- "Lucas_do_Rio_Verde"
fmah12_1[16, "Regions"] <- "Nova_Mutum"
fmah12_1[17, "Regions"] <- "Ipiranga_do_Norte"
fmah12_1[20, "Regions"] <- "Santa_Rita_do_Trivelato"
fmah12_1[21, "Regions"] <- "Nova_Ubirata"
fmah12_1[23, "Regions"] <- "Sao_Jose_do_Rio_Claro"
fmah12_1[24, "Regions"] <- "Others_Medio_Norte"
fmah12_1[27, "Regions"] <- "Campo_Novo_dos_Parecis"
fmah12_1[28, "Regions"] <- "Campos_de_Julio"
fmah12_1[29, "Regions"] <- "Others_Oeste"
fmah12_1[30, "Regions"] <- "Centro_Sul"
fmah12_1[32, "Regions"] <- "Tangara_da_Serra"
fmah12_1[33, "Regions"] <- "Santo_Antonio_do_Leveger"
fmah12_1[34, "Regions"] <- "Chapada_dos_Guimaraes"
fmah12_1[35, "Regions"] <- "Others_Centro_Sul"
fmah12_1[37, "Regions"] <- "Campo_Verde"
fmah12_1[38, "Regions"] <- "Primavera_do_Leste"
fmah12_1[39, "Regions"] <- "Alto_Garcas_e_Alto_Taquari"
fmah12_1[40, "Regions"] <- "Jaciara_e_Juscimeira"
fmah12_1[41, "Regions"] <- "Santo_Antonio_do_Leste"
fmah12_1[42, "Regions"] <- "Others_Sudeste"
fmah12_1[43, "Regions"] <- "Mato_Grosso"


#Remove periods and spaces from decimal/thousands positions and convert Area_ha to numeric
fmah12_1$Area_ha <- gsub("\\.", "", fmah12_1$Area_ha)
fmah12_1$Area_ha <- gsub(" ", "", fmah12_1$Area_ha)
fmah12_1 <- fmah12_1 %>%
  mutate(Area_ha = as.numeric(Area_ha))

#xxx <- 3
#colnames(fmah12_1)[1]

for (xxx in 3:dim(fmah12_1)[2]){
  fmah12_1[[paste(colnames(fmah12_1)[xxx])]] <- gsub(",", "\\.", fmah12_1[[paste(colnames(fmah12_1)[xxx])]])
  fmah12_1[[paste(colnames(fmah12_1)[xxx])]] <- gsub("%", "", fmah12_1[[paste(colnames(fmah12_1)[xxx])]])
  fmah12_1[[paste(colnames(fmah12_1)[xxx])]] <- as.numeric(fmah12_1[[paste(colnames(fmah12_1)[xxx])]])
  fmah12_1[[paste(colnames(fmah12_1)[xxx])]] <- fmah12_1[[paste(colnames(fmah12_1)[xxx])]]/100
}
dim(fmah12_1)
sapply(fmah12_1, mode)

#Write final table to disk
write.csv(fmah12_1, file='maize_harvest_2012_muni.csv', row.names=FALSE)

#2011-2012 maize harvest regional
fmah12_2 <- as.data.frame(fmah12_2[2:nrow(fmah12_2), ], stringsAsFactors = FALSE)

hefmah12_2 <- c('Headers', 'Noroeste', 'Norte', 'Nordeste', 'Medio_Norte', 'Oeste',
                'Centro_Sul', 'Sudeste', 'Mato_Grosso')
names(fmah12_2) <- hefmah12_2
fmah12_2 <- fmah12_2[-c(17,19), ]

#Transpose 2011 maize harvesting regions table (rows to columns, columns to rows)
fmah12_2 <- t(fmah12_2)

#Turn this transposed table into a data frame and remove headers in first row
fmah12_2 <- as.data.frame(fmah12_2[1:nrow(fmah12_2), ], sort= FALSE)

#Create new header names and insert them
setDT(fmah12_2, keep.rownames=TRUE)
colnames(fmah12_2)[1] <- "IMEA_Regions"
fmah12_2 <- fmah12_2[-c(1), ]
hefmah12_2 <- c('IMEA_Regions', 'Area_ha', '2012-05-24', '2012-05-31', '2012-06-07', '2012-06-14', 
                '2012-06-21', '2012-06-28', '2012-07-05', '2012-07-12', '2012-07-19', '2012-07-26',
                '2012-08-02', '2012-08-09', '2012-08-16', '2012-08-24', '2011-08-25',
                'change_in_plant_per')
names(fmah12_2) <- hefmah12_2

#change Area_ha column to numeric and remove periods from thousandths position
fmah12_2 <- fmah12_2 %>%
  mutate(Area_ha = as.numeric(gsub("\\.", "", Area_ha)))
#xxx <- 3
#colnames(fmah12_2)[1]

for (xxx in 3:dim(fmah12_2)[2]){
  fmah12_2[[paste(colnames(fmah12_2)[xxx])]] <- gsub(",", "\\.", fmah12_2[[paste(colnames(fmah12_2)[xxx])]])
  fmah12_2[[paste(colnames(fmah12_2)[xxx])]] <- gsub("%", "", fmah12_2[[paste(colnames(fmah12_2)[xxx])]])
  fmah12_2[[paste(colnames(fmah12_2)[xxx])]] <- gsub("p.p.", "", fmah12_2[[paste(colnames(fmah12_2)[xxx])]])
  fmah12_2[[paste(colnames(fmah12_2)[xxx])]] <- as.numeric(fmah12_2[[paste(colnames(fmah12_2)[xxx])]])
  fmah12_2[[paste(colnames(fmah12_2)[xxx])]] <- fmah12_2[[paste(colnames(fmah12_2)[xxx])]]/100
}
dim(fmah12_2)
sapply(fmah12_2, mode)

#Writing 2011-2012 maize planting as a CSV file
write.csv(fmah12_2, file='maize_harvest_2012_region.csv', row.names=FALSE)

#2012-2013 maize harvesting - setting as data frame
fmah13_1 <- as.data.frame(fmah13_1[2:nrow(fmah13_1), ], stringsAsFactors = FALSE)
fmah13_1[2] <- NULL 
hefmah13_1 <- c('Regions', 'Area_ha', '2013-06-06', '2013-06-13', '2013-06-20', '2013-06-27', 
                '2013-07-04', '2013-07-11', '2013-07-18', '2013-07-25', '2013-08-01', '2013-08-08',
                '2013-08-15', '2013-08-22', '2013-08-29', '2013-09-05')
names(fmah13_1) <- hefmah13_1


#2012-2013 maize harvesting - renaming rows with errors
fmah13_1[3, "Regions"] <- "Others_Noroeste"
fmah13_1[5, "Regions"] <- "Itauba"
fmah13_1[6, "Regions"] <- "Others_Norte"
fmah13_1[9, "Regions"] <- "Querencia"
fmah13_1[10, "Regions"] <- "Gaucha_do_Norte"
fmah13_1[11, "Regions"] <- "Nova_Xavantina"
fmah13_1[12, "Regions"] <- "Others_Nordeste"
fmah13_1[13, "Regions"] <- "Medio_Norte"
fmah13_1[14, "Regions"] <- "Lucas_do_Rio_Verde"
fmah13_1[16, "Regions"] <- "Nova_Mutum"
fmah13_1[17, "Regions"] <- "Ipiranga_do_Norte"
fmah13_1[20, "Regions"] <- "Santa_Rita_do_Trivelato"
fmah13_1[21, "Regions"] <- "Nova_Ubirata"
fmah13_1[23, "Regions"] <- "Sao_Jose_do_Rio_Claro"
fmah13_1[24, "Regions"] <- "Others_Medio_Norte"
fmah13_1[27, "Regions"] <- "Campo_Novo_dos_Parecis"
fmah13_1[28, "Regions"] <- "Campos_de_Julio"
fmah13_1[29, "Regions"] <- "Others_Oeste"
fmah13_1[30, "Regions"] <- "Centro_Sul"
fmah13_1[32, "Regions"] <- "Tangara_da_Serra"
fmah13_1[33, "Regions"] <- "Santo_Antonio_do_Leveger"
fmah13_1[34, "Regions"] <- "Chapada_dos_Guimaraes"
fmah13_1[35, "Regions"] <- "Others_Centro_Sul"
fmah13_1[37, "Regions"] <- "Campo_Verde"
fmah13_1[38, "Regions"] <- "Primavera_do_Leste"
fmah13_1[39, "Regions"] <- "Alto_Garcas_e_Alto_Taquari"
fmah13_1[40, "Regions"] <- "Jaciara_e_Juscimeira"
fmah13_1[41, "Regions"] <- "Santo_Antonio_do_Leste"
fmah13_1[42, "Regions"] <- "Others_Sudeste"
fmah13_1[43, "Regions"] <- "Mato_Grosso"


#Remove periods and spaces from decimal/thousands positions and convert Area_ha to numeric
fmah13_1$Area_ha <- gsub("\\.", "", fmah13_1$Area_ha)
fmah13_1$Area_ha <- gsub(" ", "", fmah13_1$Area_ha)
fmah13_1 <- fmah13_1 %>%
  mutate(Area_ha = as.numeric(Area_ha))

#xxx <- 3
#colnames(fmah13_1)[1]

for (xxx in 3:dim(fmah13_1)[2]){
  fmah13_1[[paste(colnames(fmah13_1)[xxx])]] <- gsub(",", "\\.", fmah13_1[[paste(colnames(fmah13_1)[xxx])]])
  fmah13_1[[paste(colnames(fmah13_1)[xxx])]] <- gsub("%", "", fmah13_1[[paste(colnames(fmah13_1)[xxx])]])
  fmah13_1[[paste(colnames(fmah13_1)[xxx])]] <- as.numeric(fmah13_1[[paste(colnames(fmah13_1)[xxx])]])
  fmah13_1[[paste(colnames(fmah13_1)[xxx])]] <- fmah13_1[[paste(colnames(fmah13_1)[xxx])]]/100
}
dim(fmah13_1)
sapply(fmah13_1, mode)

#Write final table to disk
write.csv(fmah13_1, file='maize_harvest_2013_muni.csv', row.names=FALSE)

#2012-2013 maize harvest regional
fmah13_2 <- as.data.frame(fmah13_2[2:nrow(fmah13_2), ], stringsAsFactors = FALSE)

hefmah13_2 <- c('Headers', 'Noroeste', 'Norte', 'Nordeste', 'Medio_Norte', 'Oeste',
                'Centro_Sul', 'Sudeste', 'Mato_Grosso')
names(fmah13_2) <- hefmah13_2
fmah13_2 <- fmah13_2[-c(18,20), ]

#Transpose 2013 maize harvesting regions table (rows to columns, columns to rows)
fmah13_2 <- t(fmah13_2)

#Turn this transposed table into a data frame and remove headers in first row
fmah13_2 <- as.data.frame(fmah13_2[1:nrow(fmah13_2), ], sort= FALSE)

#Create new header names and insert them
setDT(fmah13_2, keep.rownames=TRUE)
colnames(fmah13_2)[1] <- "IMEA_Regions"
fmah13_2 <- fmah13_2[-c(1), ]
hefmah13_2 <- c('IMEA_Regions', 'Area_ha', 'Partial_prod', '2013-06-06', '2013-06-13', '2013-06-20', '2013-06-27', 
                '2013-07-04', '2013-07-11', '2013-07-18', '2013-07-25', '2013-08-01', '2013-08-08',
                '2013-08-15', '2013-08-22', '2013-08-29', '2013-09-05', '2012-08-24', 
                'change_in_plant_per')
names(fmah13_2) <- hefmah13_2

#change Area_ha column to numeric and remove periods from thousandths position
fmah13_2 <- fmah13_2 %>%
  mutate(Area_ha = as.numeric(gsub("\\.", "", Area_ha)))
#xxx <- 3
#colnames(fmah13_2)[1]

for (xxx in 4:dim(fmah13_2)[2]){
  fmah13_2[[paste(colnames(fmah13_2)[xxx])]] <- gsub(",", "\\.", fmah13_2[[paste(colnames(fmah13_2)[xxx])]])
  fmah13_2[[paste(colnames(fmah13_2)[xxx])]] <- gsub("%", "", fmah13_2[[paste(colnames(fmah13_2)[xxx])]])
  fmah13_2[[paste(colnames(fmah13_2)[xxx])]] <- as.numeric(fmah13_2[[paste(colnames(fmah13_2)[xxx])]])
  fmah13_2[[paste(colnames(fmah13_2)[xxx])]] <- fmah13_2[[paste(colnames(fmah13_2)[xxx])]]/100
}
dim(fmah13_2)
sapply(fmah13_2, mode)

#Writing 2012-2013 maize planting as a CSV file
write.csv(fmah13_2, file='maize_harvest_2013_region.csv', row.names=FALSE)


#2013-2014 maize harvesting - setting as data frame
fmah14_1 <- as.data.frame(fmah14_1[2:nrow(fmah14_1), ], stringsAsFactors = FALSE)
fmah14_1[2] <- NULL 
hefmah14_1 <- c('Regions', 'Area_ha', '2014-06-05', '2014-06-12', '2014-06-18', '2014-06-26', 
                '2014-07-03', '2014-07-10', '2014-07-17', '2014-07-24', '2014-07-31', 
                '2014-08-07', '2014-08-14', '2014-08-21', '2014-08-28', '2014-09-04')
names(fmah14_1) <- hefmah14_1

#2013-2014 maize harvesting - renaming rows with errors
fmah14_1[3, "Regions"] <- "Others_Noroeste"
fmah14_1[5, "Regions"] <- "Itauba"
fmah14_1[6, "Regions"] <- "Others_Norte"
fmah14_1[9, "Regions"] <- "Querencia"
fmah14_1[10, "Regions"] <- "Gaucha_do_Norte"
fmah14_1[11, "Regions"] <- "Nova_Xavantina"
fmah14_1[12, "Regions"] <- "Others_Nordeste"
fmah14_1[13, "Regions"] <- "Medio_Norte"
fmah14_1[14, "Regions"] <- "Lucas_do_Rio_Verde"
fmah14_1[16, "Regions"] <- "Nova_Mutum"
fmah14_1[17, "Regions"] <- "Ipiranga_do_Norte"
fmah14_1[20, "Regions"] <- "Santa_Rita_do_Trivelato"
fmah14_1[21, "Regions"] <- "Nova_Ubirata"
fmah14_1[23, "Regions"] <- "Sao_Jose_do_Rio_Claro"
fmah14_1[24, "Regions"] <- "Others_Medio_Norte"
fmah14_1[27, "Regions"] <- "Campo_Novo_dos_Parecis"
fmah14_1[28, "Regions"] <- "Campos_de_Julio"
fmah14_1[29, "Regions"] <- "Others_Oeste"
fmah14_1[30, "Regions"] <- "Centro_Sul"
fmah14_1[32, "Regions"] <- "Tangara_da_Serra"
fmah14_1[33, "Regions"] <- "Santo_Antonio_do_Leveger"
fmah14_1[34, "Regions"] <- "Chapada_dos_Guimaraes"
fmah14_1[35, "Regions"] <- "Others_Centro_Sul"
fmah14_1[37, "Regions"] <- "Campo_Verde"
fmah14_1[38, "Regions"] <- "Primavera_do_Leste"
fmah14_1[39, "Regions"] <- "Alto_Garcas_e_Alto_Taquari"
fmah14_1[40, "Regions"] <- "Jaciara_e_Juscimeira"
fmah14_1[41, "Regions"] <- "Santo_Antonio_do_Leste"
fmah14_1[42, "Regions"] <- "Others_Sudeste"
fmah14_1[43, "Regions"] <- "Mato_Grosso"

#Remove periods and spaces from decimal/thousands positions and convert Area_ha to numeric
fmah14_1$Area_ha <- gsub("\\.", "", fmah14_1$Area_ha)
fmah14_1$Area_ha <- gsub(" ", "", fmah14_1$Area_ha)
fmah14_1 <- fmah14_1 %>%
  mutate(Area_ha = as.numeric(Area_ha))

#xxx <- 3
#colnames(fmah14_1)[1]

for (xxx in 3:dim(fmah14_1)[2]){
  fmah14_1[[paste(colnames(fmah14_1)[xxx])]] <- gsub(",", "\\.", fmah14_1[[paste(colnames(fmah14_1)[xxx])]])
  fmah14_1[[paste(colnames(fmah14_1)[xxx])]] <- gsub("%", "", fmah14_1[[paste(colnames(fmah14_1)[xxx])]])
  fmah14_1[[paste(colnames(fmah14_1)[xxx])]] <- as.numeric(fmah14_1[[paste(colnames(fmah14_1)[xxx])]])
  fmah14_1[[paste(colnames(fmah14_1)[xxx])]] <- fmah14_1[[paste(colnames(fmah14_1)[xxx])]]/100
}
dim(fmah14_1)
sapply(fmah14_1, mode)

#Write final table to disk
write.csv(fmah14_1, file='maize_harvest_2014_muni.csv', row.names=FALSE)

#2013-2014 maize harvest regional
fmah14_2 <- as.data.frame(fmah14_2[2:nrow(fmah14_2), ], stringsAsFactors = FALSE)

hefmah14_2 <- c('Noroeste', 'Norte', 'Nordeste', 'Medio_Norte', 'Oeste',
                'Centro_Sul', 'Sudeste', 'Mato_Grosso')
names(fmah14_2) <- hefmah14_2
fmah14_2[16] <- NULL 
fmah14_2[15] <- NULL 
fmah14_2[14] <- NULL 
fmah14_2[13] <- NULL 
fmah14_2[12] <- NULL 
fmah14_2[11] <- NULL
fmah14_2[10] <- NULL
fmah14_2[6] <- NULL 
hefmah14_2 <- c('Noroeste', 'Norte', 'Nordeste', 'Medio_Norte', 'Oeste',
                'Centro_Sul', 'Sudeste', 'Mato_Grosso')
names(fmah14_2) <- hefmah14_2
fmah14_2 <- fmah14_2[-c(1,2,3,21,23), ]
fmah14_2[1, "Noroeste"] <- "142.143"
fmah14_2[2, "Noroeste"] <- "90,0"
fmah14_2[3, "Noroeste"] <- "0,7%"
fmah14_2[4, "Noroeste"] <- "1,7%"
fmah14_2[5, "Noroeste"] <- "3,4%"
fmah14_2[6, "Noroeste"] <- "5,4%"
fmah14_2[7, "Noroeste"] <- "15,4%"
fmah14_2[8, "Noroeste"] <- "27,0%"
fmah14_2[9, "Noroeste"] <- "40,0%"
fmah14_2[10, "Noroeste"] <- "58,8%"
fmah14_2[11, "Noroeste"] <- "66,9%"
fmah14_2[12, "Noroeste"] <- "86,9%"
fmah14_2[13, "Noroeste"] <- "95,8%"
fmah14_2[14, "Noroeste"] <- "98,4%"
fmah14_2[15, "Noroeste"] <- "100,0%"
fmah14_2[16, "Noroeste"] <- "100,0%"
fmah14_2[17, "Noroeste"] <- "100,0%"
fmah14_2[18, "Noroeste"] <- "0,0 p.p."

#Transpose 2014 maize harvesting regions table (rows to columns, columns to rows)
fmah14_2 <- t(fmah14_2)

#Turn this transposed table into a data frame and remove headers in first row
fmah14_2 <- as.data.frame(fmah14_2[1:nrow(fmah14_2), ], sort= FALSE)

#Create new header names and insert them
setDT(fmah14_2, keep.rownames=TRUE)
colnames(fmah14_2)[1] <- "IMEA_Regions"
hefmah14_2 <- c('IMEA_Regions', 'Area_ha', 'Partial_prod', '2014-06-05', '2014-06-12', '2014-06-18', '2014-06-26', 
                '2014-07-03', '2014-07-10', '2014-07-17', '2014-07-24', '2014-07-31', 
                '2014-08-07', '2014-08-14', '2014-08-21', '2014-08-28', '2014-09-04', '2013-09-05',
                'change_in_plant_per')
names(fmah14_2) <- hefmah14_2

#change Area_ha column to numeric and remove periods from thousandths position
fmah14_2 <- fmah14_2 %>%
  mutate(Area_ha = as.numeric(gsub("\\.", "", Area_ha)))
fmah14_2 <- fmah14_2 %>%
  mutate(Partial_prod = as.numeric(gsub(",", "\\.", Partial_prod)))

#xxx <- 3
#colnames(fmah14_2)[1]

for (xxx in 4:dim(fmah14_2)[2]){
  fmah14_2[[paste(colnames(fmah14_2)[xxx])]] <- gsub(",", "\\.", fmah14_2[[paste(colnames(fmah14_2)[xxx])]])
  fmah14_2[[paste(colnames(fmah14_2)[xxx])]] <- gsub("%", "", fmah14_2[[paste(colnames(fmah14_2)[xxx])]])
  fmah14_2[[paste(colnames(fmah14_2)[xxx])]] <- gsub("p.p.", "", fmah14_2[[paste(colnames(fmah14_2)[xxx])]])
  fmah14_2[[paste(colnames(fmah14_2)[xxx])]] <- as.numeric(fmah14_2[[paste(colnames(fmah14_2)[xxx])]])
  fmah14_2[[paste(colnames(fmah14_2)[xxx])]] <- fmah14_2[[paste(colnames(fmah14_2)[xxx])]]/100
}
dim(fmah14_2)
sapply(fmah14_2, mode)

#Writing 2013-2014 maize planting as a CSV file
write.csv(fmah14_2, file='maize_harvest_2014_region.csv', row.names=FALSE)

#2014-2015 maize harvest regional
fmah15_1 <- as.data.frame(fmah15_1[2:nrow(fmah15_1), ], stringsAsFactors = FALSE)
fmah15_2 <- as.data.frame(fmah15_2[2:nrow(fmah15_2), ], stringsAsFactors = FALSE)
fmah15_1$Centro_Sul <- c("Centrosul", "201.169", "101,88", "0,54%", "0,82%", "1,11%", "3,04%", "7,11%",
                         "15,31%", "25,03%", "39,09%", "58,55%", "19,46 p.p.", "51,82%", "6,73 p.p.")
fmah15_1$Medio_Norte <- c("Medionorte", "1.499.523", "110,66", "1,21%", "2,02%", "2,82%", "6,61%", "15,91%",
                         "27,74%", "38,24%", "59,15%", "75,53%", "16,38 p.p.", "80,98%", "-5,45 p.p.")
fmah15_1$Nordeste <- c("Nordeste", "333.627", "110,63", "0,00%", "0,21%", "0,31%", "0,56%", "8,53%",
                          "15,37%", "24,37%", "44,83%", "54,93%", "10,1 p.p.", "68,00%", "-13,07 p.p.")
fmah15_1$Noroeste <- c("Noroeste", "129.904", "93,17", "0,00%", "0,33%", "0,66%", "1,08%", "15,69%",
                          "20,52%", "38,37%", "51,74%", "61,74%", "10 p.p.", "58,77%", "2,97 p.p.")
fmah15_1 <- fmah15_1[,c(1,9,2,8,7,3,6,4,5)]
fmah15_1 <- fmah15_1[-c(1,2,3,10,11,12,13,14,15), ]
hefmah15_1 <- c('Headers', 'Noroeste', 'Norte', 'Nordeste', 'Medio_Norte', 'Oeste',
                  'Centro_Sul', 'Sudeste', 'Mato_Grosso')
names(fmah15_1) <- hefmah15_1

fmah15_2$Centro_Sul <- c("Centrosul", "197.338", "101,78", "24,91%", "38,89%", "58,38%", "68,09%", "80,10%",
                         "89,92%", "96,76%", "100,00%", "100,00%", "0 p.p.", "100,00%", "0 p.p.")
fmah15_2$Medio_Norte <- c("Medionorte", "1.470.493", "108,03", "38,21%", "59,11%", "75,32%", "89,60%", "96,60%",
                          "99,30%", "99,96%", "100,00%", "100,00%", "0 p.p.", "100,00%", "0 p.p.")
fmah15_2$Nordeste <- c("Nordeste", "334.774", "103,38", "24,14%", "44,54%", "54,75%", "81,27%", "89,71%",
                       "98,17%", "99,28%", "99,76%", "100,00%", "0,24 p.p.", "100,00%", "0 p.p.")
fmah15_2$Noroeste <- c("Noroeste", "131.840", "94,86", "38,36%", "51,72%", "61,72%", "71,72%", "90,25%",
                       "96,59%", "98,34%", "100,00%", "100,00%", "0 p.p.", "100,00%", "0 p.p.")
fmah15_2 <- fmah15_2[,c(1,9,2,8,7,3,6,4,5)]
fmah15_2 <- fmah15_2[-c(1), ]
hefmah15_2 <- c('Headers', 'Noroeste', 'Norte', 'Nordeste', 'Medio_Norte', 'Oeste',
                'Centro_Sul', 'Sudeste', 'Mato_Grosso')
names(fmah15_2) <- hefmah15_2

#Transpose 2015 maize harvesting regions table (rows to columns, columns to rows)
fmah15_1 <- t(fmah15_1)
fmah15_2 <- t(fmah15_2)
#Turn this transposed table into a data frame and remove headers in first row
fmah15_1 <- as.data.frame(fmah15_1[1:nrow(fmah15_1), ], sort= FALSE)
fmah15_2 <- as.data.frame(fmah15_2[1:nrow(fmah15_2), ], sort= FALSE)
#Create new header names and insert them
setDT(fmah15_1, keep.rownames=TRUE)
colnames(fmah15_1)[1] <- "IMEA_Regions"
fmah15_1 <- fmah15_1[-c(1), ]
hefmah15_1 <- c('IMEA_Regions', '2015-05-28', '2015-06-03', '2015-06-09', '2015-06-17',
                '2015-06-25', '2015-07-02')
names(fmah15_1) <- hefmah15_1

setDT(fmah15_2, keep.rownames=TRUE)
colnames(fmah15_2)[1] <- "IMEA_Regions"
fmah15_2 <- fmah15_2[-c(1), ]
hefmah15_2 <- c('IMEA_Regions', 'Area_ha', 'Partial_prod', '2015-07-08', '2015-07-14',
                '2015-07-21', '2015-07-28', '2015-08-04', '2015-08-11', '2015-08-18',
                '2015-08-25', '2015-09-02', 'Weekly_change', '2014-07-04', 'change_in_plant_per')
names(fmah15_2) <- hefmah15_2

fmah15_reg <- merge(fmah15_1, fmah15_2, by="IMEA_Regions", sort = FALSE)
fmah15_reg <- fmah15_reg[,c(1,8,9,2:7,10:21)]
#change Area_ha column to numeric and remove periods from thousandths position
fmah15_reg <- fmah15_reg %>%
  mutate(Area_ha = as.numeric(gsub("\\.", "", Area_ha)))
fmah15_reg <- fmah15_reg %>%
  mutate(Partial_prod = as.numeric(gsub(",", "\\.", Partial_prod)))

#xxx <- 3
#colnames(fmah15_reg)[1]

for (xxx in 4:dim(fmah15_reg)[2]){
  fmah15_reg[[paste(colnames(fmah15_reg)[xxx])]] <- gsub(",", "\\.", fmah15_reg[[paste(colnames(fmah15_reg)[xxx])]])
  fmah15_reg[[paste(colnames(fmah15_reg)[xxx])]] <- gsub("%", "", fmah15_reg[[paste(colnames(fmah15_reg)[xxx])]])
  fmah15_reg[[paste(colnames(fmah15_reg)[xxx])]] <- gsub("p.p.", "", fmah15_reg[[paste(colnames(fmah15_reg)[xxx])]])
  fmah15_reg[[paste(colnames(fmah15_reg)[xxx])]] <- as.numeric(fmah15_reg[[paste(colnames(fmah15_reg)[xxx])]])
  fmah15_reg[[paste(colnames(fmah15_reg)[xxx])]] <- fmah15_reg[[paste(colnames(fmah15_reg)[xxx])]]/100
}
dim(fmah15_reg)
sapply(fmah15_reg, mode)

#Writing 2014-2015 maize planting as a CSV file
write.csv(fmah15_reg, file='maize_harvest_2015_region.csv', row.names=FALSE)

#2015-2016 maize harvest regional
fmah16 <- as.data.frame(fmah16[2:nrow(fmah16), ], stringsAsFactors = FALSE)
fmah16 <- fmah16[,c(1,5,6,4,3,7,2,8,9)]
hefmah16 <- c('Headers', 'Noroeste', 'Norte', 'Nordeste', 'Medio_Norte', 'Oeste',
                'Centro_Sul', 'Sudeste', 'Mato_Grosso')
names(fmah16) <- hefmah16
fmah16 <- fmah16[-c(18,20), ]

#Transpose 2016 maize harvesting regions table (rows to columns, columns to rows)
fmah16 <- t(fmah16)

#Turn this transposed table into a data frame and remove headers in first row
fmah16 <- as.data.frame(fmah16[1:nrow(fmah16), ], sort= FALSE)

#Create new header names and insert them
setDT(fmah16, keep.rownames=TRUE)
colnames(fmah16)[1] <- "IMEA_Regions"
fmah16 <- fmah16[-c(1), ]
hefmah16 <- c('IMEA_Regions', 'Area_ha', '2016-05-19', '2016-05-26', '2016-06-02', '2016-06-09', 
                '2016-06-16', '2016-06-23', '2016-06-30', '2016-07-07', '2016-07-14', 
                '2016-07-21', '2016-07-28', '2016-08-04', '2016-08-11', '2016-08-18', 'weekly_change',
                '2015-08-20', 'change_in_plant_per')
names(fmah16) <- hefmah16

#change Area_ha column to numeric and remove periods from thousandths position
fmah16 <- fmah16 %>%
  mutate(Area_ha = as.numeric(gsub("\\.", "", Area_ha)))

#xxx <- 3
#colnames(fmah16)[1]

for (xxx in 3:dim(fmah16)[2]){
  fmah16[[paste(colnames(fmah16)[xxx])]] <- gsub(",", "\\.", fmah16[[paste(colnames(fmah16)[xxx])]])
  fmah16[[paste(colnames(fmah16)[xxx])]] <- gsub("%", "", fmah16[[paste(colnames(fmah16)[xxx])]])
  fmah16[[paste(colnames(fmah16)[xxx])]] <- gsub("p.p.", "", fmah16[[paste(colnames(fmah16)[xxx])]])
  fmah16[[paste(colnames(fmah16)[xxx])]] <- as.numeric(fmah16[[paste(colnames(fmah16)[xxx])]])
  fmah16[[paste(colnames(fmah16)[xxx])]] <- fmah16[[paste(colnames(fmah16)[xxx])]]/100
}
dim(fmah16)
sapply(fmah16, mode)

#Writing 2015-2016 maize planting as a CSV file
write.csv(fmah16, file='maize_harvest_2016_region.csv', row.names=FALSE)

#2016-2017 maize harvest regional
fmah17 <- as.data.frame(fmah17[2:nrow(fmah17), ], stringsAsFactors = FALSE)
fmah17 <- fmah17[,c(1,5,6,4,3,7,2,8,9)]
hefmah17 <- c('Headers', 'Noroeste', 'Norte', 'Nordeste', 'Medio_Norte', 'Oeste',
              'Centro_Sul', 'Sudeste', 'Mato_Grosso')
names(fmah17) <- hefmah17
fmah17 <- fmah17[-c(20,22), ]

#Transpose 2017 maize harvesting regions table (rows to columns, columns to rows)
fmah17 <- t(fmah17)

#Turn this transposed table into a data frame and remove headers in first row
fmah17 <- as.data.frame(fmah17[1:nrow(fmah17), ], sort= FALSE)

#Create new header names and insert them
setDT(fmah17, keep.rownames=TRUE)
colnames(fmah17)[1] <- "IMEA_Regions"
fmah17 <- fmah17[-c(1), ]
hefmah17 <- c('IMEA_Regions', 'Area_ha', '2017-05-19', '2017-05-26', '2017-06-02', '2017-06-09', 
              '2017-06-16', '2017-06-23', '2017-06-30', '2017-07-07', '2017-07-14', 
              '2017-07-21', '2017-07-28', '2017-08-04', '2017-08-11', '2017-08-18', '2017-08-25', 
              '2017-09-01', 'weekly_change', '2016-09-01', 'change_in_plant_per')
names(fmah17) <- hefmah17

#change Area_ha column to numeric and remove periods from thousandths position
fmah17 <- fmah17 %>%
  mutate(Area_ha = as.numeric(gsub("\\.", "", Area_ha)))

#xxx <- 3
#colnames(fmah17)[1]

for (xxx in 3:dim(fmah17)[2]){
  fmah17[[paste(colnames(fmah17)[xxx])]] <- gsub(",", "\\.", fmah17[[paste(colnames(fmah17)[xxx])]])
  fmah17[[paste(colnames(fmah17)[xxx])]] <- gsub("%", "", fmah17[[paste(colnames(fmah17)[xxx])]])
  fmah17[[paste(colnames(fmah17)[xxx])]] <- gsub("p.p.", "", fmah17[[paste(colnames(fmah17)[xxx])]])
  fmah17[[paste(colnames(fmah17)[xxx])]] <- as.numeric(fmah17[[paste(colnames(fmah17)[xxx])]])
  fmah17[[paste(colnames(fmah17)[xxx])]] <- fmah17[[paste(colnames(fmah17)[xxx])]]/100
}
dim(fmah17)
sapply(fmah17, mode)

#Writing 2016-2017 maize planting as a CSV file
write.csv(fmah17, file='maize_harvest_2017_region.csv', row.names=FALSE)

#2017-2018 maize harvest regional
fmah18 <- as.data.frame(fmah18[2:nrow(fmah18), ], stringsAsFactors = FALSE)
fmah18 <- fmah18[,c(1,5,6,4,3,7,2,8,9)]
hefmah18 <- c('Headers', 'Noroeste', 'Norte', 'Nordeste', 'Medio_Norte', 'Oeste',
              'Centro_Sul', 'Sudeste', 'Mato_Grosso')
names(fmah18) <- hefmah18
fmah18 <- fmah18[-c(15,18,21,23,25), ]
fmah18[3, "Nordeste"] <- "0,00%"
fmah18[5, "Nordeste"] <- "1,65%"
fmah18[7, "Nordeste"] <- "7,35%"
fmah18[9, "Nordeste"] <- "39,40%"
fmah18[11, "Nordeste"] <- "83,58%"
fmah18[13, "Nordeste"] <- "98,54%"
fmah18[20, "Nordeste"] <- "0,00 p.p."

#Transpose 2018 maize harvesting regions table (rows to columns, columns to rows)
fmah18 <- t(fmah18)

#Turn this transposed table into a data frame and remove headers in first row
fmah18 <- as.data.frame(fmah18[1:nrow(fmah18), ], sort= FALSE)

#Create new header names and insert them
setDT(fmah18, keep.rownames=TRUE)
colnames(fmah18)[1] <- "IMEA_Regions"
fmah18 <- fmah18[-c(1), ]
hefmah18 <- c('IMEA_Regions', 'Area_ha', '2018-05-25', '2018-06-01', '2018-06-08', 
              '2018-06-15', '2018-06-22', '2018-06-29', '2018-07-06', '2018-07-13', 
              '2018-07-20', '2018-07-27', '2018-08-03', '2018-08-10', '2018-08-17', '2018-08-24', 
              '2018-08-31', '2018-09-07', 'weekly_change', '2017-08-31', 'change_in_plant_per')
names(fmah18) <- hefmah18

#change Area_ha column to numeric and remove periods from thousandths position
fmah18 <- fmah18 %>%
  mutate(Area_ha = as.numeric(gsub("\\.", "", Area_ha)))

#xxx <- 3
#colnames(fmah18)[1]

for (xxx in 3:dim(fmah18)[2]){
  fmah18[[paste(colnames(fmah18)[xxx])]] <- gsub(",", "\\.", fmah18[[paste(colnames(fmah18)[xxx])]])
  fmah18[[paste(colnames(fmah18)[xxx])]] <- gsub("%", "", fmah18[[paste(colnames(fmah18)[xxx])]])
  fmah18[[paste(colnames(fmah18)[xxx])]] <- gsub("p.p.", "", fmah18[[paste(colnames(fmah18)[xxx])]])
  fmah18[[paste(colnames(fmah18)[xxx])]] <- as.numeric(fmah18[[paste(colnames(fmah18)[xxx])]])
  fmah18[[paste(colnames(fmah18)[xxx])]] <- fmah18[[paste(colnames(fmah18)[xxx])]]/100
}
dim(fmah18)
sapply(fmah18, mode)

#Writing 2017-2018 maize planting as a CSV file
write.csv(fmah18, file='maize_harvest_2018_region.csv', row.names=FALSE)

fmap9_mun3[nrow(fmap9_mun3) + 1,] = list("Nova_Xavantina", "f", "f", "f", "f", "f", "f", "f", "f",
                                         "f", "f")
fmap9_mun3[nrow(fmap9_mun3) + 1,] = list("Santa_Rita_do_Trivelato", "f", "f", "f", "f", "f", "f", "f", "f",
                                         "f", "f")
fmap9_mun3[nrow(fmap9_mun3) + 1,] = list("Nova_Ubirata", "f", "f", "f", "f", "f", "f", "f", "f",
                                         "f", "f")
fmap9_mun3[nrow(fmap9_mun3) + 1,] = list("Vera", "f", "f", "f", "f", "f", "f", "f", "f",
                                         "f", "f")
fmap9_mun3[nrow(fmap9_mun3) + 1,] = list("Sao_Jose_do_Rio_Claro", "f", "f", "f", "f", "f", "f", "f", "f",
                                         "f", "f")
fmap9_mun3[nrow(fmap9_mun3) + 1,] = list("Santo_Antonio_do_Leveger", "f", "f", "f", "f", "f", "f", "f", "f",
                                         "f", "f")
fmap9_mun3[nrow(fmap9_mun3) + 1,] = list("Chapada_dos_Guimaraes", "f", "f", "f", "f", "f", "f", "f", "f",
                                         "f", "f")
fmap9_mun3[nrow(fmap9_mun3) + 1,] = list("Santo_Antonio_do_Leste", "f", "f", "f", "f", "f", "f", "f", "f",
                                         "f", "f")
fmap9_mun3[32, "Regions"] <- "Alto_Garcas_e_Alto_Taquari"
fmap9_mun3[ fmap9_mun3 == "f" ] <- NA

fmah9[nrow(fmah9) + 1,] = list("Santa_Rita_do_Trivelato", "f", "f", "f", "f", "f", "f", "f", "f",
                                         "f", "f", "f", "f", "f")
fmah9[ fmah9 == "f" ] <- NA
fmah10_mun[nrow(fmah10_mun) + 1,] = list("Santa_Rita_do_Trivelato", "f", "f", "f", "f", "f", "f", "f", "f",
                               "f", "f", "f", "f")
fmah10_mun[ fmah10_mun == "f" ] <- NA

aa = c("Noroeste", "Brasnorte", "Others_Noroeste", "Norte", "Itauba", "Others_Norte", "Nordeste",
       "Canarana", "Querencia", "Gaucha_do_Norte", "Nova_Xavantina", "Others_Nordeste", 
       "Medio_Norte", "Lucas_do_Rio_Verde", "Sorriso", "Nova_Mutum", "Ipiranga_do_Norte", "Sinop",
       "Tapurah", "Santa_Rita_do_Trivelato", "Nova_Ubirata", "Vera", "Sao_Jose_do_Rio_Claro", 
       "Others_Medio_Norte", "Oeste", "Sapezal", "Campo_Novo_dos_Parecis", "Campos_de_Julio", 
       "Others_Oeste", "Centro_Sul", "Diamantino", "Tangara_da_Serra", "Santo_Antonio_do_Leveger",
       "Chapada_dos_Guimaraes", "Others_Centro_Sul", "Sudeste", "Campo_Verde", "Primavera_do_Leste",
       "Alto_Garcas_e_Alto_Taquari", "Jaciara_e_Juscimeira", "Santo_Antonio_do_Leste",
       "Others_Sudeste", "Mato_Grosso")
fmap9_mun3 <- fmap9_mun3 %>%
  mutate(Regions =  factor(Regions, levels = aa)) %>%
  arrange(Regions)
fmah9 <- fmah9 %>%
  mutate(Regions =  factor(Regions, levels = aa)) %>%
  arrange(Regions)
fmah10_mun <- fmah10_mun %>%
  mutate(Regions =  factor(Regions, levels = aa)) %>%
  arrange(Regions)
View(fmah9)
is.na(fmap9_mun3)

fsoyp9 <- tibble::rowid_to_column(fsoyp9, "ID")
fsoyp10_muni_1 <- tibble::rowid_to_column(fsoyp10_muni_1, "ID")
fsoyp11_muni <- tibble::rowid_to_column(fsoyp11_muni, "ID")
fsoyp12_muni <- tibble::rowid_to_column(fsoyp12_muni, "ID")
fsoyp13_1 <- tibble::rowid_to_column(fsoyp13_1, "ID")
fsoyp14_muni <- tibble::rowid_to_column(fsoyp14_muni, "ID")
fsoyp15_1 <- tibble::rowid_to_column(fsoyp15_1, "ID")
fsoyh9_mun5 <- tibble::rowid_to_column(fsoyh9_mun5, "ID")
fsoyh10_1 <- tibble::rowid_to_column(fsoyh10_1, "ID")
fsoyh11_muni <- tibble::rowid_to_column(fsoyh11_muni, "ID")
fsoyh12_muni <- tibble::rowid_to_column(fsoyh12_muni, "ID")
fsoyh13_muni <- tibble::rowid_to_column(fsoyh13_muni, "ID")
fsoyh14_1 <- tibble::rowid_to_column(fsoyh14_1, "ID")
fsoyh15_1 <- tibble::rowid_to_column(fsoyh15_1, "ID")
fmap9_mun3 <- tibble::rowid_to_column(fmap9_mun3, "ID")
fmap10_mun <- tibble::rowid_to_column(fmap10_mun, "ID")
fmap11_1 <- tibble::rowid_to_column(fmap11_1, "ID")
fmap12_1 <- tibble::rowid_to_column(fmap12_1, "ID")
fmap13_1 <- tibble::rowid_to_column(fmap13_1, "ID")
fmap14_1 <- tibble::rowid_to_column(fmap14_1, "ID")
fmap15_1 <- tibble::rowid_to_column(fmap15_1, "ID")
fmah9 <- tibble::rowid_to_column(fmah9, "ID")
fmah10_mun <- tibble::rowid_to_column(fmah10_mun, "ID")
fmah11_1 <- tibble::rowid_to_column(fmah11_1, "ID")
fmah12_1 <- tibble::rowid_to_column(fmah12_1, "ID")
fmah13_1 <- tibble::rowid_to_column(fmah13_1, "ID")
fmah14_1 <- tibble::rowid_to_column(fmah14_1, "ID")

fsoyp10_muni_1[2] = NULL
fsoyp11_muni[2] = NULL
fsoyp12_muni[2] = NULL
fsoyp13_1[2] = NULL
fsoyp14_muni[2] = NULL
fsoyp15_1[2] = NULL
colnames(fsoyp9)[colnames(fsoyp9)=="Area_ha"] <- "2009_spl_ha"
colnames(fsoyp10_muni_1)[colnames(fsoyp10_muni_1)=="Area_ha"] <- "2010_spl_ha"
colnames(fsoyp11_muni)[colnames(fsoyp11_muni)=="Area_ha"] <- "2011_spl_ha"
colnames(fsoyp12_muni)[colnames(fsoyp12_muni)=="Area_ha"] <- "2012_spl_ha"
colnames(fsoyp13_1)[colnames(fsoyp13_1)=="Area_ha"] <- "2013_spl_ha"
colnames(fsoyp14_muni)[colnames(fsoyp14_muni)=="Area_ha"] <- "2014_spl_ha"
colnames(fsoyp15_1)[colnames(fsoyp15_1)=="Area_ha"] <- "2015_spl_ha"

merge1 <- merge(fsoyp9, fsoyp10_muni_1, by="ID", sort = FALSE)
merge2 <- merge(merge1, fsoyp11_muni, by="ID", sort = FALSE)
merge3 <- merge(merge2, fsoyp12_muni, by="ID", sort = FALSE)
merge4 <- merge(merge3, fsoyp13_1, by="ID", sort = FALSE)
merge5 <- merge(merge4, fsoyp14_muni, by="ID", sort = FALSE)
merge6 <- merge(merge5, fsoyp15_1, by="ID", sort = FALSE)

fsoyh9_mun5[2] = NULL
fsoyh10_1[2] = NULL
fsoyh11_muni[2] = NULL
fsoyh12_muni[2] = NULL
fsoyh13_muni[2] = NULL
fsoyh14_1[2] = NULL
fsoyh15_1[2] = NULL
colnames(fsoyh9_mun5)[colnames(fsoyh9_mun5)=="Area_ha"] <- "2009_sha_ha"
colnames(fsoyh10_1)[colnames(fsoyh10_1)=="Area_ha"] <- "2010_sha_ha"
colnames(fsoyh11_muni)[colnames(fsoyh11_muni)=="Area_ha"] <- "2011_sha_ha"
colnames(fsoyh12_muni)[colnames(fsoyh12_muni)=="Area_ha"] <- "2012_sha_ha"
colnames(fsoyh13_muni)[colnames(fsoyh13_muni)=="Area_ha"] <- "2013_sha_ha"
colnames(fsoyh14_1)[colnames(fsoyh14_1)=="Area_ha"] <- "2014_sha_ha"
colnames(fsoyh15_1)[colnames(fsoyh15_1)=="Area_ha"] <- "2015_sha_ha"

merge7 <- merge(merge6, fsoyh9_mun5, by="ID", sort = FALSE)
merge8 <- merge(merge7, fsoyh10_1, by="ID", sort = FALSE)
merge9 <- merge(merge8, fsoyh11_muni, by="ID", sort = FALSE)
merge10 <- merge(merge9, fsoyh12_muni, by="ID", sort = FALSE)
merge11 <- merge(merge10, fsoyh13_muni, by="ID", sort = FALSE)
merge12 <- merge(merge11, fsoyh14_1, by="ID", sort = FALSE)
merge13 <- merge(merge12, fsoyh15_1, by="ID", sort = FALSE)

fmap9_mun3[2] = NULL
fmap10_mun[2] = NULL
fmap11_1[2] = NULL
fmap12_1[2] = NULL
fmap13_1[2] = NULL
fmap14_1[2] = NULL
fmap15_1[2] = NULL
colnames(fmap9_mun3)[colnames(fmap9_mun3)=="Area_ha"] <- "2009_mpl_ha"
colnames(fmap10_mun)[colnames(fmap10_mun)=="Area_ha"] <- "2010_mpl_ha"
colnames(fmap11_1)[colnames(fmap11_1)=="Area_ha"] <- "2011_mpl_ha"
colnames(fmap12_1)[colnames(fmap12_1)=="Area_ha"] <- "2012_mpl_ha"
colnames(fmap13_1)[colnames(fmap13_1)=="Area_ha"] <- "2013_mpl_ha"
colnames(fmap14_1)[colnames(fmap14_1)=="Area_ha"] <- "2014_mpl_ha"
colnames(fmap15_1)[colnames(fmap15_1)=="Area_ha"] <- "2015_mpl_ha"

merge14 <- merge(merge13, fmap9_mun3, by="ID", sort = FALSE)
merge15 <- merge(merge14, fmap10_mun, by="ID", sort = FALSE)
merge16 <- merge(merge15, fmap11_1, by="ID", sort = FALSE)
merge17 <- merge(merge16, fmap12_1, by="ID", sort = FALSE)
merge18 <- merge(merge17, fmap13_1, by="ID", sort = FALSE)
merge19 <- merge(merge18, fmap14_1, by="ID", sort = FALSE)
merge20 <- merge(merge19, fmap15_1, by="ID", sort = FALSE)
View(fmap9_mun3)
View(merge13)

fmah9[2] = NULL
fmah10_mun[2] = NULL
fmah11_1[2] = NULL
fmah12_1[2] = NULL
fmah13_1[2] = NULL
fmah14_1[2] = NULL
colnames(fmah9)[colnames(fmah9)=="Area_ha"] <- "2009_mha_ha"
colnames(fmah10_mun)[colnames(fmah10_mun)=="Area_ha"] <- "2010_mha_ha"
colnames(fmah11_1)[colnames(fmah11_1)=="Area_ha"] <- "2011_mha_ha"
colnames(fmah12_1)[colnames(fmah12_1)=="Area_ha"] <- "2012_mha_ha"
colnames(fmah13_1)[colnames(fmah13_1)=="Area_ha"] <- "2013_mha_ha"
colnames(fmah14_1)[colnames(fmah14_1)=="Area_ha"] <- "2014_mha_ha"

merge21 <- merge(merge20, fmah9, by="ID", sort = FALSE)
merge22 <- merge(merge21, fmah10_mun, by="ID", sort = FALSE)
merge23 <- merge(merge22, fmah11_1, by="ID", sort = FALSE)
merge24 <- merge(merge23, fmah12_1, by="ID", sort = FALSE)
merge25 <- merge(merge24, fmah13_1, by="ID", sort = FALSE)
merge26 <- merge(merge25, fmah14_1, by="ID", sort = FALSE)


hemerge26 <- c('ID','Regions','spl_area_2008_2009','spl_12_04_2008','spl_12_11_2008',
               'spl_area_2009-2010','spl_09_24_2009','spl_10_01_2009','spl_10_08_2009',
               'spl_10_15_2009','spl_10_22_2009','spl_10_29_2009','spl_11_05_2009','spl_11_12_2009',
               'spl_11_19_2009','spl_11_26_2009','spl_12_03_2009','spl_area_2010-2011','spl_09_30_2010',
               'spl_10_07_2010','spl_10_14_2010','spl_10_21_2010','spl_10_28_2010','spl_11_04_2010',
               'spl_11_11_2010','spl_11_18_2010','spl_11_25_2010','spl_12_02_2010','spl_area_2011_2012',
               'spl_09_29_2011','spl_10_06_2011','spl_10_13_2011','spl_10_20_2011','spl_10_27_2011',
               'spl_11_03_2011','spl_11_10_2011','spl_11_17_2011','spl_11_24_2011','spl_12_01_2011',
               'spl_area_2012_2013','spl_09_20_2012','spl_09_27_2012','spl_10_04_2012','spl_10_11_2012',
               'spl_10_18_2012','spl_10_25_2012','spl_11_01_2012','spl_11_08_2012','spl_11_15_2012',
               'spl_11_22_2012','spl_11_23_2012','spl_area_2013_2014','spl_09_19_2013','spl_09_26_2013',
               'spl_10_03_2013','spl_10_10_2013','spl_10_17_2013','spl_10_24_2013','spl_10_31_2013',
               'spl_11_07_2013','spl_11_14_2013','spl_11_21_2013','spl_11_28_2013','spl_12_05_2013',
               'spl_area_2014_2015','spl_09_18_2014','spl_09_25_2014','spl_10_02_2014','spl_10_09_2014',
               'spl_10_16_2014','spl_10_23_2014','spl_10_30_2014','spl_11_06_2014','spl_11_13_2014',
               'spl_11_20_2014','spl_11_27_2014','spl_12_04_2014','spl_12_11_2014','sha_area_2008_2009',
               'sha_01_09_2009','sha_01_15_2009','sha_01_22_2009','sha_01_29_2009','sha_02_05_2009',
               'sha_02_11_2009','sha_02_19_2009','sha_02_26_2009','sha_03_05_2009','sha_03_10_2009',
               'sha_03_19_2009','sha_03_25_2009','sha_04_01_2009','sha_04_09_2009','sha_area_2009_2010',
               'sha_01_07_2010','sha_01_14_2010','sha_01_21_2010','sha_01_28_2010','sha_02_04_2010',
               'sha_02_11_2010','sha_02_18_2010','sha_02_25_2010','sha_03_04_2010','sha_03_11_2010',
               'sha_03_18_2010','sha_03_25_2010','sha_03_31_2010','sha_04_07_2010','sha_04_15_2010',
               'sha_area_2010_2011','sha_01_06_2011','sha_01_13_2011','sha_01_20_2011','sha_01_27_2011',
               'sha_02_03_2011','sha_02_10_2011','sha_02_17_2011','sha_02_24_2011','sha_03_03_2011',
               'sha_03_10_2011','sha_03_17_2011','sha_03_24_2011','sha_03_31_2011','sha_04_07_2011',
               'sha_04_14_2011','sha_area_2011_2012','sha_01_05_2012','sha_01_12_2012','sha_01_19_2012',
               'sha_01_26_2012','sha_02_02_2012','sha_02_09_2012','sha_02_16_2012','sha_02_23_2012',
               'sha_03_01_2012','sha_03_09_2012','sha_03_16_2012','sha_03_23_2012','sha_03_30_2012',
               'sha_04_06_2012','sha_04_13_2012','sha_area_2012_2013','sha_01_10_2013','sha_01_17_2013',
               'sha_01_24_2013','sha_01_31_2013','sha_02_07_2013','sha_02_14_2013','sha_02_21_2013',
               'sha_02_28_2013','sha_03_07_2013','sha_03_14_2013','sha_03_21_2013','sha_03_28_2013',
               'sha_04_04_2013','sha_04_11_2013','sha_04_18_2013','sha_area_2013_2014','sha_01_09_2014',
               'sha_01_16_2014','sha_01_23_2014','sha_01_30_2014','sha_02_06_2014','sha_02_13_2014',
               'sha_02_20_2014','sha_02_27_2014','sha_03_06_2014','sha_03_13_2014','sha_03_20_2014',
               'sha_03_27_2014','sha_04_03_2014','sha_04_10_2014','sha_04_17_2014','sha_area_2014_2015',
               'sha_01_08_2015','sha_01_15_2015','sha_01_22_2015','sha_01_29_2015','sha_02_05_2015',
               'sha_02_12_2015','sha_02_19_2015','sha_02_26_2015','sha_03_05_2015','sha_03_12_2015',
               'sha_03_19_2015','sha_03_26_2015','sha_04_02_2015','sha_04_09_2015','sha_04_16_2015',
               'sha_04_23_2015','sha_04_30_2015','mpl_area_2008_2009','mpl_01_22_2009','mpl_01_29_2009',
               'mpl_02_05_2009','mpl_02_12_2009','mpl_02_19_2009','mpl_02_25_2009','mpl_03_05_2009',
               'mpl_03_10_2009','mpl_03_19_2009','mpl_area_2009_2010','mpl_01_14_2010','mpl_01_21_2010',
               'mpl_01_28_2010','mpl_02_04_2010','mpl_02_11_2010','mpl_02_18_2010','mpl_02_25_2010',
               'mpl_03_04_2010','mpl_03_11_2010','mpl_03_18_2010','mpl_area_2010_2011','mpl_01_27_2011',
               'mpl_02_03_2011','mpl_02_10_2011','mpl_02_17_2011','mpl_02_24_2011','mpl_03_03_2011',
               'mpl_03_10_2011','mpl_03_17_2011','mpl_03_24_2011','mpl_area_2011_2012','mpl_01_12_2012',
               'mpl_01_19_2012','mpl_01_26_2012','mpl_02_02_2012','mpl_02_09_2012','mpl_02_16_2012',
               'mpl_02_23_2012','mpl_03_01_2012','mpl_03_08_2012','mpl_03_15_2012','mpl_area_2012_2013',
               'mpl_01_10_2013','mpl_01_17_2013','mpl_01_24_2013','mpl_01_31_2013','mpl_02_07_2013',
               'mpl_02_14_2013','mpl_02_21_2013','mpl_02_28_2013','mpl_03_07_2013','mpl_03_14_2013',
               'mpl_area_2013_2014','mpl_01_16_2014','mpl_01_23_2014','mpl_01_30_2014','mpl_02_06_2014',
               'mpl_02_13_2014','mpl_02_20_2014','mpl_02_27_2014','mpl_03_06_2014','mpl_03_13_2014',
               'mpl_03_20_2014','mpl_03_27_2014','mpl_area_2014_2015','mpl_01_16_2015','mpl_01_22_2015',
               'mpl_01_29_2015','mpl_02_05_2015','mpl_02_12_2015','mpl_02_19_2015','mpl_02_26_2015',
               'mpl_03_05_2015','mpl_03_12_2015','mpl_03_19_2015','mha_area_2008_2009','mha_06_11_2009',
               'mha_06_18_2009','mha_06_25_2009','mha_07_02_2009','mha_07_09_2009','mha_07_16_2009',
               'mha_07_23_2009','mha_07_30_2009','mha_08_06_2009','mha_08_13_2009','mha_08_20_2009',
               'mha_08_27_2009','mha_area_2009_2010','mha_06_02_2010','mha_06_10_2010','mha_06_17_2010',
               'mha_06_24_2010','mha_07_01_2010','mha_07_08_2010','mha_07_15_2010','mha_07_22_2010',
               'mha_07_29_2010','mha_08_05_2010','mha_08_12_2010','mha_area_2010_2011','mha_06_09_2011',
               'mha_06_16_2011','mha_06_23_2011','mha_06_30_2011','mha_07_07_2011','mha_07_14_2011',
               'mha_07_21_2011','mha_07_28_2011','mha_08_04_2011','mha_08_11_2011','mha_08_18_2011',
               'mha_area_2011_2012','mha_05_24_2012','mha_05_31_2012','mha_06_07_2012','mha_06_14_2012',
               'mha_06_21_2012','mha_06_28_2012','mha_07_05_2012','mha_07_12_2012','mha_07_19_2012',
               'mha_07_26_2012','mha_08_02_2012','mha_08_09_2012','mha_08_16_2012','mha_08_23_2012',
               'mha_area_2012_2013','mha_06_06_2013','mha_06_13_2013','mha_06_20_2013','mha_06_27_2013',
               'mha_07_04_2013','mha_07_11_2013','mha_07_18_2013','mha_07_25_2013','mha_08_01_2013',
               'mha_08_08_2013','mha_08_15_2013','mha_08_22_2013','mha_08_29_2013','mha_09_05_2013',
               'mha_area_2013_2014','mha_06_05_2014','mha_06_12_2014','mha_06_18_2014','mha_06_26_2014',
               'mha_07_03_2014','mha_07_10_2014','mha_07_17_2014','mha_07_24_2014','mha_07_31_2014',
               'mha_08_07_2014','mha_08_14_2014','mha_08_21_2014','mha_08_28_2014','mha_09_04_2014')


names(merge26) <- hemerge26
View(merge26)


write.csv(merge26, file='agroserv_cropdates_muni.csv', row.names=FALSE)


fsoyp10_2_re_1 <- tibble::rowid_to_column(fsoyp10_2_re_1, "ID")
fsoyp11reg <- tibble::rowid_to_column(fsoyp11reg, "ID")
fsoyp12reg <- tibble::rowid_to_column(fsoyp12reg, "ID")
fsoyp13_2 <- tibble::rowid_to_column(fsoyp13_2, "ID")
fsoyp14reg <- tibble::rowid_to_column(fsoyp14reg, "ID")
fsoyp15_2 <- tibble::rowid_to_column(fsoyp15_2, "ID")
fsoyp16 <- tibble::rowid_to_column(fsoyp16, "ID")
fsoyp17 <- tibble::rowid_to_column(fsoyp17, "ID")
fsoyp18 <- tibble::rowid_to_column(fsoyp18, "ID")
fsoyp19 <- tibble::rowid_to_column(fsoyp19, "ID")


fsoyh9_mun5 <- tibble::rowid_to_column(fsoyh9_mun5, "ID")
fsoyh10_1 <- tibble::rowid_to_column(fsoyh10_1, "ID")
fsoyh11_muni <- tibble::rowid_to_column(fsoyh11_muni, "ID")
fsoyh12_muni <- tibble::rowid_to_column(fsoyh12_muni, "ID")
fsoyh13_muni <- tibble::rowid_to_column(fsoyh13_muni, "ID")
fsoyh14_1 <- tibble::rowid_to_column(fsoyh14_1, "ID")
fsoyh15_1 <- tibble::rowid_to_column(fsoyh15_1, "ID")
fmap9_mun3 <- tibble::rowid_to_column(fmap9_mun3, "ID")
fmap10_mun <- tibble::rowid_to_column(fmap10_mun, "ID")
fmap11_1 <- tibble::rowid_to_column(fmap11_1, "ID")
fmap12_1 <- tibble::rowid_to_column(fmap12_1, "ID")
fmap13_1 <- tibble::rowid_to_column(fmap13_1, "ID")
fmap14_1 <- tibble::rowid_to_column(fmap14_1, "ID")
fmap15_1 <- tibble::rowid_to_column(fmap15_1, "ID")
fmah9 <- tibble::rowid_to_column(fmah9, "ID")
fmah10_mun <- tibble::rowid_to_column(fmah10_mun, "ID")
fmah11_1 <- tibble::rowid_to_column(fmah11_1, "ID")
fmah12_1 <- tibble::rowid_to_column(fmah12_1, "ID")
fmah13_1 <- tibble::rowid_to_column(fmah13_1, "ID")
fmah14_1 <- tibble::rowid_to_column(fmah14_1, "ID")

