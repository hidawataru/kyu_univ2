PGDMP     3                    x            reserve_kiki    10.15    10.15                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            	           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            
           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false                       1262    16393    reserve_kiki    DATABASE     �   CREATE DATABASE reserve_kiki WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Japanese_Japan.932' LC_CTYPE = 'Japanese_Japan.932';
    DROP DATABASE reserve_kiki;
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false                       0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    3                        3079    12924    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false                       0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �            1259    16394    M_Kiki    TABLE     �   CREATE TABLE public."M_Kiki" (
    "ID" bigint,
    kiki_name character varying,
    msg character varying(200),
    msg2 character varying
);
    DROP TABLE public."M_Kiki";
       public         postgres    false    3            �            1259    16434    M_Kubun    TABLE     �   CREATE TABLE public."M_Kubun" (
    id integer NOT NULL,
    bunrui_cd character varying NOT NULL,
    bunrui_nm character varying,
    kubun_cd character varying NOT NULL,
    kubun_nm character varying
);
    DROP TABLE public."M_Kubun";
       public         postgres    false    3            �            1259    16432    M_Kubun_id_seq    SEQUENCE     �   ALTER TABLE public."M_Kubun" ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."M_Kubun_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public       postgres    false    201    3            �            1259    16414    M_User    TABLE     H  CREATE TABLE public."M_User" (
    id integer NOT NULL,
    user_id integer NOT NULL,
    user_nm character varying,
    mail_address1 character varying,
    mail_address2 character varying,
    phone_extension character varying,
    authority_cd character varying,
    password character varying,
    sect character varying
);
    DROP TABLE public."M_User";
       public         postgres    false    3            �            1259    16400    rsv_timetable    TABLE     ;  CREATE TABLE public.rsv_timetable (
    id integer NOT NULL,
    name text,
    sect text,
    notes text,
    time_st timestamp with time zone,
    time_end timestamp with time zone,
    cpt_name text,
    kwd text,
    kubun_cd character varying,
    bunrui_cd character varying,
    user_id character varying
);
 !   DROP TABLE public.rsv_timetable;
       public         postgres    false    3            �            1259    16406    rsv_timetable_id_seq    SEQUENCE     }   CREATE SEQUENCE public.rsv_timetable_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.rsv_timetable_id_seq;
       public       postgres    false    3    197                       0    0    rsv_timetable_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.rsv_timetable_id_seq OWNED BY public.rsv_timetable.id;
            public       postgres    false    198            �
           2604    16408    rsv_timetable id    DEFAULT     t   ALTER TABLE ONLY public.rsv_timetable ALTER COLUMN id SET DEFAULT nextval('public.rsv_timetable_id_seq'::regclass);
 ?   ALTER TABLE public.rsv_timetable ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    198    197                       0    16394    M_Kiki 
   TABLE DATA               >   COPY public."M_Kiki" ("ID", kiki_name, msg, msg2) FROM stdin;
    public       postgres    false    196   [                 0    16434    M_Kubun 
   TABLE DATA               Q   COPY public."M_Kubun" (id, bunrui_cd, bunrui_nm, kubun_cd, kubun_nm) FROM stdin;
    public       postgres    false    201   �                 0    16414    M_User 
   TABLE DATA               �   COPY public."M_User" (id, user_id, user_nm, mail_address1, mail_address2, phone_extension, authority_cd, password, sect) FROM stdin;
    public       postgres    false    199   �                 0    16400    rsv_timetable 
   TABLE DATA               ~   COPY public.rsv_timetable (id, name, sect, notes, time_st, time_end, cpt_name, kwd, kubun_cd, bunrui_cd, user_id) FROM stdin;
    public       postgres    false    197   /                  0    0    M_Kubun_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."M_Kubun_id_seq"', 1, false);
            public       postgres    false    200                       0    0    rsv_timetable_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.rsv_timetable_id_seq', 62, true);
            public       postgres    false    198            �
           2606    16441    M_Kubun M_Kubun_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY public."M_Kubun"
    ADD CONSTRAINT "M_Kubun_pkey" PRIMARY KEY (bunrui_cd, kubun_cd);
 B   ALTER TABLE ONLY public."M_Kubun" DROP CONSTRAINT "M_Kubun_pkey";
       public         postgres    false    201    201            �
           2606    16421    M_User M_User_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public."M_User"
    ADD CONSTRAINT "M_User_pkey" PRIMARY KEY (user_id);
 @   ALTER TABLE ONLY public."M_User" DROP CONSTRAINT "M_User_pkey";
       public         postgres    false    199            �
           2606    16410     rsv_timetable rsv_timetable_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.rsv_timetable
    ADD CONSTRAINT rsv_timetable_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.rsv_timetable DROP CONSTRAINT rsv_timetable_pkey;
       public         postgres    false    197                S  x�u��KA��3EG��E�
�*z��!!��x�3��v�Y����������ݓ�Bo7�a���2��y�;><[��G�'i�i�e����x� {�N˷�=���t�]��$́��`X��9�6�蜀(�0�5Mc�
��������%��$<7#�o ��t-i�d���VJK(�V��tz1��\Ti��3���5�Oc�����p/ɟ�./&�����a��|���?� �f
`�оv��A5���N!��k����F�љ4�'���ʫF�r��A�jc��\���M�9w²��`x���_��� f�N            x������ � �         D   x�3�4�|�������)�E�)�e�ɩzY�� P�Y@�������?n�����q��=... o�&           x���Ok�@�ϓO�GE�̼3��x��G-����=t���j�^V������i=X�D�0c6�ԯ��4��;�?.�@�'���}��	A��I:8F��V�����^��_"����4q���U�G�0�
�W�2��ݥ���n����B�����1��~���V�Qwi�[gP��ڷt���ň�v%�,�w"|#�#�ᾈv��_��,|4<�4��d�i����Wr�8nu��~H#_�5?w�E���迉(�j���������0��^����I�H�O��;���f�K�����p�&i+��<m�;�{.�����'�ߟm�I�@Pf�Y���a:8��`c%;_��g�� =�X�L���CT�*��W�:`nNF���c�hˑ��d��Z�;R���̙�e*b�K�ފ޶l	�$� �����1<YLij
8S�Ԕ�1�[+��=Ԧ j�@9RY�n��05�9S��BՓA�&�5��M��\�P�\�#-%���ɨR��)�>e�/s�Jg�1׹�ڕnE���L�<��<�]�n1:�E�rDK�P�s��#87��# Q(��|��D/����յD��͚� �q��������M�M+w�DF�|��eߖy���ޯ�J2X�\|Cz�3���7�g     