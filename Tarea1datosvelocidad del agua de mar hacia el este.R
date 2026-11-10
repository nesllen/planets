install.packages("ncdf4")

# 1. Cargar la librería
library(ncdf4)

# 2. Abrir el archivo agregando la extensión .nc
archivo_nc <- nc_open("glo12_rg_1d-m_20261001-20261001_3D-uovo_hcst_R20261014.nc")

# 3. Verificar
print(archivo_nc)

# Extraemos una porción con 4 dimensiones y cambiamos la latitud a 1000 para que caiga en mar abierto
muestra_datos <- data.frame(
  uo_valor = ncvar_get(archivo_nc, "uo", start = c(1, 1000, 1, 1), count = c(10, 1, 1, 1))
)

# Mostramos las primeras filas
head(muestra_datos)
