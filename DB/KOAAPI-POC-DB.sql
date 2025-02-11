PGDMP     :                    w         	   koaapipoc    9.6.16    12.0     ]           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ^           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            _           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            `           1262    16654 	   koaapipoc    DATABASE     �   CREATE DATABASE koaapipoc WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United States.1252' LC_CTYPE = 'English_United States.1252';
    DROP DATABASE koaapipoc;
                postgres    false            �            1259    16677    SequelizeMeta    TABLE     R   CREATE TABLE public."SequelizeMeta" (
    name character varying(255) NOT NULL
);
 #   DROP TABLE public."SequelizeMeta";
       public            postgres    false            �            1259    16684    Shipmentdetails    TABLE     �  CREATE TABLE public."Shipmentdetails" (
    id integer NOT NULL,
    shipment_id integer,
    shipment_name character varying(255),
    shipment_location character varying(255),
    shipped_date date,
    shipment_image bytea,
    created_date timestamp with time zone,
    updated_date timestamp with time zone,
    "createdAt" timestamp with time zone,
    "updatedAt" timestamp with time zone
);
 %   DROP TABLE public."Shipmentdetails";
       public            postgres    false            �            1259    16682    Shipmentdetails_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Shipmentdetails_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public."Shipmentdetails_id_seq";
       public          postgres    false    188            a           0    0    Shipmentdetails_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public."Shipmentdetails_id_seq" OWNED BY public."Shipmentdetails".id;
          public          postgres    false    187            �            1259    16655    shipment_details    TABLE     $  CREATE TABLE public.shipment_details (
    "Id" integer NOT NULL,
    shipment_id integer,
    shipment_name "char",
    shipment_location "char",
    shipped_date "char",
    shipment_image bytea,
    created_date timestamp(4) with time zone,
    updated_date timestamp(4) with time zone
);
 $   DROP TABLE public.shipment_details;
       public            postgres    false            �           2604    16687    Shipmentdetails id    DEFAULT     |   ALTER TABLE ONLY public."Shipmentdetails" ALTER COLUMN id SET DEFAULT nextval('public."Shipmentdetails_id_seq"'::regclass);
 C   ALTER TABLE public."Shipmentdetails" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    187    188    188            X          0    16677    SequelizeMeta 
   TABLE DATA           /   COPY public."SequelizeMeta" (name) FROM stdin;
    public          postgres    false    186   @       Z          0    16684    Shipmentdetails 
   TABLE DATA           �   COPY public."Shipmentdetails" (id, shipment_id, shipment_name, shipment_location, shipped_date, shipment_image, created_date, updated_date, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    188   �       W          0    16655    shipment_details 
   TABLE DATA           �   COPY public.shipment_details ("Id", shipment_id, shipment_name, shipment_location, shipped_date, shipment_image, created_date, updated_date) FROM stdin;
    public          postgres    false    185          b           0    0    Shipmentdetails_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public."Shipmentdetails_id_seq"', 123, true);
          public          postgres    false    187            �           2606    16681     SequelizeMeta SequelizeMeta_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public."SequelizeMeta"
    ADD CONSTRAINT "SequelizeMeta_pkey" PRIMARY KEY (name);
 N   ALTER TABLE ONLY public."SequelizeMeta" DROP CONSTRAINT "SequelizeMeta_pkey";
       public            postgres    false    186            �           2606    16692 $   Shipmentdetails Shipmentdetails_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public."Shipmentdetails"
    ADD CONSTRAINT "Shipmentdetails_pkey" PRIMARY KEY (id);
 R   ALTER TABLE ONLY public."Shipmentdetails" DROP CONSTRAINT "Shipmentdetails_pkey";
       public            postgres    false    188            �           2606    16662 &   shipment_details shipment_details_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.shipment_details
    ADD CONSTRAINT shipment_details_pkey PRIMARY KEY ("Id");
 P   ALTER TABLE ONLY public.shipment_details DROP CONSTRAINT shipment_details_pkey;
       public            postgres    false    185            X   6   x�320�4420642662�M.JM,I�-��,�M�+II-I��)��*����� 2��      Z   p  x����n\7�ׇO�}aAE]ή��>@6F�F
�h� }�R�m�Hy8��II�HJ���*��&��>�����w1֟<�ަ��!�X����($�K��х���#�0J�o����~�������}�������j;d�P0챸�����杪+�����e�);�� ���e��l�QN�7�l�����<R����CT����[�]?��v�wˇ��/��%�1�k눧>EL�	I�'�<R&��fW��ډB�-D|�7�11��s���-y����B���Ӟ�+"j�b��;�����Q��B0H����>��A�l�{ʮ��LP�q+��r��`���V�!D|O�����#Ţ"����c��8*b4
�\��#�{3�t�4
�\
{�J|ι����(�s9,?'utA�B<����RW�8r4
xn??Z�����_��#���%��s����oo��(�!ଇ�(`�6g�Vm���\-�hTvL�'}�'
x.S�Z��0�Р�a�'�^��k'��b�&N?�w�Γ.���w��e��G
�������
!������@H���a���'�8�R������($�<1�[e��L�|����F!�䉸���	f��L�K����4
ɔ٪�dY�i�)&�#���s����N�..�<Q Svd�y��z�@&au+\	��L¢8��(�D����d��<R �����~1�#2	��8������VTV=�N�$,�ɾA�@u�ۏ��o�m��>?<��w�|��i�"�P�h�{�@����|M�A6Q�6��^���D!�TVwb�/j��B�����p1��B6H��h�Dm�l��������--(d���߭ڪ��Ax�F|�->� !d�i�� ȋ&�B6�g����(dCk7���k-���AT���5En�dN�ATÊ�Kj3$(C�z�R-A��4�\F}�O�IA�'E�~�q)��/@�Z�
Ť��HZշ�D��TԭXz�%/A�\א��s�Vؑe�P�+��X}�X�P�k�h�ةM��P��~��@����i3�jP$��^�6-�	
ՠ�a��!��%��[��S��h�A�/VU�D��H�)���&(T��Ul.����B5�3�o_�"|�U'
Ր�h�}U��w�f�hԛ�@\R�>'
͐�^���F���ӭ��S����L�y�Z�	�f�ѓ�|R�(4���*f^���S
ͤ�nUMPh&�6r����S
ͤ��lf�Vu
ͤ��l"�<�q)oRϦ\�.6���S���>���'m���S��r/�"�����4�qC�}���� ������̂�S��ج�-�.A٩ANy�{&Gj�)(;5�)��\U��e�A�~oͥFj��O��5�X�Y>sj���3����jc$(;5)
��)��GA�i�(�_.s��~#�k����5Q��[��%!ƭ�W�������C��q�G�!���1,(��ۥZ��~�����l(���ςr�����������.�2nƓ�,�Q������<"77z��B`G�M�~1]�
A����͵	�*�j��\5�ʁ�3K~K=Ĉ�d�/��o�����(9�U��--=9!���%��������2      W      x������ � �     