PGDMP      (                |            practicaDB2    16.1    16.1     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    41354    practicaDB2    DATABASE     �   CREATE DATABASE "practicaDB2" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Latin America.utf8';
    DROP DATABASE "practicaDB2";
                postgres    false            �            1259    41356    persona    TABLE     �   CREATE TABLE public.persona (
    pk_persona integer NOT NULL,
    correo character varying(255),
    clave character varying(255),
    nombre character varying(255)
);
    DROP TABLE public.persona;
       public         heap    postgres    false            �            1259    41355    persona_pk_persona_seq    SEQUENCE     �   CREATE SEQUENCE public.persona_pk_persona_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.persona_pk_persona_seq;
       public          postgres    false    216            �           0    0    persona_pk_persona_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.persona_pk_persona_seq OWNED BY public.persona.pk_persona;
          public          postgres    false    215            P           2604    41359    persona pk_persona    DEFAULT     x   ALTER TABLE ONLY public.persona ALTER COLUMN pk_persona SET DEFAULT nextval('public.persona_pk_persona_seq'::regclass);
 A   ALTER TABLE public.persona ALTER COLUMN pk_persona DROP DEFAULT;
       public          postgres    false    216    215    216            �          0    41356    persona 
   TABLE DATA           D   COPY public.persona (pk_persona, correo, clave, nombre) FROM stdin;
    public          postgres    false    216          �           0    0    persona_pk_persona_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.persona_pk_persona_seq', 2, true);
          public          postgres    false    215            R           2606    41363    persona persona_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.persona
    ADD CONSTRAINT persona_pkey PRIMARY KEY (pk_persona);
 >   ALTER TABLE ONLY public.persona DROP CONSTRAINT persona_pkey;
       public            postgres    false    216            �   h   x�]�1
�0@ѹ9EN �PA��%�Xm#�:xz�]�㗆<��_X��j�~	=3�k������(F��������Hvϖp�Ĳ�1��H� ^s�%J     