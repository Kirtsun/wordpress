# Wordpress



To get started, run the wordpress_download.sh command. You can also specify the desired version in wordpress_download.sh:

    wordpress_version="your version"

The next step is to configure the config.wp/wp-config.php configuration file to connect to the database, specify your values:
      
    /** Database name for WordPress */
    define( 'DB_NAME', 'DB_NAME' );

    /** Database user name */
    define( 'DB_USER', 'USER' );

    /** Database password */
    define( 'DB_PASSWORD', 'password' );



Should create a .env file and put in it the configurations to connect to the database in docker-compose:

    MYSQL_DATABASE=DB_NAME
    MYSQL_USER=USER
    MYSQL_PASSWORD=password
    MYSQL_RANDOM_ROOT_PASSWORD=1

It is necessary to create the .htpasswd file in the /nginx directory. Using the command:

    htpasswd -c /path/to-your/file/.htpasswd user_name
    (replace user_name with your username)
    This way you will be able to log in admin console.


To start the server:
    
    docker-compose up -d
