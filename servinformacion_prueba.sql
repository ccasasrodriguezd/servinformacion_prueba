PGDMP     (    *                x            servinformacion_prueba    12.3    12.3 �    b           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            c           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            d           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            e           1262    28066    servinformacion_prueba    DATABASE     �   CREATE DATABASE servinformacion_prueba WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Spanish_Colombia.1252' LC_CTYPE = 'Spanish_Colombia.1252';
 &   DROP DATABASE servinformacion_prueba;
                postgres    false                        3079    28067    postgis 	   EXTENSION     ;   CREATE EXTENSION IF NOT EXISTS postgis WITH SCHEMA public;
    DROP EXTENSION postgis;
                   false            f           0    0    EXTENSION postgis    COMMENT     g   COMMENT ON EXTENSION postgis IS 'PostGIS geometry, geography, and raster spatial types and functions';
                        false    2            �            1259    29107 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    postgres    false            �            1259    29105    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          postgres    false    215            g           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          postgres    false    214            �            1259    29117    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    postgres    false            �            1259    29115    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          postgres    false    217            h           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          postgres    false    216            �            1259    29099    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    postgres    false            �            1259    29097    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          postgres    false    213            i           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          postgres    false    212            �            1259    29125 	   auth_user    TABLE     �  CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);
    DROP TABLE public.auth_user;
       public         heap    postgres    false            �            1259    29135    auth_user_groups    TABLE        CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         heap    postgres    false            �            1259    29133    auth_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public          postgres    false    221            j           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
          public          postgres    false    220            �            1259    29123    auth_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public          postgres    false    219            k           0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
          public          postgres    false    218            �            1259    29143    auth_user_user_permissions    TABLE     �   CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         heap    postgres    false            �            1259    29141 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public          postgres    false    223            l           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
          public          postgres    false    222            �            1259    29203    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
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
       public         heap    postgres    false            �            1259    29201    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          postgres    false    225            m           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          postgres    false    224            �            1259    29089    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    postgres    false            �            1259    29087    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          postgres    false    211            n           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          postgres    false    210            �            1259    29078    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    postgres    false            �            1259    29076    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          postgres    false    209            o           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          postgres    false    208            �            1259    29378    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    postgres    false            �            1259    29236    servinformacionapp_barrio    TABLE     �   CREATE TABLE public.servinformacionapp_barrio (
    id integer NOT NULL,
    nombre character varying(64) NOT NULL,
    comuna_id_id integer NOT NULL
);
 -   DROP TABLE public.servinformacionapp_barrio;
       public         heap    postgres    false            �            1259    29234     servinformacionapp_barrio_id_seq    SEQUENCE     �   CREATE SEQUENCE public.servinformacionapp_barrio_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.servinformacionapp_barrio_id_seq;
       public          postgres    false    227            p           0    0     servinformacionapp_barrio_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.servinformacionapp_barrio_id_seq OWNED BY public.servinformacionapp_barrio.id;
          public          postgres    false    226            �            1259    29244    servinformacionapp_capitan    TABLE     �   CREATE TABLE public.servinformacionapp_capitan (
    id integer NOT NULL,
    nombres character varying(64) NOT NULL,
    apellidos character varying(64) NOT NULL,
    telefono integer NOT NULL
);
 .   DROP TABLE public.servinformacionapp_capitan;
       public         heap    postgres    false            �            1259    29242 !   servinformacionapp_capitan_id_seq    SEQUENCE     �   CREATE SEQUENCE public.servinformacionapp_capitan_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.servinformacionapp_capitan_id_seq;
       public          postgres    false    229            q           0    0 !   servinformacionapp_capitan_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.servinformacionapp_capitan_id_seq OWNED BY public.servinformacionapp_capitan.id;
          public          postgres    false    228            �            1259    29252     servinformacionapp_capitancomuna    TABLE     �   CREATE TABLE public.servinformacionapp_capitancomuna (
    id integer NOT NULL,
    capitan_id_id integer NOT NULL,
    comuna_id_id integer NOT NULL
);
 4   DROP TABLE public.servinformacionapp_capitancomuna;
       public         heap    postgres    false            �            1259    29250 '   servinformacionapp_capitancomuna_id_seq    SEQUENCE     �   CREATE SEQUENCE public.servinformacionapp_capitancomuna_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 >   DROP SEQUENCE public.servinformacionapp_capitancomuna_id_seq;
       public          postgres    false    231            r           0    0 '   servinformacionapp_capitancomuna_id_seq    SEQUENCE OWNED BY     s   ALTER SEQUENCE public.servinformacionapp_capitancomuna_id_seq OWNED BY public.servinformacionapp_capitancomuna.id;
          public          postgres    false    230            �            1259    29300    servinformacionapp_comuna    TABLE     �   CREATE TABLE public.servinformacionapp_comuna (
    id integer NOT NULL,
    nombre character varying(64) NOT NULL,
    municipio_id_id integer NOT NULL
);
 -   DROP TABLE public.servinformacionapp_comuna;
       public         heap    postgres    false            �            1259    29298     servinformacionapp_comuna_id_seq    SEQUENCE     �   CREATE SEQUENCE public.servinformacionapp_comuna_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.servinformacionapp_comuna_id_seq;
       public          postgres    false    243            s           0    0     servinformacionapp_comuna_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.servinformacionapp_comuna_id_seq OWNED BY public.servinformacionapp_comuna.id;
          public          postgres    false    242            �            1259    29260    servinformacionapp_lider    TABLE     �   CREATE TABLE public.servinformacionapp_lider (
    id integer NOT NULL,
    nombres character varying(64) NOT NULL,
    apellidos character varying(64) NOT NULL,
    telefono integer NOT NULL,
    capitan_id_id integer NOT NULL
);
 ,   DROP TABLE public.servinformacionapp_lider;
       public         heap    postgres    false            �            1259    29258    servinformacionapp_lider_id_seq    SEQUENCE     �   CREATE SEQUENCE public.servinformacionapp_lider_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.servinformacionapp_lider_id_seq;
       public          postgres    false    233            t           0    0    servinformacionapp_lider_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.servinformacionapp_lider_id_seq OWNED BY public.servinformacionapp_lider.id;
          public          postgres    false    232            �            1259    29292 *   servinformacionapp_liderresponsablebarrios    TABLE     �   CREATE TABLE public.servinformacionapp_liderresponsablebarrios (
    id integer NOT NULL,
    barrio_id_id integer NOT NULL,
    capitan_comuna_id_id integer NOT NULL,
    lider_id_id integer NOT NULL
);
 >   DROP TABLE public.servinformacionapp_liderresponsablebarrios;
       public         heap    postgres    false            �            1259    29290 1   servinformacionapp_liderresponsablebarrios_id_seq    SEQUENCE     �   CREATE SEQUENCE public.servinformacionapp_liderresponsablebarrios_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 H   DROP SEQUENCE public.servinformacionapp_liderresponsablebarrios_id_seq;
       public          postgres    false    241            u           0    0 1   servinformacionapp_liderresponsablebarrios_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.servinformacionapp_liderresponsablebarrios_id_seq OWNED BY public.servinformacionapp_liderresponsablebarrios.id;
          public          postgres    false    240            �            1259    29268    servinformacionapp_municipio    TABLE     y   CREATE TABLE public.servinformacionapp_municipio (
    id integer NOT NULL,
    nombre character varying(64) NOT NULL
);
 0   DROP TABLE public.servinformacionapp_municipio;
       public         heap    postgres    false            �            1259    29266 #   servinformacionapp_municipio_id_seq    SEQUENCE     �   CREATE SEQUENCE public.servinformacionapp_municipio_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.servinformacionapp_municipio_id_seq;
       public          postgres    false    235            v           0    0 #   servinformacionapp_municipio_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.servinformacionapp_municipio_id_seq OWNED BY public.servinformacionapp_municipio.id;
          public          postgres    false    234            �            1259    29276    servinformacionapp_puesto    TABLE     �   CREATE TABLE public.servinformacionapp_puesto (
    id integer NOT NULL,
    nombre character varying(64) NOT NULL,
    direccion character varying(64) NOT NULL,
    municipio_id_id integer NOT NULL
);
 -   DROP TABLE public.servinformacionapp_puesto;
       public         heap    postgres    false            �            1259    29274     servinformacionapp_puesto_id_seq    SEQUENCE     �   CREATE SEQUENCE public.servinformacionapp_puesto_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.servinformacionapp_puesto_id_seq;
       public          postgres    false    237            w           0    0     servinformacionapp_puesto_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.servinformacionapp_puesto_id_seq OWNED BY public.servinformacionapp_puesto.id;
          public          postgres    false    236            �            1259    29284    servinformacionapp_votante    TABLE     �  CREATE TABLE public.servinformacionapp_votante (
    id integer NOT NULL,
    nombres character varying(64) NOT NULL,
    apellidos character varying(64) NOT NULL,
    direccion character varying(64) NOT NULL,
    telefono integer NOT NULL,
    id_documento integer NOT NULL,
    mesa integer NOT NULL,
    barrio_id_id integer NOT NULL,
    lider_id_id integer NOT NULL,
    puesto_votacion_id_id integer NOT NULL
);
 .   DROP TABLE public.servinformacionapp_votante;
       public         heap    postgres    false            �            1259    29282 !   servinformacionapp_votante_id_seq    SEQUENCE     �   CREATE SEQUENCE public.servinformacionapp_votante_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.servinformacionapp_votante_id_seq;
       public          postgres    false    239            x           0    0 !   servinformacionapp_votante_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.servinformacionapp_votante_id_seq OWNED BY public.servinformacionapp_votante.id;
          public          postgres    false    238            D           2604    29110    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    214    215            E           2604    29120    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216    217            C           2604    29102    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    212    213    213            F           2604    29128    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    218    219            G           2604    29138    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    220    221            H           2604    29146    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    223    223            I           2604    29206    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    224    225            B           2604    29092    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    211    211            A           2604    29081    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    208    209    209            K           2604    29239    servinformacionapp_barrio id    DEFAULT     �   ALTER TABLE ONLY public.servinformacionapp_barrio ALTER COLUMN id SET DEFAULT nextval('public.servinformacionapp_barrio_id_seq'::regclass);
 K   ALTER TABLE public.servinformacionapp_barrio ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    227    226    227            L           2604    29247    servinformacionapp_capitan id    DEFAULT     �   ALTER TABLE ONLY public.servinformacionapp_capitan ALTER COLUMN id SET DEFAULT nextval('public.servinformacionapp_capitan_id_seq'::regclass);
 L   ALTER TABLE public.servinformacionapp_capitan ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    228    229    229            M           2604    29255 #   servinformacionapp_capitancomuna id    DEFAULT     �   ALTER TABLE ONLY public.servinformacionapp_capitancomuna ALTER COLUMN id SET DEFAULT nextval('public.servinformacionapp_capitancomuna_id_seq'::regclass);
 R   ALTER TABLE public.servinformacionapp_capitancomuna ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    230    231    231            S           2604    29303    servinformacionapp_comuna id    DEFAULT     �   ALTER TABLE ONLY public.servinformacionapp_comuna ALTER COLUMN id SET DEFAULT nextval('public.servinformacionapp_comuna_id_seq'::regclass);
 K   ALTER TABLE public.servinformacionapp_comuna ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    243    242    243            N           2604    29263    servinformacionapp_lider id    DEFAULT     �   ALTER TABLE ONLY public.servinformacionapp_lider ALTER COLUMN id SET DEFAULT nextval('public.servinformacionapp_lider_id_seq'::regclass);
 J   ALTER TABLE public.servinformacionapp_lider ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    233    232    233            R           2604    29295 -   servinformacionapp_liderresponsablebarrios id    DEFAULT     �   ALTER TABLE ONLY public.servinformacionapp_liderresponsablebarrios ALTER COLUMN id SET DEFAULT nextval('public.servinformacionapp_liderresponsablebarrios_id_seq'::regclass);
 \   ALTER TABLE public.servinformacionapp_liderresponsablebarrios ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    240    241    241            O           2604    29271    servinformacionapp_municipio id    DEFAULT     �   ALTER TABLE ONLY public.servinformacionapp_municipio ALTER COLUMN id SET DEFAULT nextval('public.servinformacionapp_municipio_id_seq'::regclass);
 N   ALTER TABLE public.servinformacionapp_municipio ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    234    235    235            P           2604    29279    servinformacionapp_puesto id    DEFAULT     �   ALTER TABLE ONLY public.servinformacionapp_puesto ALTER COLUMN id SET DEFAULT nextval('public.servinformacionapp_puesto_id_seq'::regclass);
 K   ALTER TABLE public.servinformacionapp_puesto ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    237    236    237            Q           2604    29287    servinformacionapp_votante id    DEFAULT     �   ALTER TABLE ONLY public.servinformacionapp_votante ALTER COLUMN id SET DEFAULT nextval('public.servinformacionapp_votante_id_seq'::regclass);
 L   ALTER TABLE public.servinformacionapp_votante ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    239    238    239            B          0    29107 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          postgres    false    215   �	      D          0    29117    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          postgres    false    217   �	      @          0    29099    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          postgres    false    213   �	      F          0    29125 	   auth_user 
   TABLE DATA           �   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public          postgres    false    219   S      H          0    29135    auth_user_groups 
   TABLE DATA           A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public          postgres    false    221   +      J          0    29143    auth_user_user_permissions 
   TABLE DATA           P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public          postgres    false    223   H      L          0    29203    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          postgres    false    225   e      >          0    29089    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          postgres    false    211   �      <          0    29078    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    209   �      _          0    29378    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          postgres    false    244   E      N          0    29236    servinformacionapp_barrio 
   TABLE DATA           M   COPY public.servinformacionapp_barrio (id, nombre, comuna_id_id) FROM stdin;
    public          postgres    false    227   j      P          0    29244    servinformacionapp_capitan 
   TABLE DATA           V   COPY public.servinformacionapp_capitan (id, nombres, apellidos, telefono) FROM stdin;
    public          postgres    false    229   �      R          0    29252     servinformacionapp_capitancomuna 
   TABLE DATA           [   COPY public.servinformacionapp_capitancomuna (id, capitan_id_id, comuna_id_id) FROM stdin;
    public          postgres    false    231   �      ^          0    29300    servinformacionapp_comuna 
   TABLE DATA           P   COPY public.servinformacionapp_comuna (id, nombre, municipio_id_id) FROM stdin;
    public          postgres    false    243   �      T          0    29260    servinformacionapp_lider 
   TABLE DATA           c   COPY public.servinformacionapp_lider (id, nombres, apellidos, telefono, capitan_id_id) FROM stdin;
    public          postgres    false    233         \          0    29292 *   servinformacionapp_liderresponsablebarrios 
   TABLE DATA           y   COPY public.servinformacionapp_liderresponsablebarrios (id, barrio_id_id, capitan_comuna_id_id, lider_id_id) FROM stdin;
    public          postgres    false    241   r      V          0    29268    servinformacionapp_municipio 
   TABLE DATA           B   COPY public.servinformacionapp_municipio (id, nombre) FROM stdin;
    public          postgres    false    235   �      X          0    29276    servinformacionapp_puesto 
   TABLE DATA           [   COPY public.servinformacionapp_puesto (id, nombre, direccion, municipio_id_id) FROM stdin;
    public          postgres    false    237   �      Z          0    29284    servinformacionapp_votante 
   TABLE DATA           �   COPY public.servinformacionapp_votante (id, nombres, apellidos, direccion, telefono, id_documento, mesa, barrio_id_id, lider_id_id, puesto_votacion_id_id) FROM stdin;
    public          postgres    false    239   �      ?          0    28372    spatial_ref_sys 
   TABLE DATA           X   COPY public.spatial_ref_sys (srid, auth_name, auth_srid, srtext, proj4text) FROM stdin;
    public          postgres    false    204         y           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          postgres    false    214            z           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          postgres    false    216            {           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 60, true);
          public          postgres    false    212            |           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
          public          postgres    false    220            }           0    0    auth_user_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.auth_user_id_seq', 2, true);
          public          postgres    false    218            ~           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
          public          postgres    false    222                       0    0    django_admin_log_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 13, true);
          public          postgres    false    224            �           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 15, true);
          public          postgres    false    210            �           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 18, true);
          public          postgres    false    208            �           0    0     servinformacionapp_barrio_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.servinformacionapp_barrio_id_seq', 1, true);
          public          postgres    false    226            �           0    0 !   servinformacionapp_capitan_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.servinformacionapp_capitan_id_seq', 2, true);
          public          postgres    false    228            �           0    0 '   servinformacionapp_capitancomuna_id_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('public.servinformacionapp_capitancomuna_id_seq', 3, true);
          public          postgres    false    230            �           0    0     servinformacionapp_comuna_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.servinformacionapp_comuna_id_seq', 1, true);
          public          postgres    false    242            �           0    0    servinformacionapp_lider_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.servinformacionapp_lider_id_seq', 3, true);
          public          postgres    false    232            �           0    0 1   servinformacionapp_liderresponsablebarrios_id_seq    SEQUENCE SET     _   SELECT pg_catalog.setval('public.servinformacionapp_liderresponsablebarrios_id_seq', 1, true);
          public          postgres    false    240            �           0    0 #   servinformacionapp_municipio_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.servinformacionapp_municipio_id_seq', 2, true);
          public          postgres    false    234            �           0    0     servinformacionapp_puesto_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.servinformacionapp_puesto_id_seq', 2, true);
          public          postgres    false    236            �           0    0 !   servinformacionapp_votante_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.servinformacionapp_votante_id_seq', 1, false);
          public          postgres    false    238            c           2606    29232    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            postgres    false    215            h           2606    29159 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            postgres    false    217    217            k           2606    29122 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            postgres    false    217            e           2606    29112    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            postgres    false    215            ^           2606    29150 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            postgres    false    213    213            `           2606    29104 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            postgres    false    213            s           2606    29140 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public            postgres    false    221            v           2606    29174 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public            postgres    false    221    221            m           2606    29130    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public            postgres    false    219            y           2606    29148 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public            postgres    false    223            |           2606    29188 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public            postgres    false    223    223            p           2606    29226     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public            postgres    false    219                       2606    29212 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            postgres    false    225            Y           2606    29096 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            postgres    false    211    211            [           2606    29094 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            postgres    false    211            W           2606    29086 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            postgres    false    209            �           2606    29385 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            postgres    false    244            �           2606    29241 8   servinformacionapp_barrio servinformacionapp_barrio_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.servinformacionapp_barrio
    ADD CONSTRAINT servinformacionapp_barrio_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.servinformacionapp_barrio DROP CONSTRAINT servinformacionapp_barrio_pkey;
       public            postgres    false    227            �           2606    29249 :   servinformacionapp_capitan servinformacionapp_capitan_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.servinformacionapp_capitan
    ADD CONSTRAINT servinformacionapp_capitan_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.servinformacionapp_capitan DROP CONSTRAINT servinformacionapp_capitan_pkey;
       public            postgres    false    229            �           2606    29257 F   servinformacionapp_capitancomuna servinformacionapp_capitancomuna_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.servinformacionapp_capitancomuna
    ADD CONSTRAINT servinformacionapp_capitancomuna_pkey PRIMARY KEY (id);
 p   ALTER TABLE ONLY public.servinformacionapp_capitancomuna DROP CONSTRAINT servinformacionapp_capitancomuna_pkey;
       public            postgres    false    231            �           2606    29305 8   servinformacionapp_comuna servinformacionapp_comuna_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.servinformacionapp_comuna
    ADD CONSTRAINT servinformacionapp_comuna_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.servinformacionapp_comuna DROP CONSTRAINT servinformacionapp_comuna_pkey;
       public            postgres    false    243            �           2606    29265 6   servinformacionapp_lider servinformacionapp_lider_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.servinformacionapp_lider
    ADD CONSTRAINT servinformacionapp_lider_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.servinformacionapp_lider DROP CONSTRAINT servinformacionapp_lider_pkey;
       public            postgres    false    233            �           2606    29297 Z   servinformacionapp_liderresponsablebarrios servinformacionapp_liderresponsablebarrios_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.servinformacionapp_liderresponsablebarrios
    ADD CONSTRAINT servinformacionapp_liderresponsablebarrios_pkey PRIMARY KEY (id);
 �   ALTER TABLE ONLY public.servinformacionapp_liderresponsablebarrios DROP CONSTRAINT servinformacionapp_liderresponsablebarrios_pkey;
       public            postgres    false    241            �           2606    29273 >   servinformacionapp_municipio servinformacionapp_municipio_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.servinformacionapp_municipio
    ADD CONSTRAINT servinformacionapp_municipio_pkey PRIMARY KEY (id);
 h   ALTER TABLE ONLY public.servinformacionapp_municipio DROP CONSTRAINT servinformacionapp_municipio_pkey;
       public            postgres    false    235            �           2606    29281 8   servinformacionapp_puesto servinformacionapp_puesto_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.servinformacionapp_puesto
    ADD CONSTRAINT servinformacionapp_puesto_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.servinformacionapp_puesto DROP CONSTRAINT servinformacionapp_puesto_pkey;
       public            postgres    false    237            �           2606    29289 :   servinformacionapp_votante servinformacionapp_votante_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.servinformacionapp_votante
    ADD CONSTRAINT servinformacionapp_votante_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.servinformacionapp_votante DROP CONSTRAINT servinformacionapp_votante_pkey;
       public            postgres    false    239            a           1259    29233    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            postgres    false    215            f           1259    29170 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            postgres    false    217            i           1259    29171 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            postgres    false    217            \           1259    29156 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            postgres    false    213            q           1259    29186 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public            postgres    false    221            t           1259    29185 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public            postgres    false    221            w           1259    29200 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     �   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public            postgres    false    223            z           1259    29199 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public            postgres    false    223            n           1259    29227     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public            postgres    false    219            }           1259    29223 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            postgres    false    225            �           1259    29224 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            postgres    false    225            �           1259    29387 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            postgres    false    244            �           1259    29386 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            postgres    false    244            �           1259    29377 /   servinformacionapp_barrio_comuna_id_id_7414e4c0    INDEX     }   CREATE INDEX servinformacionapp_barrio_comuna_id_id_7414e4c0 ON public.servinformacionapp_barrio USING btree (comuna_id_id);
 C   DROP INDEX public.servinformacionapp_barrio_comuna_id_id_7414e4c0;
       public            postgres    false    227            �           1259    29321 7   servinformacionapp_capitancomuna_capitan_id_id_b72bf4af    INDEX     �   CREATE INDEX servinformacionapp_capitancomuna_capitan_id_id_b72bf4af ON public.servinformacionapp_capitancomuna USING btree (capitan_id_id);
 K   DROP INDEX public.servinformacionapp_capitancomuna_capitan_id_id_b72bf4af;
       public            postgres    false    231            �           1259    29376 6   servinformacionapp_capitancomuna_comuna_id_id_41efc129    INDEX     �   CREATE INDEX servinformacionapp_capitancomuna_comuna_id_id_41efc129 ON public.servinformacionapp_capitancomuna USING btree (comuna_id_id);
 J   DROP INDEX public.servinformacionapp_capitancomuna_comuna_id_id_41efc129;
       public            postgres    false    231            �           1259    29375 2   servinformacionapp_comuna_municipio_id_id_3e7c927e    INDEX     �   CREATE INDEX servinformacionapp_comuna_municipio_id_id_3e7c927e ON public.servinformacionapp_comuna USING btree (municipio_id_id);
 F   DROP INDEX public.servinformacionapp_comuna_municipio_id_id_3e7c927e;
       public            postgres    false    243            �           1259    29327 /   servinformacionapp_lider_capitan_id_id_577034c1    INDEX     }   CREATE INDEX servinformacionapp_lider_capitan_id_id_577034c1 ON public.servinformacionapp_lider USING btree (capitan_id_id);
 C   DROP INDEX public.servinformacionapp_lider_capitan_id_id_577034c1;
       public            postgres    false    233            �           1259    29367 0   servinformacionapp_liderre_barrio_id_id_c75689f3    INDEX     �   CREATE INDEX servinformacionapp_liderre_barrio_id_id_c75689f3 ON public.servinformacionapp_liderresponsablebarrios USING btree (barrio_id_id);
 D   DROP INDEX public.servinformacionapp_liderre_barrio_id_id_c75689f3;
       public            postgres    false    241            �           1259    29368 8   servinformacionapp_liderre_capitan_comuna_id_id_6e34fcd7    INDEX     �   CREATE INDEX servinformacionapp_liderre_capitan_comuna_id_id_6e34fcd7 ON public.servinformacionapp_liderresponsablebarrios USING btree (capitan_comuna_id_id);
 L   DROP INDEX public.servinformacionapp_liderre_capitan_comuna_id_id_6e34fcd7;
       public            postgres    false    241            �           1259    29369 ?   servinformacionapp_liderresponsablebarrios_lider_id_id_22e2e6ec    INDEX     �   CREATE INDEX servinformacionapp_liderresponsablebarrios_lider_id_id_22e2e6ec ON public.servinformacionapp_liderresponsablebarrios USING btree (lider_id_id);
 S   DROP INDEX public.servinformacionapp_liderresponsablebarrios_lider_id_id_22e2e6ec;
       public            postgres    false    241            �           1259    29333 2   servinformacionapp_puesto_municipio_id_id_9d120d09    INDEX     �   CREATE INDEX servinformacionapp_puesto_municipio_id_id_9d120d09 ON public.servinformacionapp_puesto USING btree (municipio_id_id);
 F   DROP INDEX public.servinformacionapp_puesto_municipio_id_id_9d120d09;
       public            postgres    false    237            �           1259    29349 0   servinformacionapp_votante_barrio_id_id_ee9ddb56    INDEX        CREATE INDEX servinformacionapp_votante_barrio_id_id_ee9ddb56 ON public.servinformacionapp_votante USING btree (barrio_id_id);
 D   DROP INDEX public.servinformacionapp_votante_barrio_id_id_ee9ddb56;
       public            postgres    false    239            �           1259    29350 /   servinformacionapp_votante_lider_id_id_1d1535c5    INDEX     }   CREATE INDEX servinformacionapp_votante_lider_id_id_1d1535c5 ON public.servinformacionapp_votante USING btree (lider_id_id);
 C   DROP INDEX public.servinformacionapp_votante_lider_id_id_1d1535c5;
       public            postgres    false    239            �           1259    29351 9   servinformacionapp_votante_puesto_votacion_id_id_5f250190    INDEX     �   CREATE INDEX servinformacionapp_votante_puesto_votacion_id_id_5f250190 ON public.servinformacionapp_votante USING btree (puesto_votacion_id_id);
 M   DROP INDEX public.servinformacionapp_votante_puesto_votacion_id_id_5f250190;
       public            postgres    false    239            �           2606    29165 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          postgres    false    217    3680    213            �           2606    29160 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          postgres    false    3685    217    215            �           2606    29151 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          postgres    false    3675    213    211            �           2606    29180 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public          postgres    false    3685    215    221            �           2606    29175 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public          postgres    false    221    3693    219            �           2606    29194 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public          postgres    false    3680    223    213            �           2606    29189 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public          postgres    false    223    3693    219            �           2606    29213 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          postgres    false    211    225    3675            �           2606    29218 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public          postgres    false    225    3693    219            �           2606    29311 Q   servinformacionapp_barrio servinformacionapp_b_comuna_id_id_7414e4c0_fk_servinfor    FK CONSTRAINT     �   ALTER TABLE ONLY public.servinformacionapp_barrio
    ADD CONSTRAINT servinformacionapp_b_comuna_id_id_7414e4c0_fk_servinfor FOREIGN KEY (comuna_id_id) REFERENCES public.servinformacionapp_comuna(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public.servinformacionapp_barrio DROP CONSTRAINT servinformacionapp_b_comuna_id_id_7414e4c0_fk_servinfor;
       public          postgres    false    227    243    3742            �           2606    29316 Y   servinformacionapp_capitancomuna servinformacionapp_c_capitan_id_id_b72bf4af_fk_servinfor    FK CONSTRAINT     �   ALTER TABLE ONLY public.servinformacionapp_capitancomuna
    ADD CONSTRAINT servinformacionapp_c_capitan_id_id_b72bf4af_fk_servinfor FOREIGN KEY (capitan_id_id) REFERENCES public.servinformacionapp_capitan(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.servinformacionapp_capitancomuna DROP CONSTRAINT servinformacionapp_c_capitan_id_id_b72bf4af_fk_servinfor;
       public          postgres    false    3717    231    229            �           2606    29306 X   servinformacionapp_capitancomuna servinformacionapp_c_comuna_id_id_41efc129_fk_servinfor    FK CONSTRAINT     �   ALTER TABLE ONLY public.servinformacionapp_capitancomuna
    ADD CONSTRAINT servinformacionapp_c_comuna_id_id_41efc129_fk_servinfor FOREIGN KEY (comuna_id_id) REFERENCES public.servinformacionapp_comuna(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.servinformacionapp_capitancomuna DROP CONSTRAINT servinformacionapp_c_comuna_id_id_41efc129_fk_servinfor;
       public          postgres    false    243    3742    231            �           2606    29370 T   servinformacionapp_comuna servinformacionapp_c_municipio_id_id_3e7c927e_fk_servinfor    FK CONSTRAINT     �   ALTER TABLE ONLY public.servinformacionapp_comuna
    ADD CONSTRAINT servinformacionapp_c_municipio_id_id_3e7c927e_fk_servinfor FOREIGN KEY (municipio_id_id) REFERENCES public.servinformacionapp_municipio(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public.servinformacionapp_comuna DROP CONSTRAINT servinformacionapp_c_municipio_id_id_3e7c927e_fk_servinfor;
       public          postgres    false    3726    235    243            �           2606    29352 b   servinformacionapp_liderresponsablebarrios servinformacionapp_l_barrio_id_id_c75689f3_fk_servinfor    FK CONSTRAINT     �   ALTER TABLE ONLY public.servinformacionapp_liderresponsablebarrios
    ADD CONSTRAINT servinformacionapp_l_barrio_id_id_c75689f3_fk_servinfor FOREIGN KEY (barrio_id_id) REFERENCES public.servinformacionapp_barrio(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.servinformacionapp_liderresponsablebarrios DROP CONSTRAINT servinformacionapp_l_barrio_id_id_c75689f3_fk_servinfor;
       public          postgres    false    3715    241    227            �           2606    29357 j   servinformacionapp_liderresponsablebarrios servinformacionapp_l_capitan_comuna_id_id_6e34fcd7_fk_servinfor    FK CONSTRAINT       ALTER TABLE ONLY public.servinformacionapp_liderresponsablebarrios
    ADD CONSTRAINT servinformacionapp_l_capitan_comuna_id_id_6e34fcd7_fk_servinfor FOREIGN KEY (capitan_comuna_id_id) REFERENCES public.servinformacionapp_capitancomuna(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.servinformacionapp_liderresponsablebarrios DROP CONSTRAINT servinformacionapp_l_capitan_comuna_id_id_6e34fcd7_fk_servinfor;
       public          postgres    false    241    3721    231            �           2606    29322 Q   servinformacionapp_lider servinformacionapp_l_capitan_id_id_577034c1_fk_servinfor    FK CONSTRAINT     �   ALTER TABLE ONLY public.servinformacionapp_lider
    ADD CONSTRAINT servinformacionapp_l_capitan_id_id_577034c1_fk_servinfor FOREIGN KEY (capitan_id_id) REFERENCES public.servinformacionapp_capitan(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public.servinformacionapp_lider DROP CONSTRAINT servinformacionapp_l_capitan_id_id_577034c1_fk_servinfor;
       public          postgres    false    3717    233    229            �           2606    29362 a   servinformacionapp_liderresponsablebarrios servinformacionapp_l_lider_id_id_22e2e6ec_fk_servinfor    FK CONSTRAINT     �   ALTER TABLE ONLY public.servinformacionapp_liderresponsablebarrios
    ADD CONSTRAINT servinformacionapp_l_lider_id_id_22e2e6ec_fk_servinfor FOREIGN KEY (lider_id_id) REFERENCES public.servinformacionapp_lider(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.servinformacionapp_liderresponsablebarrios DROP CONSTRAINT servinformacionapp_l_lider_id_id_22e2e6ec_fk_servinfor;
       public          postgres    false    241    3724    233            �           2606    29328 T   servinformacionapp_puesto servinformacionapp_p_municipio_id_id_9d120d09_fk_servinfor    FK CONSTRAINT     �   ALTER TABLE ONLY public.servinformacionapp_puesto
    ADD CONSTRAINT servinformacionapp_p_municipio_id_id_9d120d09_fk_servinfor FOREIGN KEY (municipio_id_id) REFERENCES public.servinformacionapp_municipio(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public.servinformacionapp_puesto DROP CONSTRAINT servinformacionapp_p_municipio_id_id_9d120d09_fk_servinfor;
       public          postgres    false    3726    237    235            �           2606    29334 R   servinformacionapp_votante servinformacionapp_v_barrio_id_id_ee9ddb56_fk_servinfor    FK CONSTRAINT     �   ALTER TABLE ONLY public.servinformacionapp_votante
    ADD CONSTRAINT servinformacionapp_v_barrio_id_id_ee9ddb56_fk_servinfor FOREIGN KEY (barrio_id_id) REFERENCES public.servinformacionapp_barrio(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.servinformacionapp_votante DROP CONSTRAINT servinformacionapp_v_barrio_id_id_ee9ddb56_fk_servinfor;
       public          postgres    false    3715    239    227            �           2606    29339 Q   servinformacionapp_votante servinformacionapp_v_lider_id_id_1d1535c5_fk_servinfor    FK CONSTRAINT     �   ALTER TABLE ONLY public.servinformacionapp_votante
    ADD CONSTRAINT servinformacionapp_v_lider_id_id_1d1535c5_fk_servinfor FOREIGN KEY (lider_id_id) REFERENCES public.servinformacionapp_lider(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public.servinformacionapp_votante DROP CONSTRAINT servinformacionapp_v_lider_id_id_1d1535c5_fk_servinfor;
       public          postgres    false    239    3724    233            �           2606    29344 Z   servinformacionapp_votante servinformacionapp_v_puesto_votacion_id_i_5f250190_fk_servinfor    FK CONSTRAINT     �   ALTER TABLE ONLY public.servinformacionapp_votante
    ADD CONSTRAINT servinformacionapp_v_puesto_votacion_id_i_5f250190_fk_servinfor FOREIGN KEY (puesto_votacion_id_id) REFERENCES public.servinformacionapp_puesto(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.servinformacionapp_votante DROP CONSTRAINT servinformacionapp_v_puesto_votacion_id_i_5f250190_fk_servinfor;
       public          postgres    false    3729    239    237            B      x������ � �      D      x������ � �      @   X  x�u��n�0�����	��S��}�J+�XY�����u�s$���'��qp���.��6^�8��.���1}	��_7\�����x���5��}�o�Ǆ@�Mq�ꗥW��L�V��{�~�EA�Eѐਸ[^��>�
�ۇw-G��H�N��"�� �\��}���A���C���U<>�><<����pt^<���qXӭ��]8����E60
���6<�i�|���l��|�-�ȗ&� 'c&킡c*��#���n���@(|i"��d����B�� i>wS�v�;���#_�DCwH�I�`tu��d�o��jk�.��>t����=��Z�?͎��c���I\����K���K*����>�2�� u�̘�`�+0��&rO���d՟�) �f��6�7 )�Ԁa�L��	��S}��51��a�k���v����LQ�GJwyfr�GB*�{L�Fr�ǡoLI(��35�8TbN��@���橘��L�t�7��ŅZB6�:.��~���}t��j���r+ٽ��M�_n$���F�MP���%��f�"Q�6�Q�՚ׇ|x��x���
&/�      F   �   x�u�M�@�����-��]w���"�>zbվ���B]:4����y(�. _��ѭ�X���O�>G�zh����f�"E��a��\1�!w��R��;jʅKB���%�/����/W�����ݤ>D�}R��O�Z'A�?E�M1���c<��E���3"Z��(K����H��G_.>���8���D      H      x������ � �      J      x������ � �      L   [  x����j�@�u��{�s�\wE�kAJw���L%%�������X�1��Y����`F@0=#P��r�AkKSPfOA��2�iq�����ċ����!f���'��@� ��G�h�4�=�� f����u��X�q��⏳�#zv��͚�nD�qTIoru��JY0�����Ў�M��a\yB�������n��]m܇�qlr��1@ZEm��c�6bڰC�b
�WV�:)���:#�K�
䁤aÖ�s��Q$%�0ګ"�E9�~���?��p��-��([\24Ȱ�$;�5���ڪ�Va��X:�Ҕm������|K*�֢�K�{��7���e�Ӭ      >   �   x�}��1���a�Uןw�]T�ݖ@k��Kܘx��>&�Ā��9L�F��6[�!�ٌK����ii�ehF
CH%W�է�}�Fo�}\����7(.���=�P�b�����2B\�n&��{�m�X<;nz\Yu���G��Jw?c�L�=^&Z:ġ[dip^�l��X      <   �  x���[n� E��Ut�x?��J9�E���8jv_ .�T*��|3gư���m1k ���6Z�:8v��W,_!�Ŕ�=�No��8 �$p�/���"���CJr�<"H9?�:�M3��Q�}����d`� ��A�`���C�~V�N�j��vH�,$Ù�~�B?��*ߨYO��"�`�2�WHiMP�	�]�\RΫI)g�1}�D	�d�$*
�mM���uG� �e<�R�3%��ĶJ!�E5�A�N�1����͵�N��
���~n6T�Ż�����a��O��r��^t�a-�7!��&��z�c� ��!�8Ѵs��S�0RI�����u�;j~[��aXpY0�b�ږ�Ȩ%����F��H�EYfȻ�����>LzH�,G?�������_:��^`!DN�������UP      _     x�=��n�@��<E_@3�n*B �!�t�%:3H���k���K������V�-��jv������mM신�s=�>7#W	�|	�1�Qa�	&�k��p\b�=�<Pte�`�M_�e:yx*�C����6�l|qjrT�rZ���h�K[���t��k|T}�*����[����
bU�B��*}h�����<Ǭ!}� D��&e���/�L�a�Y,��(�5����81w�B�Q>�2����9�� �ژ��b	�ʲ���0~ D�gJ      N      x�3�I�J,�4����� a      P   '   x�3�t�+�,,M�t,J-K���4461465����� ��      R      x�3�4�4����� �[      ^      x�3�t��-�KTH-.I�4����� C�[      T   J   x�3�HM)��H,J���464���4�4�2�t.�,.�L��tN,N,V�O)�L/M��4614bc#��=... �Qe      \      x�3�4�4�4����� ��      V      x�3��IT(KMO�2��b���� T�      X   &   x�3��M-N�tN��IUHK�)NT042�4����� ��u      Z      x������ � �      ?      x������ � �     