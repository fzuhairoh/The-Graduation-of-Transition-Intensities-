install.packages("tidyverse")
install.packages("readxl")
library(tidyverse)
library(readxl)
library(glm2)

Graduasi <- read_excel("D:/S S S/BAHAN KULIAH/SEMESTER 1 (ICMSA)/Literature Review/Data Paper lengkap.xlsx", 
    sheet = "Transisi", na = "\"\"")
Graduasi

GLM.1 <- glm(Fn01 ~ Age + FSehat, family = poisson(log), data = Graduasi)
summary(GLM.1)
exp(coef(GLM.1))  # Exponentiated coefficients
GLM.2 <- glm(Fn02 ~ Age + FSehat, family = poisson(log), data = Graduasi)
summary(GLM.2)
exp(coef(GLM.2))  # Exponentiated coefficients
GLM.3 <- glm(Fn10 ~ Age + FSakit, family = poisson(log), data = Graduasi)
summary(GLM.3)
exp(coef(GLM.3))  # Exponentiated coefficients
GLM.4 <- glm(Fn12 ~ Age + FSakit, family = poisson(log), data = Graduasi)
summary(GLM.4)
exp(coef(GLM.4))  # Exponentiated coefficients
GLM.5 <- glm(Mn01 ~ Age + MSehat, family = poisson(log), data = Graduasi)
summary(GLM.5)
exp(coef(GLM.5))  # Exponentiated coefficients
GLM.6 <- glm(Mn02 ~ Age + MSehat, family = poisson(log), data = Graduasi)
summary(GLM.6)
exp(coef(GLM.6))  # Exponentiated coefficients
GLM.7 <- glm(Mn10 ~ Age + MSakit, family = poisson(log), data = Graduasi)
summary(GLM.7)
exp(coef(GLM.7))  # Exponentiated coefficients
GLM.8 <- glm(Mn12 ~ Age + MSakit, family = poisson(log), data = Graduasi)
summary(GLM.8)
exp(coef(GLM.8))  # Exponentiated coefficients
GLM.9 <- glm(Mn12 ~ Age + MSakit, family = poisson(log), data = Graduasi)
summary(GLM.9)
exp(coef(GLM.9))  # Exponentiated coefficients

