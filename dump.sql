PGDMP     6    0            	    y            mywallet    14.0    14.0                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            	           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            
           1262    16556    mywallet    DATABASE     ]   CREATE DATABASE mywallet WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.UTF-8';
    DROP DATABASE mywallet;
             
   pedrolpin4    false            �            1259    16573    sessions    TABLE     `   CREATE TABLE public.sessions (
    id integer NOT NULL,
    "userId" integer,
    token text
);
    DROP TABLE public.sessions;
       public         heap 
   pedrolpin4    false            �            1259    16572    sessions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.sessions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.sessions_id_seq;
       public       
   pedrolpin4    false    212                       0    0    sessions_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.sessions_id_seq OWNED BY public.sessions.id;
          public       
   pedrolpin4    false    211            �            1259    16630    transactions    TABLE     �   CREATE TABLE public.transactions (
    id integer NOT NULL,
    "userId" integer,
    value numeric,
    description text,
    date date
);
     DROP TABLE public.transactions;
       public         heap 
   pedrolpin4    false            �            1259    16629    transactions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.transactions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.transactions_id_seq;
       public       
   pedrolpin4    false    214                       0    0    transactions_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.transactions_id_seq OWNED BY public.transactions.id;
          public       
   pedrolpin4    false    213            �            1259    16559    users    TABLE     i   CREATE TABLE public.users (
    id integer NOT NULL,
    name text,
    email text,
    password text
);
    DROP TABLE public.users;
       public         heap 
   pedrolpin4    false            �            1259    16558    users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public       
   pedrolpin4    false    210                       0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public       
   pedrolpin4    false    209            r           2604    16576    sessions id    DEFAULT     j   ALTER TABLE ONLY public.sessions ALTER COLUMN id SET DEFAULT nextval('public.sessions_id_seq'::regclass);
 :   ALTER TABLE public.sessions ALTER COLUMN id DROP DEFAULT;
       public       
   pedrolpin4    false    211    212    212            s           2604    16633    transactions id    DEFAULT     r   ALTER TABLE ONLY public.transactions ALTER COLUMN id SET DEFAULT nextval('public.transactions_id_seq'::regclass);
 >   ALTER TABLE public.transactions ALTER COLUMN id DROP DEFAULT;
       public       
   pedrolpin4    false    213    214    214            q           2604    16562    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public       
   pedrolpin4    false    209    210    210                      0    16573    sessions 
   TABLE DATA           7   COPY public.sessions (id, "userId", token) FROM stdin;
    public       
   pedrolpin4    false    212   {                 0    16630    transactions 
   TABLE DATA           N   COPY public.transactions (id, "userId", value, description, date) FROM stdin;
    public       
   pedrolpin4    false    214   �                  0    16559    users 
   TABLE DATA           :   COPY public.users (id, name, email, password) FROM stdin;
    public       
   pedrolpin4    false    210   j                  0    0    sessions_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.sessions_id_seq', 250, true);
          public       
   pedrolpin4    false    211                       0    0    transactions_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.transactions_id_seq', 138, true);
          public       
   pedrolpin4    false    213                       0    0    users_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.users_id_seq', 380, true);
          public       
   pedrolpin4    false    209               j   x�ʻD! �X{�_�^.��K8ÝYfk��U���-�����3hcg�����g� )L�1_�)�Bnt����a��-�H��5	T-!�ڐTa������A i         e  x�}�MR�0���9����z7�1�$L�����(��R&��Zņ�^��K�lHK$Ӥ3�!�KQ
^JUȇJA����ޟ���as�ڟ�lt�VO����R�t^EF{���N��C3�"L*b��*�2�� ��:�a�!TG�{�qI�[֒W��_vV�B��;�m�"�.kV��TE�3s&�����2,H"��fU��!Ut������s-�p���w��H��q#��-s��d6��[�U�i;n0!V�G�)�`�3��Ԇ����i#�qA`C��v	Lx���`y��5�x?����Q5ϨLl���.�z�j��h�'�7���}bEQ|My��          &  x�u�Ɏ�@е|������
*�(8@kz�(SA����mzH:mz�V7��<)�u�u�.�����3���?�!lv����(����%`m9�O&Q����F-nN��c0��l0�>����x�⨋����ː�����%�~�Z1z`��2��J'�\l3�h���Fs�I�M\F@��i�:y�j����7�z����1�f��*ˈb-_�.�[[nҳs}��W��E��<DI~&������Ъ1+rn++��c��'B�Q־�|��Sы���Q���C/<箮6�;`���      