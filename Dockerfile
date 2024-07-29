# Dockerfile para PHP en la carpeta App
FROM public.ecr.aws/docker/library/php:latest

# Copiar la aplicación PHP al directorio web del contenedor
COPY ./ /var/www/html

# Configurar el directorio de trabajo
WORKDIR /var/www/html

# Instalar extensiones PHP necesarias (si es necesario)
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Exponer el puerto 80
EXPOSE 80

# Ejecutar el servidor web de PHP (ejemplo usando PHP built-in server)
CMD ["php", "-S", "0.0.0.0:80"]
