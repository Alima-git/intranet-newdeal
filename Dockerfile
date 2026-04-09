# Image de base nginx demandée par l'examen
FROM nginx:alpine3.23-slim

# Supprimer le contenu par défaut de nginx
RUN rm -rf /usr/share/nginx/html/*

# Copier tout le site en une seule commande
COPY . /usr/share/nginx/html/

# Exposer le port 80
EXPOSE 80

# Démarrer nginx
CMD ["nginx", "-g", "daemon off;"]