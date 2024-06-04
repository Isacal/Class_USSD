# Use a base PHP image
FROM php:8.0-apache

# Copy your application code
WORKDIR /var/www/html

# Copy your USSD.php file
COPY USSD.php .

# Expose the port used by your application (usually port 80)
EXPOSE 80

# Start the Apache web server
CMD ["apache2", "-f", "/etc/apache2/apache2.conf"]