PGDMP     %    9            
    z         	   job_board #   14.5 (Ubuntu 14.5-0ubuntu0.22.04.1) #   14.5 (Ubuntu 14.5-0ubuntu0.22.04.1) $    B           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            C           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            D           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            E           1262    16388 	   job_board    DATABASE     ^   CREATE DATABASE job_board WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'fr_FR.UTF-8';
    DROP DATABASE job_board;
                postgres    false            ?            1259    24579    advertisements    TABLE       CREATE TABLE public.advertisements (
    id integer NOT NULL,
    work character varying(50),
    wages character varying(100),
    working_time character varying(150),
    adress character varying(500),
    description character varying(500),
    society_id integer NOT NULL
);
 "   DROP TABLE public.advertisements;
       public         heap    postgres    false            ?            1259    24577    advertisements_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.advertisements_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.advertisements_id_seq;
       public          postgres    false    213            F           0    0    advertisements_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.advertisements_id_seq OWNED BY public.advertisements.id;
          public          postgres    false    211            ?            1259    24578    advertisements_society_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.advertisements_society_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.advertisements_society_id_seq;
       public          postgres    false    213            G           0    0    advertisements_society_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.advertisements_society_id_seq OWNED BY public.advertisements.society_id;
          public          postgres    false    212            ?            1259    24596    informations    TABLE       CREATE TABLE public.informations (
    id integer NOT NULL,
    firstname character varying(50),
    lastname character varying(50),
    email character varying(150),
    tel character varying(150),
    message character varying(500),
    advertisement character varying(500)
);
     DROP TABLE public.informations;
       public         heap    postgres    false            ?            1259    24595    informations_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.informations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.informations_id_seq;
       public          postgres    false    217            H           0    0    informations_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.informations_id_seq OWNED BY public.informations.id;
          public          postgres    false    216            ?            1259    24589 	   societies    TABLE     ?   CREATE TABLE public.societies (
    id integer NOT NULL,
    society character varying(100),
    email character varying(50),
    tel character varying(50),
    adress character varying(150)
);
    DROP TABLE public.societies;
       public         heap    postgres    false            ?            1259    24588    societies_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.societies_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.societies_id_seq;
       public          postgres    false    215            I           0    0    societies_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.societies_id_seq OWNED BY public.societies.id;
          public          postgres    false    214            ?            1259    16395    users    TABLE     ?  CREATE TABLE public.users (
    id integer NOT NULL,
    firstname character varying(50) NOT NULL,
    lastname character varying(50) NOT NULL,
    tel character varying(50) NOT NULL,
    email character varying(100) NOT NULL,
    age bigint NOT NULL,
    stat character varying(200) NOT NULL,
    username character varying(50) NOT NULL,
    password character varying(50) NOT NULL
);
    DROP TABLE public.users;
       public         heap    postgres    false            ?            1259    16394    users_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    210            J           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    209            ?           2604    24582    advertisements id    DEFAULT     v   ALTER TABLE ONLY public.advertisements ALTER COLUMN id SET DEFAULT nextval('public.advertisements_id_seq'::regclass);
 @   ALTER TABLE public.advertisements ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    211    213    213            ?           2604    24583    advertisements society_id    DEFAULT     ?   ALTER TABLE ONLY public.advertisements ALTER COLUMN society_id SET DEFAULT nextval('public.advertisements_society_id_seq'::regclass);
 H   ALTER TABLE public.advertisements ALTER COLUMN society_id DROP DEFAULT;
       public          postgres    false    213    212    213            ?           2604    24599    informations id    DEFAULT     r   ALTER TABLE ONLY public.informations ALTER COLUMN id SET DEFAULT nextval('public.informations_id_seq'::regclass);
 >   ALTER TABLE public.informations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216    217            ?           2604    24592    societies id    DEFAULT     l   ALTER TABLE ONLY public.societies ALTER COLUMN id SET DEFAULT nextval('public.societies_id_seq'::regclass);
 ;   ALTER TABLE public.societies ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    214    215            ?           2604    16398    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    209    210            ;          0    24579    advertisements 
   TABLE DATA           h   COPY public.advertisements (id, work, wages, working_time, adress, description, society_id) FROM stdin;
    public          postgres    false    213   ?(       ?          0    24596    informations 
   TABLE DATA           c   COPY public.informations (id, firstname, lastname, email, tel, message, advertisement) FROM stdin;
    public          postgres    false    217   5+       =          0    24589 	   societies 
   TABLE DATA           D   COPY public.societies (id, society, email, tel, adress) FROM stdin;
    public          postgres    false    215   R+       8          0    16395    users 
   TABLE DATA           c   COPY public.users (id, firstname, lastname, tel, email, age, stat, username, password) FROM stdin;
    public          postgres    false    210   ',       K           0    0    advertisements_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.advertisements_id_seq', 1, false);
          public          postgres    false    211            L           0    0    advertisements_society_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.advertisements_society_id_seq', 1, false);
          public          postgres    false    212            M           0    0    informations_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.informations_id_seq', 1, false);
          public          postgres    false    216            N           0    0    societies_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.societies_id_seq', 1, false);
          public          postgres    false    214            O           0    0    users_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.users_id_seq', 34, true);
          public          postgres    false    209            ?           2606    24587 "   advertisements advertisements_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.advertisements
    ADD CONSTRAINT advertisements_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.advertisements DROP CONSTRAINT advertisements_pkey;
       public            postgres    false    213            ?           2606    24603    informations informations_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.informations
    ADD CONSTRAINT informations_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.informations DROP CONSTRAINT informations_pkey;
       public            postgres    false    217            ?           2606    24594    societies societies_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.societies
    ADD CONSTRAINT societies_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.societies DROP CONSTRAINT societies_pkey;
       public            postgres    false    215            ?           2606    16402    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    210            ;   6  x??R?n?@>;O1=qq?$U?
??
T?????????mr?yx*???n*?r۵g?߹??:f
?$2???????r????'?l4??zs?Y??l??*????$??n?I?ik.6\}S???S?Fy?9I?1? !??j:h?^3e???8???#i?????%}?Zv yt=?lWpd????Ӥm&ݒ>K???ALc?`h??V?u?uPN??c?V?˓?A??jk??zC??Rʸ??ޱ??YM?!?UQ???\?n?e?.s? ?$j?%	??? '?(???,?????x?Ȼ??U?&????K?I#??G?D?C ??*??٭@?????;?/.<??&9%?G????b??????p?lJ?gk$?)? %[?n4&n2?bgt?	?
dp?pEo'??B??t???f?St?????$?9????G?q	g(jU?XG???????DQ?????zu?~?dL??+:??5??usA7?5???S????Ž??@2?c??.?1?????FYI:??&??b#S#ˆ???h?????????$A%???pp?s???~??`^????~_.??fq?      ?      x?????? ? ?      =   ?   x?E??j?0????z?`?t??e??Ba;??&j?Փ??P?????݄?燶@?4Ñ??'ֱ??7?iZ??	??7???瘢????Ct??e%S?H????b?É????c\;????dy????շ]?Pl?ā?????C??^3?ҞM?^?O????7u?TZ?_?????
???B????_'???5??muO?      8   {   x?-?M
?0?דSx??IqW.
?ͳ?|1?G??????on|?ީdLq?"0?	G????w????Pf=?oA??￭?F?3~???h??+???d??]tM?????=?RjFR(     