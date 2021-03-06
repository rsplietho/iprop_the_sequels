PGDMP     3                     z           indiepacman    13.5    13.5     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16713    indiepacman    DATABASE     m   CREATE DATABASE indiepacman WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_Netherlands.1252';
    DROP DATABASE indiepacman;
                postgres    false            �            1259    16722    games    TABLE     �   CREATE TABLE public.games (
    appid bigint NOT NULL,
    name character varying NOT NULL,
    score bigint,
    games_genre character varying
);
    DROP TABLE public.games;
       public         heap    postgres    false            �            1259    16714    genres    TABLE     Z   CREATE TABLE public.genres (
    description character varying NOT NULL,
    id bigint
);
    DROP TABLE public.genres;
       public         heap    postgres    false            �          0    16722    games 
   TABLE DATA           @   COPY public.games (appid, name, score, games_genre) FROM stdin;
    public          postgres    false    201   �
       �          0    16714    genres 
   TABLE DATA           1   COPY public.genres (description, id) FROM stdin;
    public          postgres    false    200   �
       )           2606    16729    games games_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (appid);
 :   ALTER TABLE ONLY public.games DROP CONSTRAINT games_pkey;
       public            postgres    false    201            '           2606    16721    genres genres_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.genres
    ADD CONSTRAINT genres_pkey PRIMARY KEY (description);
 <   ALTER TABLE ONLY public.genres DROP CONSTRAINT genres_pkey;
       public            postgres    false    200            *           2606    16730    games genre    FK CONSTRAINT     x   ALTER TABLE ONLY public.games
    ADD CONSTRAINT genre FOREIGN KEY (games_genre) REFERENCES public.genres(description);
 5   ALTER TABLE ONLY public.games DROP CONSTRAINT genre;
       public          postgres    false    2855    201    200            �      x������ � �      �      x������ � �     