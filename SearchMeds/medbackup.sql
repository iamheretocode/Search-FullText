PGDMP     &    .            
    y            drugdb    14.1    14.0 j    t           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            u           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            v           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            w           1262    17090    drugdb    DATABASE     b   CREATE DATABASE drugdb WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_India.1252';
    DROP DATABASE drugdb;
                postgres    false            �            1259    17117 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    postgres    false            �            1259    17116    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          postgres    false    216            x           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          postgres    false    215            �            1259    17126    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    postgres    false            �            1259    17125    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          postgres    false    218            y           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          postgres    false    217            �            1259    17110    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    postgres    false            �            1259    17109    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          postgres    false    214            z           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          postgres    false    213            �            1259    17133 	   auth_user    TABLE     �  CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);
    DROP TABLE public.auth_user;
       public         heap    postgres    false            �            1259    17142    auth_user_groups    TABLE     ~   CREATE TABLE public.auth_user_groups (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         heap    postgres    false            �            1259    17141    auth_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public          postgres    false    222            {           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
          public          postgres    false    221            �            1259    17132    auth_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public          postgres    false    220            |           0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
          public          postgres    false    219            �            1259    17149    auth_user_user_permissions    TABLE     �   CREATE TABLE public.auth_user_user_permissions (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         heap    postgres    false            �            1259    17148 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public          postgres    false    224            }           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
          public          postgres    false    223            �            1259    17208    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);
 $   DROP TABLE public.django_admin_log;
       public         heap    postgres    false            �            1259    17207    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          postgres    false    226            ~           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          postgres    false    225            �            1259    17101    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    postgres    false            �            1259    17100    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          postgres    false    212                       0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          postgres    false    211            �            1259    17092    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    postgres    false            �            1259    17091    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          postgres    false    210            �           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          postgres    false    209            �            1259    17237    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    postgres    false            �            1259    17247    search_medicine    TABLE     P  CREATE TABLE public.search_medicine (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    price double precision NOT NULL,
    manufacturer_name character varying(255) NOT NULL,
    salt_name text,
    drug_form text,
    pack_size character varying(150) NOT NULL,
    strength text,
    unit character varying(50)
);
 #   DROP TABLE public.search_medicine;
       public         heap    postgres    false            �            1259    17246    search_medicine_id_seq    SEQUENCE        CREATE SEQUENCE public.search_medicine_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.search_medicine_id_seq;
       public          postgres    false    229            �           0    0    search_medicine_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.search_medicine_id_seq OWNED BY public.search_medicine.id;
          public          postgres    false    228            �           2604    17120    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    216    216            �           2604    17129    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    218    218            �           2604    17113    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    213    214            �           2604    17136    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    219    220            �           2604    17145    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    221    222            �           2604    17152    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    224    224            �           2604    17211    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    226    225    226            �           2604    17104    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    211    212    212            �           2604    17095    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    209    210            �           2604    17250    search_medicine id    DEFAULT     x   ALTER TABLE ONLY public.search_medicine ALTER COLUMN id SET DEFAULT nextval('public.search_medicine_id_seq'::regclass);
 A   ALTER TABLE public.search_medicine ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    228    229    229            d          0    17117 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          postgres    false    216   Ӌ       f          0    17126    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          postgres    false    218   ��       b          0    17110    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          postgres    false    214   �       h          0    17133 	   auth_user 
   TABLE DATA           �   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public          postgres    false    220   I�       j          0    17142    auth_user_groups 
   TABLE DATA           A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public          postgres    false    222   ��       l          0    17149    auth_user_user_permissions 
   TABLE DATA           P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public          postgres    false    224   �       n          0    17208    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          postgres    false    226   4�       `          0    17101    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          postgres    false    212   Q�       ^          0    17092    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    210   Ŏ       o          0    17237    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          postgres    false    227   ��       q          0    17247    search_medicine 
   TABLE DATA           ~   COPY public.search_medicine (id, name, price, manufacturer_name, salt_name, drug_form, pack_size, strength, unit) FROM stdin;
    public          postgres    false    229   ��       �           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          postgres    false    215            �           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          postgres    false    217            �           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 28, true);
          public          postgres    false    213            �           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
          public          postgres    false    221            �           0    0    auth_user_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);
          public          postgres    false    219            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
          public          postgres    false    223            �           0    0    django_admin_log_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);
          public          postgres    false    225            �           0    0    django_content_type_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.django_content_type_id_seq', 7, true);
          public          postgres    false    211            �           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 19, true);
          public          postgres    false    209            �           0    0    search_medicine_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.search_medicine_id_seq', 999, true);
          public          postgres    false    228            �           2606    17235    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            postgres    false    216            �           2606    17165 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            postgres    false    218    218            �           2606    17131 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            postgres    false    218            �           2606    17122    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            postgres    false    216            �           2606    17156 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            postgres    false    214    214            �           2606    17115 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            postgres    false    214            �           2606    17147 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public            postgres    false    222            �           2606    17180 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public            postgres    false    222    222            �           2606    17138    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public            postgres    false    220            �           2606    17154 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public            postgres    false    224            �           2606    17194 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public            postgres    false    224    224            �           2606    17230     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public            postgres    false    220            �           2606    17216 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            postgres    false    226            �           2606    17108 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            postgres    false    212    212            �           2606    17106 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            postgres    false    212            �           2606    17099 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            postgres    false    210            �           2606    17243 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            postgres    false    227            �           2606    17254 $   search_medicine search_medicine_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.search_medicine
    ADD CONSTRAINT search_medicine_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.search_medicine DROP CONSTRAINT search_medicine_pkey;
       public            postgres    false    229            �           1259    17236    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            postgres    false    216            �           1259    17176 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            postgres    false    218            �           1259    17177 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            postgres    false    218            �           1259    17162 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            postgres    false    214            �           1259    17192 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public            postgres    false    222            �           1259    17191 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public            postgres    false    222            �           1259    17206 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     �   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public            postgres    false    224            �           1259    17205 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public            postgres    false    224            �           1259    17231     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public            postgres    false    220            �           1259    17227 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            postgres    false    226            �           1259    17228 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            postgres    false    226            �           1259    17245 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            postgres    false    227            �           1259    17244 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            postgres    false    227            �           2606    17171 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          postgres    false    214    218    3234            �           2606    17166 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          postgres    false    218    216    3239            �           2606    17157 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          postgres    false    214    212    3229            �           2606    17186 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public          postgres    false    216    222    3239            �           2606    17181 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public          postgres    false    220    222    3247            �           2606    17200 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public          postgres    false    224    214    3234            �           2606    17195 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public          postgres    false    224    3247    220            �           2606    17217 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          postgres    false    3229    226    212            �           2606    17222 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public          postgres    false    220    226    3247            d      x������ � �      f      x������ � �      b   ,  x�]�K��0��ur
NP5�ծ�#�XR�����6;�|�	;�Մ���1��u~g���vƣ�H��&��T�b�#�����a��o���Fe*�`~�2��xL�[�8�N�Z�)K���8QIl�*�y|M&�@���*�w�"�d�A(���`=���l
�?�+�|z���r:Aų�G��:Mnǰn-[���j���&CN����ˮ��>���3Os�u�z��W+���j��PgbjۙQ^bb�aU"��O�v`jL:�֫5���������Xk?Z�e�      h   �   x��Q�0 ����|�d�m�T�	")1MM,�I������+o�%�ɇ����	#�²V��>%����ǐ5�qmBf���W�wHu]�v��`���јy-�A�k�P�z# T��T���V�w�S@1%s2��wܵ�s�Q3��(�B?`�/W      j      x������ � �      l      x������ � �      n      x������ � �      `   d   x�M�K
�0�z�)���2�[8�Z6����
���D!Q����mǓ��5�"�R��d���}�p6|(V������/�����XN
7*�$�2��>�+�      ^   �  x����n� ��ݧ�}S��Ga��	!.�$*��}qhRR71��|��������}�K�i&�*�0�Ax�4W���ֈN�+bW�.�R��<Q ސ("���f:W�s,���*,���.��������v+b
���v�1A*U獝�Ǡz�}ZӅ4J�si��Oz8y�/��FNj�E��4��'�j���Y��,�flC�Q��AO}��D1�D�4i�=*3�b5kHd=���a�ξ��;i8@Î�A-~�	F\�RH0�pA5!�ո��c�`��`��{{�h�[榼uˣ�9�䨗E��6"g�C"�L�ŤNR'��
4�ğ�����TT`�(�zg��)��9�&�@�sHK��ٟ���娨 ��$L�:��t�=9^hm��j���'�
:�@�r��-Fy�,�^_.�_�Wq�      o      x������ � �      q      x��}YW�H����W��ŇӚ�Gȡ���ʪ�o��F�|%�������"4��o��Y�CH�����9��ϲZ��x�xpoӻ"[;�(r>���1[�W�i�Hg�f�������o�u�g�sT�e�y�Z�#�9<�㺿��M��/����݋��Ϗ�/����F:��3�f�g�YV�{�v���w��w�Y^��=p���yS��|���X�n�v��\�
�p<��o�s^.כ����ݰy�xL���Tպ�х�һ�J�%�̽z^�g�9�:+6Oi��O8vB���,\��z���̓�$���ɪ͂���z����{u�$]b���S�9G��:�����	�Q8��YUgi�~��b�8K�L���k�~���ڲY1
F����.����z{����Ώ�&�Q���W�U�+{�u]��|����y��H�8�]����s?��2{�stt�vϦ��ŝβ���m�u�/3���_�l��K����{X�?�ⷉs�.�m)�z��:�_�O]})6��˰y�Hn
��oS�<]�4��?\��!2�:	hs��U�y6�Wx}����|I����2om~L�XmD13���<[�G?ܽ�ȏ��C���b]���z�Y��-1��F�ʗlM��~����q�����y�+:3t��n��徻G�~X�;����</R��tmw�ǖ�����>�7/�N��s,��pxD'��x�-�y6+��i3�q"gt�p4u~ϲ�1"}m�H[��K�Ai�6{��^�ď�v����*�]�~r<�G��'kC�fȖ�}~G�e4%�e�y�㛮�c�'΋��y���B稪7������;���B��Ғ�$�uF_��u�R�5���Eu�±��^;��t�~�29x�dU��-��4jQ�bw�Q������5	���$�>�4ct,��}#�k�f[Ӭ*!��#�Po��
-*���K�!	a��?q.�^`s3DS�M��\g��_�t�l�i�#1�QL(�����!E�KEr[��96�c�-��r�;��d�܍�c�R]4��fqY�����y*�ns�!�:+�׿�)�|���n22V)HF���vl�c�j�|�K[sʿc��;'s��7�'�w��{L�Z�q������#m)�kF�_�Z�@������5�S���?Z�|�Hi�նp�i�h5�!�}����+���E���ܒ
��F}O�F�aʛ��[���W�+\KL{�t4���,D�N���%ݶh��L�e<Z�H���?cG�&5��"_gs�*]B��� ֎2v���YY���T���󖱣��Iv_��)~g�h�M��eY��:���2� 機�B|���ds�>o�������ƑX���RJ�&�6節q#�����?�)�5|!cOZ�;_6�t�9+����f�"J���9��H]g�W�#����8�F�M�j֯�������-��:��}�LgW4%dg����p�/�e�z̖��������9-���,�/~��$����խܦ5�Y��iY�$���K�:�Y��*3S�ljڴ5O��E��ͦ�h���i�u�H_8��~~sa�^��[GЉԊ�c�H���E|k�7������]wO�������?7�2%e�c�ؖI�w�\��H��I�|�I]�{�eUe�u�P�w��UU���;���D���j�̽�V���D�͚&9��s�=�uZ�mĎ�?��Ѓ��]U�Ћϛ��4�b8��d��Ńf��D�t�a޸��ߧ��d�7ҳ����H#��)��uZ@-��Ҙk��H��1�,��pJ�pY>�5��ut�ͦ�#��&�qv_���ϕyv��y*����`BR���Do�	ɨ�ג�iJ�]�w>���)��ެ��s� ��ք'n*}�qk��))J�G{�0�����}U���걲�60�S~����_�%���,���q�w7�{��ց�&!��$��{��*�D0�F�>��ܴ����y8Cz��>�c/��>��O8�m���rٵ��=�Hcrp=��������Kr6��`��q䜑dI-�|���c�B�j��UM�����	�}��7���>H߰����s�i�#6��dѤ/P
zW���җr�SVo	/zA��\?n�'�~�^'�e�4�%��K��X��D�B+�5KG�����dݝ��{N����(��������̺�^��o���&�üZ���a�5�̽*�E��μ��ڮLЄXz=&2b��zU�M�~�t����Ox7ҤR���*v%M�%�xJ��n��ڣGd�Ϭ /V=�s�Pq�vx��)4C�t����$26Rc�8G�C��3�t0t�1�i��D���U=�G�*�d�\
���*����Ρ������^U��N�`�^�#qI �}�A*N�Q�z$�����f�_��NV����R��?�Jx��7h4%�#rȯ��%�r�&����zY�o�=�7Z]�n���^���Va�g�G��=���v'�J�kW��=�HF�}z&rDΧ�*�N
m�E���ƈ�/��տ��%�	��-V�!C����o�(v>���)�I,�?$�d�f��f��[�v�4~	I[��@Ey�-�B&�gLh��D:Ĥ�6�3��N����v���Ԑ�|E�"�� �����y�й��{o	Ѳ��Ձ��uY�dݒ����\�z����Mɻ��1��Z���� !{��;�K���l<v��{��XK�fLAi(Ƭ=E͚���#s�^A��:D�GSڪ����体7��؉l���?B�$�k�4S���H��^��}��s̒_�Q�~��I��(
���$���5b�=�W�!I`h�r�i���Y+��ԾziE^Ȓ�|}"�#�*�$pvD%:�&�nM��RFy9%�T�ow�;�o���.���O�Po�wb��$@�"]>�dݓ@�@n�.�YIG��(�7�Z!e��5�R�[�劖���i�-hs`�A��	ݬ�x,k��sU�$���!���&��>�*:���"�7'��{Ry�b���*P?F��!�z|�y�<|�����P/�=J��s�m}Zt��i�V��4Y3�t����I��o�X��җ�^��O��x�9��9Tf;�{�,��"-h4%��4;����Ͳ�b�)���O�	
�fY��՜������w��I��dLza�Wf�8A�K� B�|�w�/��9*2��2��n���t��������q�I|~��ϗ?�؞�h&��԰<�_M��ɧ���'L�6�ι�7�N�6�h��F-!F��;���bX�߳%��bL3'%����0-%�Ȼ�-� /}���/'���JV�w�dj;^���$=��z(6���9��H .V$�6Uֶ�>#9V��>� �J���I��?��7I�?n)�t����[�����7�t��AÖk�-. �x6&η-���+��>fğ8�zO۲�#���H������C�\E��I��K8$.��_�^�@���!7¦�����9._���\_V�.���!B8s��g~��q|���X�s����OypE�l1/����Ȑ�*1���rFN�{r˚���`7����.�Ao��ג�����.���}Y�������b"�UZ��]�2ęy�b%r&�ly������A�qơϮ����Ξ�<y%'&�s�DSL���p�Uܝپ�W�ʆq.�ia6��ir�_�6�H)c;�WŦ�T���OM�sW�U�
�����p �:����,`|�;�&#Z��tSm�S�����׵w��|��DwM��>�U�_��۽�UYEI�43���e���u���sB2�%���X�#����e8��E�f�bN��ܥ����v�I%J��7���E���T��>���w��x����<Rk*:b�"�wژ��/d���V-�96ձ�Qm8����}���Xf����+�2�;���xη|����M���pD��-΅'#�w��Ͳ8��^�me�C�����Ǖ�E���?�I@>�Y�^���L6L7�-$�-��+�᳃O^GUB�Q ;�,�)R��]���̔4>�	�ڡ���U	����i;s(g)Dz6c~̈�G~Зa���<ȹJ�3�h$�l�_d.�    �'��^������ߨHj>���C�j�Ɗ��@7�7W��� N�+�F^�-L���B�kp���n9��V���R�3�/7<���z(-����ɾ>��֚��Ԍ^��BA�R4��#m'��RӔo��dsI'��@L�eqo�U6��y��sY���3�pY?vb[4S i��K�$���]dڿ+2���^�
+��[�%��;�W��I�o�0/3�)�A��F�^�����3&�0�L�Qdnl/�{�nmc-��	�Id`=�w���jr�ZO9�o�5��>I��a���Hه$2�VH����3���L��;������'�|�ȩ��W����n߿��L�k���Γc����(y^-�};��T���2�˲#���}A���o���H���pώE�95rI�l^�=�[>�����E�x�ے�L� ��1�RO@�(]4"o�?	A�/���H��Нo���+�a�)*���x��#�W�,��{jȑ�暹vK4r����uʰHd;Z���9%Q.�1��栍��b�o��rZ�{t�F��h���G��-��$���kT3�o�N=z�A��)��!��8_�F�2ͽ�Q9Id=w��ڐ��S�)��{d�ӊs'12��3�7?"���l]�� �h��g�6 6����gl��D �����sD*��3�7�PWy� ����;$^ԗ�|×��sBA+ E>� &�7ߧ�郯d^�SL3��W'�=/"۠L���=�fNiG���V;<9�]#��9#-�J��A��G�T�x4�������Aʀ_�� �q����̏"�i-I��]V��|�o#�"<J:��Q��s������D����Y��G}a��Ƌ ���kf�uy�q�jzބ�2x��8g��*˄����4'=�B�=6o~��x��R��'	�'$N
e]��eѻwb�ۃ�p���s�f���3���°fF������{�I�O#K5oy��d��>���V�lc�h����XA���h��6S��� o8vN7+��NdigX��bF�҂���W5]?���L�K���ₑ�bd��������.Q_��<r�2��L�mZq탡�H�#�Y��<�u�=��2����d�b�Q����8���?�`��뜠Rc���z��]���M����Bf�QI�P�`e���HK:��4!P��R�Ocn$�I����,�O�v���~r��=��yV����n  ����Ľ{	E̵y�d�����]�4]��Z��,tlO�A���p�z�=H�_��`F�K�zgO��LЯ��|*��}�4�I��k�qX+����M��7uˆ���kmY=d�|ϟs�S�؛͋F�;/ge�V�3m������������ٟM���v1�
7F�uS	#Il]`�6����<�i�J!�X���AL��RcO�,�f�c{&�g6s���	���ǟ��P�,�.Y&0�iƬ�G�����e)��M���E���}��&��H'�\z�'+j�97�2� ��5;ݫuKs��s~u���G�����BU�%?��j��5[���������]��R���W��>\ JXO�!j����tRGt4��'٪\��1p3�ڊ��l!}A腞#ö ����4����#��{�@��J-�B{�?�1�(�-�>BQ��C��{��u����z��^>.��Z���2�����1�&F�������4�xS�u���R s  ���C��@h����Y��k�S�Qu
��˻|ͪی}Ӥ���˪ ۬LСo/�1Q�3Yg�22�?�v�ޕ{k+���@Fn�d��F%�gel
�1އ�T"���(2�K��B�i��;籕$���e%C�]S�;�y��'�K~�=���́?3fw�?XVE³�Ӷ彶�麁�!�ڶw}ͽ#�j���G�l�M�:"Q�a�|z�S:�i�4@�VY��y����bM]ن�UiO�o��d��������%�Y��H��ӑ?����6:��GI�ػQ(�G�r��kd��ʵ�#���5�Z�/T�~��0��A�"��	��#�{�-$���ܻH�r�:���ā��+��� ��`=t��cm&�Q<��(�lc�S�8c��ݦkh���Gi�J�)a^���y��8#���&� X���	�6�Gp����h,*�l��;U��؃�+�
�{}��y����\�(?B��G����*i8rO�Z��¥�a�M��7�"�"�!\!(�Ih
N �%e++�?��/��-gHp�p^яDug��٧�)�\��wa������xܬm�^�褴Ҏ��4[�b=��wU�E��c��V���=��3��e�N�\�"�m�VN�:[>�XvRMy%|ߛ�ے��������_�&���J���6\ƙ/��M�F�cM��w:J�/E���읍k0g)� P�>��@FV$�"!��-FNq{O�wO�˗-,��������휇�?j!\`A}�CL�v��JQ�'3#B�������J���C0$�s�H�ʓ9s/!)��٭^w��b����$�z�oP�â��^�G'g5�O�!&}�{>�{G]F���R�^in���G²�H�U2Z�L&��%u��_��bO=���tv��W&��A[���9��N��f���rM2bES�P�G�!�!����������TN<p��?�-H+���[p�nIic�Af�49�H�H�{�]��f��,*����f�v/@�l[E�nh�'��Jro?m�1�ȗ�'ٛ�nҙ3+��7��ZZ���kf��I�|�WH�����y��d²���[�/��B����L���6��$h������8��H�����#�'��=q~�8ćg�@��ޜ��W��y�ɐG *��X�E5�!���M��:������\�1M;�@�� �u�rKP�Ў���vV�E�f����a>@(Ӈ��� �}���D��/�0s�L|�R�!��I7�ŗd����4�;v���A�Ym�� D�#l�9�0"s4�;?jRw�����&,����y!ܡ?Q*5�E;�]��&!�����ZF�,?�\$^��]�\ۄL� ��2$\�� �L��ι�S�GFz/E���|B���{r��3�!�Ѹ��?�������b�,]֨�>ag�C`N3��G�;���){*)=�V��8�`��J��
�3��.C7m���[mi}��s&�dc���g� �T����#\ҺU�e�L��x��}��m'�8��"��~mD��]������@}*�gz��{�Fr�t�^ �h�ͪ�p�L���ؠ%�����J����_��[R{�o�zr5��}:w$�}���9��kr���9���_�����0�.r4�������U%��L������aB*�H��bcmb�j����ζ�4n	
(P`m�B*{
p�t�	cҨ���f�I�<>��I��:_���zV���g(p1�p���ܒ>8}P+���U� =57o;!S�Yi�>�蹸�tA�D�m�K�Ԩ4�s�ۣ����l�W: �<(�-=�O�t��y0���(��V��((��7=Z��\� ěgU� ���)	���܈5�o
� N�;�omUGW&*Ӗ��a6CMc�!���,� 8�� k�f��E�`�`�^X�ɿ��b�l�ȡ�Hح��#�9��F�mV��+��t1�?�:��$`��"�Y�i���gY=��H|�U���Z�V�������W�ea��]
�=v
I�y�O(�7F�����#�79�� ������{K2�~�NܺϘ欺��"��(���Һ��x�w��;��+�Cc��~�Ԅ���8��#���v�'$�ӣ�A��oJYrE�Zsx5�$�D`T2x���&FzC��oC�hFbC4H��&Oۼ��m1'��;��+�����P���?�w�\�u��JIS�:��|��gFr�Nԇ�Bu�W�lC��u`�    �1WVH�ӎ{��p��nrS@t�Y������x٪��$��7޾U�}v�x��$�K���ۥԮQ��N�,��[]>@R6_��)�]�cC��;������I��*�t���'?��Ls����ox�^��z�L����Q
�&��w���Ė9�{����ʪyh|'��d�R�<dީjsǵ\-��i��&�d������*~,�����2}q��I�gpc@��[r�]�*f�0Ʊ��@��ǈ�/䑦Gs��ݰJvJn���r氿p�Yr� @����� �*��j����8�����T)��?�e�l��~����Ψ#l�֌#炖�B,���Y�7Q>�D����H8�7���:`��Nb���+s������7A�#Y:����	��b#��v�֮&S��\�xӴ'�>�%}s!�}�����6�h9��C�E+}�Q
ϙc�	є/�~ ���ǔ�����.�W�DA��5G��w�
��K5��˅ݩ������W'��O�T��!��EJ��q;���0�������֟���`;�q�X�i�q�����e�!H~�f�#���~�\dkY�*��bԈ�����`"�m��,��D�B��"��XQR_��斗ݟ@ݝ25��Ĺ�ׯ���(�q�HeUw���G)^RV�]3��S�)�Mk�n4	��AB��m�,7������Rr�t��������G�s����a�UP@c�*���.�n�2g>}4�t�@-�S��';�̕\���0`(�zy����Y�A �}Yև��ZP3��qU.����w�W}]�is+�A(Pl�X���n�do�]�~��DO3ʾҹ�D��2-6s�=�YWv�M�i���ؒ�/M���4i�:�Z�(|�J%F�H'�L��+8pyy���MAf���˼7�2q~���EB���ni����f�we�;<ä�N�Y������F:�mD`~��CbG�H�j���3�A'�J�K:UŚU�������iߑ��~2�r�(T�sMJ����$"Q*60f������t������9����κ��v����9H������NP��7�a��~�.��7���؟a�$
�t�	t���c�-�F^��!�@ZI)�������"`~@���iQ}k��wr����k�5���SQ���R+�f�Y\dB}%�`f0�sjg,�g?E�X�4�Da�\�92똣P��"�&w�5M4�0����z�*[1P�D����d�e�f���áܶ�	aj,6�E�B&�mL�a:�edı}�:�-�0x�O�:��st�j����&�޵C��L���z>��\�B��!GI�j'�%�ݠ���_Ӓ�< U�Ἡ � �<_�v�����}0m߿�����5n��>���vmq�8���t�� 7�(?܏"��:�w/��ְ�#��V���տ������:tyЄ*�Y�G���*��{f6��z]�T?���l����s���v�e��U�qj��[d����� ��f$M��=�=����Z�x� B}�}���*H��E�ǿI9<��ʏH�3�\���t��{���#���K�'�\����x�X������At��o��ڡ��C�
l��i����PL�$��a� A�ɾ�0R��N��2!-�H!q��>��w$����xG�C�>�$�z�J�@!	ؠK�A�{i��Y0{�q��@]A�af�`�({ڛ�:�ُ*�E�mx�8;4B�Į�C7�6�����h�S�:��{rm�^KPY�/%X���9n�T�˅�Z�E>�	@�)0�R���eЦo��f�H��$o�ԤUc��z���~���"���6���u1 �3$3WX; ��Cڵ����dJ�@}r|@�P��
v��&���#�3��26O���5�J	���HS�������4�FʂT>�QٰV���vg�!2M�65�Dj9}���A��IP$wM/?�˾g�kfP��ZՖRX|O��u ^��'��
��E��1\��7"N���I.B{�ZX��m��$�g�E�ױ����h�����{m�q�=D�5��Rh���p�KK�4�ӟ���+�!6%D���>��!s`Q2��M5�
-��w�ǣC��m*���¢	��z�l8����>���O. c
d�(�����خu�;�X���0�W����g���)jp5��X�.���:hx�J��m<k�I��o���\�G��A�zl�J/HCYZ���&�z ƹ`��[�M�z�ض)G�?�����]v���Z���x�f!"_&(0�Ĵ���r���j�y�?�y�^MG���_y�����t���y���x�A�.��(NB� pS�y
��ޅ�0Vb��75���$b>���"�z����m:'��>7
�=}�(�y���b=��o�R_'��S$@��ҹkv��F4# Ϡ{��#����杀x�WȌ��sV4dasU��j�)W������D�k�(��ayi�0�����l4�,0����e48@t��l�,��
�ۈmM�?v�x���@τ�GW]���S���|���-t�t�i��Ĺ��3��,���A���e-ct�9��!��*��n�ަ���&=�O��J�t����]#܁m�u��=W�+Ϛ��;t$��*�8���E�i�#2�b �>yj,X�o��B���
��\|�tMG�ei9��vs0#@�d����I�0`q"u��t<t���� �@��>�_���TFY�Ys�X.�tƆTc�[K��$a�u��$ө�m;�G�^��:�A
��'���d�B��H�I�Scӏ��Wa�%n0���y��FŚ��� ���wo	�g,w0��#��G#�����u���/p� ���ʖ:�BG��z�6~V[��(�`Qh���q��O�$��9l�A�/�賻 dr��뼿`)�Q"k�cR}3fDHzֈ�r3��\0�!��,%�,��?7Kp��?���+WK���MR�6�g@���p�/n��1r�2��y;t���:�$���Rb7l���D�d�a��Y��a�Ҭ5����)[_9L\�\�
:ث��s�U
�n=����o̕�kpr,҅����L��;1�d�.���g%|�L��o��u�d�=�����	'E�Ʀ�;��R]��$�ꟛ�p9�`��&���,�:���u�6�t9a�q ��H׍����6�Q��;�VCƯ16�!�%��H�Ks����:��r���R�.)z�s#�k2�F善��t�µ"wl�Zm��B�~�o��A�
���d��?����ŪS@�J���b:)�놋���aoD[����X�k����8秷g�G'�g��������?p����{{����A�x����n�Ɓ�ϙާYSG�'��@��|��wW�ka&�����L�Z&��R0:t^��u��?N�;�w�z�6�e@�̟���H.�tvu*�>�(Gx�P1r?�D�]-#��U:�N��.st�6�}��&�Ŝ��\�=�����Z	rEF��M��L�*y3��GdOB&�<�S�݀��
~Hf�|�VJ�3
�Kx���m�z-�Ѻ� ����x��n�kO����0VS���~��R����p��#�Վ���K�y ���ƒ��Y��R����dp2��I�!�s��1Q��ly҂�N�QP&���,������6��'�@cl�nQpN��ڰǣ�g�0ؘ�,��.�.3p2~��d��%�����TmM8�&�^0�ѹ�f�ȴs�*D���c���X�0cU�n�x��W�ʆ�i`�F��HXB��)$�)4�w�G�&�t�pf- h��AT���0���Xf���r�V7��K��e� ��р�U��酰Q�m*� Xou����Mn����{�h	�!��{�E����>��(%nA�D-�/Y��=�j��Î��}+[1i�u�Y4= Q�f[U�0�v�͂�  �a����L���Xf�;�n���x;v����.kl��& e�_��J��    ۹@@�X�f�O��%3Id�1q���O�����X��ֽ��p���͋M�?��ƽ�4l�F�\D���0VAn�c�]ᶫ8n�5w��R8���˛�*��t���}��G�����E�;���v~	׾?�&��=2,T2L��&�d�+��H�����۞T�W� ���ooP�:_��%�ɦAA4�oZ����G�S�1�D���(+�v~,�>��K����J��������d|�ْRI[�r�	�-�ӏ���8iZ�
��1���ϰ���6�1m�)�8��M�u4?��ƞs�/E�J�M8�aXGb���pH���	��j>��w��ѯ�z��u+S!W-;���t���,c���ً���cmX�_a��vu�˦�?A�9���T���F����{6�����A}hE��u�Z��Ro��4~�C���з �΍�t��cP�<w�A�cF�w ��ӊc��5���F�]�ܜU�lm	'V骅!��^���}$���ٜ��  I\eL��SU@B�
Y��,�G�W�]�(���JK���hYu}�&���5���4.��Xd��_tE������D8���9�ְ�߽���ْ��9*�W8+ڲ�D�����Ÿ���Zl�fy�������d/%Yx�^e��t�o(yz*kA=�Z�1Y���z�Am���E@ߥ A8<� 2�»D�QB��3l>C�RBȴX� ��߹��5�1��p����R�~B�z[Xf�qF␋v��[�a�O���B��J��6X�����")��V5�z����OC��=�� ���K��tɁI\\]����=r� F��fV
Gӳa�H8"�'|0���p��z�x+G5a��dU�����ku�E����+]8�.mKOV��jC�@�!oy;�|ډ&4ޘ�U�aqr>g����M6�mc��#��rV28��1Ι̭Rm�e��n��d~ o���Qv]E��g�1/S!�W������~tU�BWI <u�����
A�#I`z�U�����/�EË�4RA7����:}a�l*�p<X�>��[U����:>�Kw���l��EӀ�h�������J�I��lK��5�z�r���r�eo2�eש!;��X�j�����n����am ��ԺF��,��|�\^�j����]�:�O9���j�-Jt�SA�$��gW��T�uْ��i�p��L黹��vu�]�����pܒ�������jp{�r��9�b+Z s��$��_���_�vx�QLQ`J�}��I��F�@ ��%G~��Q�-3:y���#���!����^���.I��Qh%�M�g�k�u�{����$YF���=��H�MZ��OI!y��(�E����.9�k3��LY9/g����4K�K���J|'Ã�>
�^C��	fӺG�sz2������/&�����o	ؠa�W���COHT��{��4���c[z���	+��nYh��u����XVq2up3?�;R��`��y<紘��j�GXq'A��*6� &m��������^rmKǂ=�]�#����rLbF�B��M�o�~SJa�!oa#�[�9J�hu���3@;>��[��{���_P�z7�	Ԃi@�D{�y"�'*(�V�[�*�뽷Go'�a���p�x�ǬZ�����! ��4��r�,_!�-^����
>��]iY���O�Ve�}�`�M��MZ�*�V}.�f-��/�������`74��ƈ���
�>�6�]��Wm���񾤢��JU6�U���/VU��4�_���4]D ��G4l��F��zkg��r�_x�=O�d���l�Ȳ��Ť{���*6 g=*�e �c�D�Cי$�)�,s=#hɀ�7�M±��{�io�c�u?�_�	�q xQMJ�PNФ�[�� �����z�����d���n���O�2�4�9Ͳ̶��|��{��&��z����$S�sD���
8�$�1�Nz�/�$5%��Q�t�G8��	��{y҄�ݫk��7�\ �i��W�f�<�M0�����c�֛6��܍���s��*k���x/�?�]L��w��F�������X ��+y(�Ņ��i�X�
P4�˼*}���m �����+>Q*���59� �a{@:����9��&:��雙����U���>�j�����(p����;��З�> =��r,�.�.��!��=ɞ�K�
_��3H�z��gV�ڽ��F����;0x��@�3�꺇���5B/��P����k�w-Qf\�P�3�a�	�8��AO,ݙOXE�x�>������J��'����T�:<��0�� n�T��Ђ��ԪE�l�p{���i(C⏦�I)م$�.�e#�zS2�A���a+�G=����b�cboRAY�!HK��ss#�$$��P0�Ю#���x}G�����`�+х!R�v���������&�A�����ӊ
�N���N��4��v�m߻`���wC[�@d{b�sIB��Һo�$ߨ ����Ї:��y���应���[�S�&/������/�O(+��`<"t���tIӼw�Օ(�$�-���c��ٌ֙6�Gd����<��3(����svx����B�}N�� l�|�ޥ�MN�M1��?��A�n�-n
"Q<p���R��c
�A�0�,��5�P���B����T������_��fLV=��XK�q�uQ��YLc��i�����a�=3�"Y͔Q�NR�Ej��uÀ̘l����ᕋf�V�'��:++�����H(Z�k"�0 ���u��g�$tm*�p�rZ�7��uL���~,>Q��I��$
�KKZ�ߖ�/��HO7F���*�vS]--	ľ4��"a]��!G�3��)c2R�4��
R����P�C`�}á^ﳪ�,�J	�5���*����\�&[����UB�UF7W���-o5�,~�?p���[�v��N�b��i��́��gh~� <u �I�8�C{�Ⱥ����?�����
Kʧ�ږ��eV�Q�Pi�~P�.?o�^4̣Ȫ����&����!3]�X~���_�k!��Q;�6�5��~f^IJ#����L�%ʓE�rw!��gdHuJ�:*H�2��4a�I=TI�A5̼2���G73�x6d����>=�P���g�$���D^ܟ��b��՞>��nH���:��H0��y-,��U�K?����%��>��`m��)��kE�P��5UB�f���-�ݪ��T�R��d��Iw`�˙)�`�cqQ�R��5�NN���t
u)�V�Vm�]��$H����B.(�Xj41��d���9�Z�:#����m����qҘ�4����-Wp8�b�̧@&+�#�<�"A9X�<�<�Y�u9r.�M�_���T�b��鏸��a�o�k���qHr�D�W^��g)b��3�g�}�\,�<�PYn��?��zmNcoABFh��X�Ej��h���m_&��Ҥ]��Z���v��@������f�4$GO.��E5��:A@�����IY �����uX�S���L@Y 4�4ɭ|y�Oh�{Ĉ^ס1�f�n��Z�0�|>VY�MM�18����a}��;h��s�5�	�V�����K��v��]�̠7��Z�4�7�=�V{��
��I�$R试�h��p��v�0�œ ��d7�ȹ�f��r�˯?���U�NM8߄[~&M�"3`�pB��=�)��0���l��J����f]���yh� �����\g�"�W 16�_�ȸ	�f� ��@� ��#B�
}�]�|D��O4C�����n&U+�u_,��傻V�cu�-�H�g����c�I'�}x��WX����trܢj���71�x�I�M��*]�_�#C��n�	�0�'}�z��N348J+��I���;V@b�q� 7濯1�A`g�ס6��z�.�aj5���@�+�`��H? O�Z��]۫���׾q�@�-�9�FB�5g_2rrT�WvĒő�h�W�g˷�F����Z�QC��n�M���:�    U!�BrU~'�0�R2�m�_2H@��wIy��h�~ud�[-�/������&��$DY��Y�|��hN�^��?�i�!1���VY5}���5����2�A��-ʇN٣���n�̈�J�%P�f �`j�.2�~1}�C��"�>S.I��{D�1��F R:+�r>73kt�Y� ��kA}G; 5�J�r��E�����5kڤ�O�h� �s�n#;?�'LvO�ʤ����Q�"�k������@�h8;g���޷|�4<�g�7?���V��E~�j�¸�����o`�>�|}JW�# W�B�����^Z���������3��Y�BEC�c��
v6���{r�u�\���E�����T �!������xWm�)�ӣ���lS�$t���Ec���1E�BZ-�*����1!�$ə=<����.+)��G��V�җ;��V�AҬ;D�^8.�"����l��#{=�	P��W+9D��w/�u��bC�y�<4�F�
a���dB��%�0a��ш�\0a��S��eh�i܌����p2u��+'�W��h���9tti�k����*I�Ӱ#�&Kp���E�B��򠿲�o���S��$e��3��9�I���=Q�L}����g�;7R����v;�{U]�4��F��{�);�>��׬R��=8:��E}~c]D�Qa�B��^� �if�=������e�po�>Zo��hZ�B�G�Y��q�&:�B�E[;�$4Ym7hB��R�["(�#�Ï�i�q�O�����M����쩄�I��i"���~1e���L�0�S�Wއ�<�C�&�k���#轼Z��Px�^ ��i)��#Wtn��ɟ:voO����
�Pɯ����6x�u�Y�_h��.�x�a��"4֮� �3�^���טD�PJ}�N�=�������Z�,H_ȿ5Y7��4W��`2
=�zS�������A�����mw4��1�c粞��V��M���7E����'t��$��)_�̺4�)�>�C��1X�ȻxA�!��,���%Z��)Q�\NƟ{P����)ϊ���z�C2��lR1G;kڮ�=�ċ�?���+�V��5�9�1]ʻP�Y�&MR-[��*oq��j� �! @4F��
Dn(bt<OJdy0�k=M����V��xFRoO�����J�ᇧ���m/�~z�6�"v�0:�ER`����,���`�{R�������jM��9G��M�/d��]#v.���k+ަL�D [��g��':�g�'�����xL6PU��>~C6�C5|e.�S���k��<<�$��`D�#2��i�)���Wi��P�(y�vu���ս��hԘ+��ȮWP\�H�m���n:��R�_�k������#���LރC�(����b���IN�u�Y�YD��W�cLB]��Z�훍U�P�Qt��$�=�N ;��3`�� �d��CU�lD��l3/32I�Uo�9�V�ZbV�m���'�r��7����j��,K�M�_����^Hp�f\��?n�K����A��4�<96��%��yo =�����E�Q�,2,k��O���U{fb�ų��D���E�[��۽���X�Z;���p�L}�ǡq��e��������5Հ�ë3A��G�I�"g����T<+1�^C�iy�4�C�sV#��Ȝ��"}���;PՃC�;������`�HS�M���=�������kLBDf�������1�7;-	�:���%t�����N3�`
&��9�/����T�����w�1m]-�"�bE[���x��.��'S�0 "\���
l<+��C�>,�/�o9��(�:�B"+�<B���b+��>,�9�)2���b�w{�� y���m'�1�O�)JU���o���	���m:�6�FE���}-�bh�Աa����^�Z1�2��aqs6+p#՝B�6��d�x5�7��kg��hz@��*���>
^3eC>�)p���/�vVi�u?�w���o�?���֐e�
�ģ)}E�Z��xc2V��2U׼1����-�;X�6Q�H��h�XHU`�����+�F��PG��b�~���6�#u��V׸��Fiʑ#�Dͳ�[�*�l�=w����J}D�z��~x�1x�6�x?(���[�Bя�+4��b�Ex�F�D <� (d�D�Ӡ^�؟���ڦ(@���0(m�Q�J�Yjq 5-ױ���+}F�ۼ��i�!7�f��s���"��򥭅����{����;�$�����^�d��
�Y��EMZ9�m�˻*ŶqO��t�h����T���2T�M�m��5�Μ<��b�� `-Q��`��dZ����`��O��u�-��K��յ���r����.��[FNО詨5�髓j��7�_�f�.�m���8Z����.e4k U\�1��>��i{�`�8�AK����g�9q(�X^��C��G��{U��K�o���Q����XI}/j.�_���a�$���<?�X0��E:�3`���c��E����X��1"�u��Md�X8Mc爑�F4��[�FhrW�M2�7�=�{��Sӻ-@�I����ty��t�ƾs��bV��o�K�+�9��&��M�B�c�5�֑�A��}��9�>�"W�*TD���ݐ�x�%.<+��s�Y6����	"��K�FW@o��Y���w*=Xe�	.�z�L���>N�LR�!�i�+-�7��Z�G2�X�2u�-�w������;J>��K���2_�4�X�]D[��q]|�5�"�y+.�j�b4E��|���׆1�J�C1V�M��}���JBaOW�ff�h���v��!h.O�\�6�y����(����9��#�=f�����!ʇ�>>X,���Z~��N��)�)D�W"�;H9Q|8X�NZ���}����E�ɍ3:>��?������遺�)��u�D+\�wyu��x�O��G���]���1_�pB�#�x[I^m�|}ΪE6�]o�X�%�B�Y�8���ᇢ��� Ь]��ai �Şs~�0�'�{��l�I�cӢ�Վ}�F%hḬ̈�8�~
������P��b@���hkY��f��ec��7RTZ���72k�yt�2�����.�gZi�4�+��s����N�c�����޾bs&F�)MC#�~��0Hڪ�Н�"�nO!�k�
OM��Q�S'k�mM9��r�`n�Vp��ʞɴ�%o�k�=���XD`J%���lv/]k��{��w �˖�� ʜJ_�{c槤hi�p�KS�:����j������`zG�;;��b�f��F̆<�X(�^�䋶X:�OeSa��yPHX#?��4`�>��܇�]e@��Ð�����{`
/K���NQ3��}�u5W�Q j(������n�l�Y�h;�Ѩ���1!eM�
4��)b�I8�.�-�M�%�������`v�-��{��-Jb��%��g��:����C��uI�l-}��N�u'����"} �xI����DkS<�C6��f�a��0��y
�jj0����_k@������Z'SA�������[w��A4A�!su��Es��@8ܤ��O?��;�x�@m�{t���p���s��X��I8��s;��n.���:B��n�LDɈ��@���3�ΛtO�$pN7+��B�,��>oW=����2�[�G����s@���A�Vs^���uL�]��!\�6/*��V�^-p\|�}��G�|�E��4�LFp�WE������P]"v�rZ�����PX]uH����~�����~��W��"�����`B�y�oPeO����H�����2a�t�K�6��8 p�3�#`���6���Rm��4��{��
���*Y���?�x�7c�c+l*2# ��G�n5_PeN{��Uߞ6�� -��-4��C� ������������&5h�B������,%�@0	I�	�����}��Z0�7^���G6�@4 J�~IW���%TH���s�#    )ܤ�s��Y���q����� ����5�h����CW� �i(�N�(�+ՒH|�͏���1�g��fє�s׫� 	5/3آ�b����YϹm-;@����I4���ζ�:7�P#�
�4>y����H���
�3x=Qۿ�u�t✒��VҾ���c|����1���Z��s����Vs����?�4�1�JdL8�ɣ��� m �%N ���F��i�!�0�N��:�_�������=�=�В\��׋Dw�ӗNe������ަC}Z�-�s�?�F&�^R�b�R��O�\+_"��y�d�xJ!���c ���G��#T�c>ؽWG��J�h��tV�T'����H�� �}�ﱮ���j����ms��=���m��n�`�Y^�[��AU�����rV�tʗ��6#6�w"�K�<.�$ۤ��L�a3l����׸
 �cP$��sH�H���כ
