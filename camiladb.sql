PGDMP                      }            CamilaDB    17.5    17.5                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false                       1262    16388    CamilaDB    DATABASE     ~   CREATE DATABASE "CamilaDB" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Mexico.1252';
    DROP DATABASE "CamilaDB";
                     Camila    false            �            1259    16389    puntuaciones    TABLE     Q   CREATE TABLE public.puntuaciones (
    id_jugador bigint,
    marcador bigint
);
     DROP TABLE public.puntuaciones;
       public         heap r       postgres    false                      0    16389    puntuaciones 
   TABLE DATA           <   COPY public.puntuaciones (id_jugador, marcador) FROM stdin;
    public               postgres    false    217   #          6   x��� !�7�5�bi.�g;!�ڭ���.5t�����50���oI��     