3�/L]�������U<�8ˇ"�Lם)=p�)d/Ǽ�d�̻+uzJn7�é��l�v��(m+�+�����l)$8��|�t��!���"^x�)Y-�%o��dM����>��fQ����P�6�JHJ$h�b��J�h}������H�[�*���K�$e%�:]b�h�1E�jSפѾ��
,��G�3��Z۝?���#1C�?w/�Oi7'#�;�S����X��y���gz��#"��0o��,V``�fy��ZpR]��GΧ�.�@1"	C��r�B�������B!I8��1V�i�6 
]w��}�,�v�Q��Ny/���:�{�s��匴�B��[��wv8�T�d
�b������~���[8{$�t؄�c�,���p�Ė����Fy@sn��M�Oƭ��/I��|Q���@��B�J�^՛N���N��!�#�h]�(��� )W'b��䘴�Fp�	�Т�Ddwܦ\ ѪLx�(�����WY ����\�>C�rA��Jg��8к�h�W��n�@a�\Z�ʑ��G�5����p��M35�y�\�0	gOzP�pu��|��'=�eV	���z�n�l����k=܄�z��O��c���������^��WɳE�S���=�*:�c���x��hC�qE�-�,�(��|�b�oj�a/[1���#�6yZf���r$P�%M�5��JN�������I�(W�twV�<r�̊��53��k���"����]�ve���?�Ϣ�ٔ�H�C[*m�wx߹�^�gի�������@�ϑ�CG�cf�O@��7it�>�!=6:�h���.�=��g��V��E���^o�9��L�o��_����>~�P�'�i�\��O��A�%�"cnж��-@֪��þ���wT�q� 2#f��$F\ti�ښ��>��F�8�%������P��$OLi�p�据g>�h�ԯ�Y���i���Vd���cI�J�iE;������ C&B�#Ő�f�q�Q\��)��lT��}@�9��q��a����V'�8�/iQ2U��|��Y�iQݹ�/i�����! ����oOM&�a�|�(���_FcE���/��1:��ո3�T��h��Fr���#�O\�0�ʥ[f7t�j��A�AYg��^�Ԑ\ط{<����a��~W�c�h�����D�5m�U.���'ƴ���jN��3#��>��-�^z����m&���Ȱ4���L���u�e����Vb�/>��Hq���+'fӏ��pY���p�<G��[� ĦX��ؑ]G�8�oPđ�M72هS�޸�&��j@�	���8?H��a�͈�T�ٰ�'	� �b�ffs���0��)����9z�d-�zz�s0g<|������}�Ѭ=&�@�"�k��3`�3A��Ƹ5���֬Z�+=�-N�8Jȥ�@6&�$��x��Ut��C�Ar�+EYg��@$y�(����箎��|��;�~_9�i&����AD~���gV���D=�l�X�����M��HB��;��K;1�n	����ΗsV�"�Q ���J�V�Wr�Y���08��[徵h�'Fd�؝`�:&ޥ/���]W��P�m��̃9K��ZeR �x��p�#|	�P0���<�Z��=;��A����V��vI�ع�<h���AY��n]gE��REu�
�n�G�9D����+}�N���;����`/˞�YP yQ2��V��`2"@e�6�mu��]Fc�Z)��	☄K]�^��p"g�CehGPO�) �M&�tg��R�vG��ؤ�01SU���]s�o���0�^ˁ I�~4(I$�̯x���Z����N@,�F���<N'�#r�Z�fM,/��e�B>��D��G��]=��_�( �ز����� qf_�Y]�0]��!F��l�!�4�[D��T =�ڈɘ��$z�h�vs��6��y�S�n��c�	Nr:���ko5�VY�1	Xi%�y�_,8���}�U5БP�>����~1�"`��\_֖Ϸ})�'J�m�й*����w4z�b{)�����F%�)�������x(��T�L�"#N;���L|w��]��"��㧘B<�vb���#�9~7���&��Z�͹K��H����@&�D]�J2�#7l��B��~LŎ��g���[�Mԁ�������jy&�N+��+m����%��ߚrd�VTGC���׎N
��i�j�)�=Ӕ��"����s<C]�{�z=�sWQ�����^��1ۺ�e�
(� :O�����V��"7t��A�@$�'�s�ܬ��c�tb�}�u�5�Qa��/F�?�V��[�xD����蝓Mэ�z���U�-�g5�S
Y�/�=�^�,�Ij^�xE�q�BI�!:M|�/��̈:��⽝�I�|Gےt�M���i�U���@�s� {�g�r��Z� �!�N��Oh�n]�ld�q���tR��KJtL�.�����3��/��9 nYf��X����Iah�
�B��g��Fq����r3��~��H����VW���\�#�N�8���o̘����M]��D���'"MCȀ���������'�ԭ*5���� j�^|jb���78!K�q�8�_��O�� cz�7 ��'�m�`�BЂc��6g�	�BIY�$�"[�}���5Ԟ�P�*q��rL#�B�b�W�x�20'sGѤmȡ�s��U��4v~�%��	����-W5�/�b����	�D�B�&�߰�>�BZ��|ϲ�y��4L�n^݅��=-��鄌]�3wH;Ip.�|M�L�̺�6ǲ~:!'Ǫ�Uz�8�昉4��N�F�bp4�	`��7U'�q[r#1އ��e�T�S��d�����gI�=�YD��e�~}PUt����Ҳٻ��3�2+��6�}�����d ��-31�
�c[�9�)�f�IOIH�+$�S+%�_�|�<]����ǝ�'~aumN�$%RR9�g~��Ў���d8�����a�|�dOrw_#�="��\ܑ� �����H)��hl�̼&NƉs�es2��&�QֳpO�:A6����r��2��=���g����>vX5Ah���#ӂ�1݀Uk�&'N�Sn��X��&01N�ec����ﴒբ(�����m[u�9I�M�����3���Z�^:��loՊ�&��\}���4��7r���=-���~R��:i�.6��E��'�W7�I��w�pެ�i҆U:��)W$�����ݗ���Ѱ-����"a]��KΑ����[u~��]���pbQ^�h�Z�`�C�u̦�{9���o��Hi|ŭ��9�]?��Ԧ2�䆬�l��)g<ٮȷ��J�ݚ����g"��:/������)���賲f��^�n���*�pl-'hj�`^-�@��g `�@�Mn��w��%���i�r���M,�DAb[�yISJ�>�8Gͱf��"_��5�� �t���]�wp<�7 O}���388�
:�K#�i���x2?os2��=mժ:W�f�јk��_�
�*�:!1N>�j�):LU�    b#��>�����V�mj<�iZ���[�����d�B�e%���j��=<��ZwF��/��5^b���������|'�_�H����hI��t�
�P��Z��ĳD �[�hB7,e���QB��S�@�/p�D���@1(S?� �4��|�;7�����vB�� @+$��ʗ�ݦz��u#`l�Z-�a#6T4ל��9=<!�]�)-���*�z�tV���I�V�>�'`�n�v��5��7�v7��uM�sO�.�9����U����[����]�纜�U����o�U>e(\���IC��X_ƃ���j`lA�t�\i��p�q 3�hJ�/7�j�>;�Gs7X��O	?2[*%A QLt���d\{���ջ���ĺ�Y4��\�7����
)���M�qp�E<-~�!.�7N��o�<fӼ�:ǀG"�P=���s��J�"	�%�g�rު�]ۦ.P�B_P]5�]�����~!^��q�6�D�M��|�K��͐��c���hG+
��뜤sO�W[4S�d�}vg!&=�2q��3����m^Jn�`��אK�K�Q�0BJ����[��p�������wG��#��X$�#=s��K:iϹJǴ��} �6 1(���:��n25�vu�dDyt�H����k	�S*�h���Nm��v�C0��:%�$zP�X�-���+(`+,�)��Sޠv�=O�2dQ�n��1#)�V5�Dm[+a�.�UZs����8:?=q��]���q������PLdT��m0��P��;N{���i�v�����"q����.h�j�n��6�Hn��"����ۭ��NJI8�=�H�\��{C�L�[u�k�D_�+�?�>�H�oy~8�ߟD ��K����1\GR��JAMԟ~�'�QEqs����g\T.`m����|&�}�5�����ђ�h���;�����|-|�Z��N�5�V\��`4�v��)�ݩU�W�|�(t�7+4r4�1,���>_���o`���I/ic�'=$L�]���+����t��X�r$QLzx[e+��3���ft1���Q�Ch�N�X�ȯZ�a��=Z�J�����:#����d�E��o{�3����q'�BX�@V�=��v�������b�{�r`\[:r9�8�Vw+,v�u�{����S8I����t%�5��L*W�N��E����G-0Yd��	v6�9૥�����@g�]�Rh�(a�Ĵu�$���t:��_f)���1����(��?)5�j�	�s��Uf4a�t�e=}�8�l��{7���r�{�m�[��8B�ZyJP}p���s#R���Rw��2$,`W���7���u�Z�n���E��]s�Q���:�q>Y!�z�Ԅ�$IE�����Ъ:�8g�1�2+^q�v��9=���&8ias�xJ&�<�YC�"�U��~��V��>ň�
hl/Z(��՛��{#�g�V�	�*���$E������{�Y!����nQ�)���I ��D�̇�x�,�����H�7[7��x@V��m6�iԐk���4��2�d�1���dO�")$�/�3Qi���$�R6�9I7K����fyP�|y��9�m������B�j^b��d�բ6�HH�ӐD�w�J�R�	�l/P�5�@�o���[L ����W���}����joh��᧔�N�\�t�# ࣣ������׍��PaN�L����8sc5���2/�Dd���ߥ��;�͆�"^Ew����qI���t"\�X� �0�~Z��Ж�2Q�U��m��=�W�Ӏ��*5��	�B$zY�,Ź�}8�Ȥ�$~��������'�Q�I������jW�c�n�������^%BشI��� ��!��.ɄN�������a����bVv#pbyh�S1�A�������X�����x���^��M��L_�L���F����\��.�gL�Df5����p"�*0��/6����Ăf�p8tC�J�<S�Ҭ����̸ع�R�0u�l�Z�n�	&�T��n20E�m,�	�b�Z���n.6C�6�.����[2%%vϠ�^6���(��n.ɯ2a'�5_����v�i
p��� &!4�l5\�"{��^]MF~��x���|�?�$���6=�f���(��Uu�l�cކ��@�4�<hL�Y�d��E��ɥ�#C��L�ķ!e<D?��?�KG�E�3Pm��r�N��vR�W^(S�kT��M5>9)qZ[M�du��?�M�����N�c���6���aA;�r�Y�)Y�Od� 2��>��*��� �oOj:�������ۺ�n9���%�'�L�;�[����t����dIn�W���vmK�#[�Y�~�"h(K���#����t���y�
t�-_��~�کLeJ)�;:�ڀ%�R澮�%+n�0c�L�O �H�",O����?Noo��l��?Zu0oߜ�5��Ii܃f� ����:��ύ1���|� ����LYA}oC�Zvd�+��/��eO����\��V�Ɓ���S�`�����!�>L�׹C{�ri�}Z;OxT?s�@�Ә%��.�{�"��}����E{#��5аw����w�!�/@,y�u3�������B���)ȺU�w�-�4o_W���vE��D-/�������}���vȘ��Ķ;�E��3��M��x:@#'k��U�c����;Z^�&@�N���� �C'�c�*B/�a�ee�1T�(��h�,��5��"���D���.�ˣ�1��!:��������NNN�	�C"[t>:®-�mu�3yƘ�/��&N��1e|<嚄�>��``�F�k?�A��y��U�aL�{��1Ŝ�0�T���i�-��HUPDv?O)0�g�Ϋ%��_[e�#y��+�����t�a�r�{4E�� &��%]!z%:*:5�	��&�.�4�O�IM����>����K��S)" �]�����%�yR� s�6�Ř�}�G�֭^��[s�᧶R'#CǺZ4��R��)k}r7>�뗘�5L"��4��_�@A �b�'+��_�nX'�YU�!�b�j�P�H^i6��R_�hs���ʭ3���+����x\w��:p�"�\��k���)OJ�>J��V���|V��6���PI��b��(���G�}WYG1�+�7�Â�MUVE�� ��q 
��,�xt�.ڪZ�ut�]n�骞��=��#  �Ok@�mA!���i*���WL�b�pY��n	u���w��"�k^�r���Jc,J�8#K�N��;,�z
z�
�E��|A���MC��ɽR��u*tɬ�x6�k�^������_�%p����N�����K���h��������s�2it���|��)f�2���2;�!�AO�aJ����UK�����5e�3ø��梤-y�w��u�I	�y>�82ߋ�`A�
���B��$ͮ90���o0��o�J�4lu��REE7ۤ���m��F��1��t�{������!F���721ȉ7�t�����jўB+�&L޷ϟ��Li/�	�
��
���w��ڲy1E����4���5~����	ޟ�K��e���&����.?h'tM��g@�;B����*�Y;�Ҁ1�.�l�Z^-�@?�Wy���dF��0��=  v�Su?׻��SW��f�f^�[�B
k_5u+)_s���ǳ|�]�}¾��P�.~�S0��-��5~sR�|ɍ���+v6�9��w�V���9�J�Y��HYWR��q5��I�ᶸ���~>1 _xrvyE_��9��lZ'!�f��Z^P�l ������k���`�ô|�����|�e��,g�����n{�h�
6��-j�@�l���p� k�BD��9����\�΁�-8���>Y�SL�?gs-T�@��s�!r�����d���܂�R4@S|������S��1 Q�1���$T��@Oj҈Ȼ��2���)�!�#"�mz ��N    ����ִ�'��^����X�b3�P��Vc;L��!�R�����z7����|����m���ߢ�Ȟ����z�d*���*��>\PL�ƑU81�r"���%�q�����+lү�B2eJ�t27�J}��q���0����1�:V�4���٘���n��k�|2�tX�y]�0��;7�@mڏ����gqMՆ�����%r�����>�D�\��z6�;-�?���Qr�6�h>;�A���o%�V��1�
Q��Ţ-=�I������<#*��~���d�'����Ŝ�0���&�)����+�w˰�DQ�
�1��YX[���ʐ:2���"z��Ⱦ���wg|�! �]���^���,p����eQ�حw�jɸ���._�0	�� ���<.*�PiĀ^c�Poٟ<���#N8�8�p���|��.y����b�:I����u����B:k01=�y{��42ءC�t�r���.0�dVټS氓�Vk�i�j�XZ"�>��k�]��W8N'���B�+�r��G�J���Ҁ9"�_҃8o�����(����~�;0�����gd��{i�&t�3��nqAZv5sM����옾�;a-@�X�z߻�ꘈ�Z�(������[J}R����30#U�_��e�n7-����IW�E����,��փ�,hO!rno�+X0e�߮���fR=�Y�aL������wu����������}���m���}�<jg*�&zu�����K�$�MioD��8�F_��^�����y�Yql��p���+d7Fk�W�ҲV��g���'�W8��*��Vq�d-�&Z��l�T%��o�����<O��x���}����9z4#�������2sP�l�ȱ��D�^�k|��Gy#�1�1������,�Ԭ���i�����8�i�PP?�o3M�c�j�GU`�pAi�z��#�����ې��l�sEd����^N���>s~O�٪����LN��]�/D5���^$��h�}Qf�̒"��򨲶`7;�H񾰮�'`�[���[4�à�,0o��v�G!m7��u�ȖA<:�&�D�R��"��G����K�b���@��1����zի�9ǈ�g'9��o�� �#{Gg�����~�K!������Ā�=�q*v��s	�ص>��ۤ���E��*�Iǿ��Xv}��,�(��b`�����X�v��4T{Z����}t��xm����D�Q��H.~2�pm��iPF��R����K*����"K�@3y-����!�ȶ��"�W�|�|�^�6tB�0�z#}Ęl�d�����c߻_!X^���)���v�k��j�f�Y�W9���~d�B�E >�eՊ�=��&�H^�Y�W r*�°��6�].�
�k9+�	X>�H[j�}QU�~G� 1� 7C�4P�u����I���<��@���߳Yi1���P�;�T_<�@�Sږ#�XB��I�&�KG���µ�>ٲ'�]dMUlJ�1��5�*#.�5E�R�P�����J�r��<��"�5����B��^��$�l0'4�o҇:τE�t�(���r���.Mv��y��p6������1"p>�]��1/��2��Ҥ1�_G�	��)ڥ��2��!�Y"��v9�喽/�cި^������A�X�%=���kM�q��?�ɚ�%6��9㑨��)�Iӟ��3%��;���uE�a�H�����L���/x��u�$8��N�_��㳋�_w�vǤ��J��"��^���&�3;�\�	��[
���#w�j����]$�kjƉ�{_�|Q�������N�vCS;�8ޜ�<�o�]������B�z;.�+�حl@ ��+z:Е�3����O�ŶhX�]mf�i���K��N�UC���Y�S��M���-� �_q/�'�cIg&kwRC���#T�6>��]��΅�ͦJ!�h�U���� C���ҝ��*�:��%&<s�d�	���Z���1D0����̛�W�~��՝9��%_4i�cM��� �J��E�kXMvK��cʪ�9���)-&��C�F��&ԭ�$�c�4�U�}�W��n(�������:��I�{7�d(M�I�л���B䭌�sX�gP	&tx�w~V/�:T�O.!������w�/(����(�?�b�2��	��Q�}��TP$��N�R�p��������]�V�)��d;1#��,����D��.-�9O������jj�L�͓�tCXPTpj|˪�f><|i�4׫�=��F�� �b?P�T,�Z�l=��m�S�CH��.��`����k�Lz�6-m.��q��.�d�I�I��	QT ?)
��f���p�D��,�L 1�y�b��_9���f?h�:�s�S/�)��P��IN�����_SΧ���X�$���0�]�bU�V�Lo��v�o�ۚA~x�eN��\�\�p"���M�c��b�2�-R(ͺ�Yʷ�N�iw>78����^�R>^�~�^/U�S������,��}�.�\j�j�R~Tngd~����!5R8�/nj�Vu�WT\�r�,��vA�	��5d�hQ.�S���{�ǽ]�.a��1ى�|��O�m�3f�DO��F/�v���M�!��P��@����qB�q��.�ZQk�V� D�9Y�ڎ[��ջ(�cK;�Z3a�F	��~en�>/ �+2���ƽFr�rN6�.4HA��>|wѯ#���kϼ��-�dNW�W�C�&���[^���.����G	ɶd�V*b�xLW��|ٖ����j+�W��Վ��괤8lŊ��>?�QJ�����o��Ȑ4�Zv����A���b�����ۆ���MM�3o*�ד6��![b�3�[�����D�G�~I��r� ���,]�%O"d�kL�k����kX�e11�
T�� ��S����� AU[����gP��z�w�H�������������k�u�=�� ��?~d�"���P��{-�����j�!���w	B�sO�02�s��\�oM�$��������HI���ɐ\呒��Q"
V�����"���w���'�)��l�ܧۺcYgVGo�X&Q�y�On0vצz��c1d$��(�b���K��L��Ձv��
����e��R�BL� ��xb��P`��)��G�Ƒz�����^�]=��J���%P��u��c�ٶ���O�"I{p�O-�|���iﺡ��Qj���eW_z�!>���XN����� ���V=�w�/�����U��$�<d&�w��C����R�[
=��dV.��iC
�y'7ݍ��O9_q �ZzF��Y@��i��̒�+��g���D��ْSiy�I���|���ȻȀ��
mǯʰ�C���>h@���aK��&���\�6�W% %8�����Xs�ҩ�"*`.���oß�^ڦG���/��-	�8�t�����>w�ށ�\W�C-	���۫���Uqi�Q&��,u�H�,�γ���YQ5zI�"j}I�D�(L/x�4���E�MGk9�9G$�Z����b�z��	�]��Y�Y�r����1g���$boq�'�@wi��.URvI�vʖ��ƒ;ؤ��>�oOe4Ul������s�d97ټgeI���+u�C�Ē0�X�]=9���_.(�;�V%6��>6���{\��eԾvQ��M�K���n�]޿2H�.��֚�C$<�O��U$��s��ňb��oQF~��r�=��X� �_aϚw	�>ٔl�����*2��_}'�>��no.?�ɩ�|�8��@�ڹ�"*�{�o�6=䡯ʧ|�G�+�=�@�ڤ�8m�I9N�c~�ʟf��*������	��DV� 3Lið^�A�z����UF~�D�K]�CXu�U�ڕJ8���P+�2�f�4�F)1�a���w�(җ���k��P 03�^�����?��E��;g.A���:����3�i��L�	�@Q�IWz>BN��w��̲U{-Tvڝ�Y�F�B��ݡP)�|��� y  ��q2�� !�0��8�Zd����Ҡ�oI�Hd&��e��2��/���/t�[�-0IN8~i�'P���)sȠ�SLD�:�a�?�����L����6�h>oA�u�9��N��Դ���s]wǍ�r FD� �M�D��&[t�#�����ц���Mm!�@�br�"2����)��#i+ � �|z�m]Rw�2l@{8�l�\���������R�4'�^����!��̌�i9+�rQ����K��j� хz�����	�z����5���M��>{�zSE^+���x���&M��vk��d9��SYܷ��i���h�-�ٟs�c՛Ӂ}�s,��/_m��5��0ڀ}����u���������@I L��w�@�c|l@m!R�k��;<V�E�d�����u����vVζ����;k�J�&vkBI2`N�ModD唘h�j�	����1���������i%4Q u��"�>��lը|�й@[�L��"�ӳ�Q2�1��Ç4���Dr�mz��W��������\:�<�y���<i��(��T�.���|�J']`ª"f�#����=�f���cb�R��� �H�AF�8Z��~���_~�����=�     