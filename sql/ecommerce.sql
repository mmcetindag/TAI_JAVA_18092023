PGDMP  2                    {         	   ecommerce    16.0    16.0 5    3           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            4           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            5           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            6           1262    16418 	   ecommerce    DATABASE     }   CREATE DATABASE ecommerce WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Turkish_Turkey.1254';
    DROP DATABASE ecommerce;
                postgres    false            �            1259    16879    cart_product    TABLE     �   CREATE TABLE public.cart_product (
    cart_product_id integer NOT NULL,
    quantity integer,
    unit_price double precision,
    cart_id integer,
    product_id integer
);
     DROP TABLE public.cart_product;
       public         heap    postgres    false            �            1259    16878     cart_product_cart_product_id_seq    SEQUENCE     �   CREATE SEQUENCE public.cart_product_cart_product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.cart_product_cart_product_id_seq;
       public          postgres    false    216            7           0    0     cart_product_cart_product_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.cart_product_cart_product_id_seq OWNED BY public.cart_product.cart_product_id;
          public          postgres    false    215            �            1259    16886    carts    TABLE     h   CREATE TABLE public.carts (
    cart_id integer NOT NULL,
    customer_number character varying(255)
);
    DROP TABLE public.carts;
       public         heap    postgres    false            �            1259    16885    carts_cart_id_seq    SEQUENCE     �   CREATE SEQUENCE public.carts_cart_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.carts_cart_id_seq;
       public          postgres    false    218            8           0    0    carts_cart_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.carts_cart_id_seq OWNED BY public.carts.cart_id;
          public          postgres    false    217            �            1259    16892 
   categories    TABLE     o   CREATE TABLE public.categories (
    category_id integer NOT NULL,
    category_name character varying(255)
);
    DROP TABLE public.categories;
       public         heap    postgres    false            �            1259    16911 	   customers    TABLE     $  CREATE TABLE public.customers (
    customer_number character varying(255) NOT NULL,
    address character varying(255),
    company_name character varying(255),
    contact_name character varying(255),
    contact_title character varying(255),
    city_id integer,
    country_id integer
);
    DROP TABLE public.customers;
       public         heap    postgres    false            �            1259    16918 	   employees    TABLE     1  CREATE TABLE public.employees (
    employee_id integer NOT NULL,
    address character varying(255),
    birth_date date,
    first_name character varying(255),
    last_name character varying(255),
    reports_to integer,
    title character varying(255),
    city_id integer,
    country_id integer
);
    DROP TABLE public.employees;
       public         heap    postgres    false            �            1259    17031    entities    TABLE     �   CREATE TABLE public.entities (
    supplier_id integer NOT NULL,
    address character varying(255),
    company_name character varying(255),
    contact_mail character varying(255),
    contact_name character varying(255)
);
    DROP TABLE public.entities;
       public         heap    postgres    false            �            1259    16925    order_details    TABLE     �   CREATE TABLE public.order_details (
    order_id integer NOT NULL,
    product_id integer NOT NULL,
    discount double precision,
    quantity integer,
    unit_price double precision
);
 !   DROP TABLE public.order_details;
       public         heap    postgres    false            �            1259    16930    orders    TABLE     �   CREATE TABLE public.orders (
    order_id integer NOT NULL,
    order_date date,
    required_date date,
    shipped_date date,
    customer_number character varying(255),
    employee_id integer
);
    DROP TABLE public.orders;
       public         heap    postgres    false            �            1259    16935    products    TABLE     �   CREATE TABLE public.products (
    product_id integer NOT NULL,
    product_name character varying(255),
    unit_price double precision,
    stock integer,
    category_id integer,
    supplier_id integer
);
    DROP TABLE public.products;
       public         heap    postgres    false            �            1259    16940 	   suppliers    TABLE     �   CREATE TABLE public.suppliers (
    supplier_id integer NOT NULL,
    address character varying(255),
    company_name character varying(255),
    contact_name character varying(255),
    contact_mail character varying(255)
);
    DROP TABLE public.suppliers;
       public         heap    postgres    false            �            1259    17038    suppliers_supplier_id_seq    SEQUENCE     �   ALTER TABLE public.suppliers ALTER COLUMN supplier_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.suppliers_supplier_id_seq
    START WITH 11
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    225            v           2604    16882    cart_product cart_product_id    DEFAULT     �   ALTER TABLE ONLY public.cart_product ALTER COLUMN cart_product_id SET DEFAULT nextval('public.cart_product_cart_product_id_seq'::regclass);
 K   ALTER TABLE public.cart_product ALTER COLUMN cart_product_id DROP DEFAULT;
       public          postgres    false    215    216    216            w           2604    16889    carts cart_id    DEFAULT     n   ALTER TABLE ONLY public.carts ALTER COLUMN cart_id SET DEFAULT nextval('public.carts_cart_id_seq'::regclass);
 <   ALTER TABLE public.carts ALTER COLUMN cart_id DROP DEFAULT;
       public          postgres    false    218    217    218            %          0    16879    cart_product 
   TABLE DATA           b   COPY public.cart_product (cart_product_id, quantity, unit_price, cart_id, product_id) FROM stdin;
    public          postgres    false    216   �A       '          0    16886    carts 
   TABLE DATA           9   COPY public.carts (cart_id, customer_number) FROM stdin;
    public          postgres    false    218   �A       (          0    16892 
   categories 
   TABLE DATA           @   COPY public.categories (category_id, category_name) FROM stdin;
    public          postgres    false    219   B       )          0    16911 	   customers 
   TABLE DATA           }   COPY public.customers (customer_number, address, company_name, contact_name, contact_title, city_id, country_id) FROM stdin;
    public          postgres    false    220   yB       *          0    16918 	   employees 
   TABLE DATA           �   COPY public.employees (employee_id, address, birth_date, first_name, last_name, reports_to, title, city_id, country_id) FROM stdin;
    public          postgres    false    221   �B       /          0    17031    entities 
   TABLE DATA           b   COPY public.entities (supplier_id, address, company_name, contact_mail, contact_name) FROM stdin;
    public          postgres    false    226   �B       +          0    16925    order_details 
   TABLE DATA           ]   COPY public.order_details (order_id, product_id, discount, quantity, unit_price) FROM stdin;
    public          postgres    false    222   �B       ,          0    16930    orders 
   TABLE DATA           q   COPY public.orders (order_id, order_date, required_date, shipped_date, customer_number, employee_id) FROM stdin;
    public          postgres    false    223   �B       -          0    16935    products 
   TABLE DATA           i   COPY public.products (product_id, product_name, unit_price, stock, category_id, supplier_id) FROM stdin;
    public          postgres    false    224   
C       .          0    16940 	   suppliers 
   TABLE DATA           c   COPY public.suppliers (supplier_id, address, company_name, contact_name, contact_mail) FROM stdin;
    public          postgres    false    225   �K       9           0    0     cart_product_cart_product_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.cart_product_cart_product_id_seq', 1, false);
          public          postgres    false    215            :           0    0    carts_cart_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.carts_cart_id_seq', 1, false);
          public          postgres    false    217            ;           0    0    suppliers_supplier_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.suppliers_supplier_id_seq', 16, true);
          public          postgres    false    227            y           2606    16884    cart_product cart_product_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.cart_product
    ADD CONSTRAINT cart_product_pkey PRIMARY KEY (cart_product_id);
 H   ALTER TABLE ONLY public.cart_product DROP CONSTRAINT cart_product_pkey;
       public            postgres    false    216            {           2606    16891    carts carts_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.carts
    ADD CONSTRAINT carts_pkey PRIMARY KEY (cart_id);
 :   ALTER TABLE ONLY public.carts DROP CONSTRAINT carts_pkey;
       public            postgres    false    218            }           2606    16896    categories categories_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (category_id);
 D   ALTER TABLE ONLY public.categories DROP CONSTRAINT categories_pkey;
       public            postgres    false    219                       2606    16917    customers customers_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_pkey PRIMARY KEY (customer_number);
 B   ALTER TABLE ONLY public.customers DROP CONSTRAINT customers_pkey;
       public            postgres    false    220            �           2606    16924    employees employees_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.employees
    ADD CONSTRAINT employees_pkey PRIMARY KEY (employee_id);
 B   ALTER TABLE ONLY public.employees DROP CONSTRAINT employees_pkey;
       public            postgres    false    221            �           2606    17037    entities entities_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.entities
    ADD CONSTRAINT entities_pkey PRIMARY KEY (supplier_id);
 @   ALTER TABLE ONLY public.entities DROP CONSTRAINT entities_pkey;
       public            postgres    false    226            �           2606    16929     order_details order_details_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.order_details
    ADD CONSTRAINT order_details_pkey PRIMARY KEY (order_id, product_id);
 J   ALTER TABLE ONLY public.order_details DROP CONSTRAINT order_details_pkey;
       public            postgres    false    222    222            �           2606    16934    orders orders_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (order_id);
 <   ALTER TABLE ONLY public.orders DROP CONSTRAINT orders_pkey;
       public            postgres    false    223            �           2606    16939    products products_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (product_id);
 @   ALTER TABLE ONLY public.products DROP CONSTRAINT products_pkey;
       public            postgres    false    224            �           2606    16946    suppliers suppliers_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.suppliers
    ADD CONSTRAINT suppliers_pkey PRIMARY KEY (supplier_id);
 B   ALTER TABLE ONLY public.suppliers DROP CONSTRAINT suppliers_pkey;
       public            postgres    false    225            �           2606    16957 !   carts fk1adwofxueely595c29h9fl1cf    FK CONSTRAINT     �   ALTER TABLE ONLY public.carts
    ADD CONSTRAINT fk1adwofxueely595c29h9fl1cf FOREIGN KEY (customer_number) REFERENCES public.customers(customer_number);
 K   ALTER TABLE ONLY public.carts DROP CONSTRAINT fk1adwofxueely595c29h9fl1cf;
       public          postgres    false    220    218    4735            �           2606    16992 )   order_details fk4q98utpd73imf4yhttm3w0eax    FK CONSTRAINT     �   ALTER TABLE ONLY public.order_details
    ADD CONSTRAINT fk4q98utpd73imf4yhttm3w0eax FOREIGN KEY (product_id) REFERENCES public.products(product_id);
 S   ALTER TABLE ONLY public.order_details DROP CONSTRAINT fk4q98utpd73imf4yhttm3w0eax;
       public          postgres    false    222    4743    224            �           2606    17012 $   products fk6i174ixi9087gcvvut45em7fd    FK CONSTRAINT     �   ALTER TABLE ONLY public.products
    ADD CONSTRAINT fk6i174ixi9087gcvvut45em7fd FOREIGN KEY (supplier_id) REFERENCES public.suppliers(supplier_id);
 N   ALTER TABLE ONLY public.products DROP CONSTRAINT fk6i174ixi9087gcvvut45em7fd;
       public          postgres    false    4745    225    224            �           2606    16947 (   cart_product fk8bhydybldutgf7a82oxkctlgs    FK CONSTRAINT     �   ALTER TABLE ONLY public.cart_product
    ADD CONSTRAINT fk8bhydybldutgf7a82oxkctlgs FOREIGN KEY (cart_id) REFERENCES public.carts(cart_id);
 R   ALTER TABLE ONLY public.cart_product DROP CONSTRAINT fk8bhydybldutgf7a82oxkctlgs;
       public          postgres    false    218    216    4731            �           2606    17002 "   orders fkfhl8bv0xn3sj33q2f3scf1bq6    FK CONSTRAINT     �   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT fkfhl8bv0xn3sj33q2f3scf1bq6 FOREIGN KEY (employee_id) REFERENCES public.employees(employee_id);
 L   ALTER TABLE ONLY public.orders DROP CONSTRAINT fkfhl8bv0xn3sj33q2f3scf1bq6;
       public          postgres    false    4737    223    221            �           2606    16987 )   order_details fkjyu2qbqt8gnvno9oe9j2s2ldk    FK CONSTRAINT     �   ALTER TABLE ONLY public.order_details
    ADD CONSTRAINT fkjyu2qbqt8gnvno9oe9j2s2ldk FOREIGN KEY (order_id) REFERENCES public.orders(order_id);
 S   ALTER TABLE ONLY public.order_details DROP CONSTRAINT fkjyu2qbqt8gnvno9oe9j2s2ldk;
       public          postgres    false    4741    222    223            �           2606    16997 "   orders fkms2886gi989auk8wkyl7vwcms    FK CONSTRAINT     �   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT fkms2886gi989auk8wkyl7vwcms FOREIGN KEY (customer_number) REFERENCES public.customers(customer_number);
 L   ALTER TABLE ONLY public.orders DROP CONSTRAINT fkms2886gi989auk8wkyl7vwcms;
       public          postgres    false    220    4735    223            �           2606    17007 $   products fkog2rp4qthbtt2lfyhfo32lsw9    FK CONSTRAINT     �   ALTER TABLE ONLY public.products
    ADD CONSTRAINT fkog2rp4qthbtt2lfyhfo32lsw9 FOREIGN KEY (category_id) REFERENCES public.categories(category_id);
 N   ALTER TABLE ONLY public.products DROP CONSTRAINT fkog2rp4qthbtt2lfyhfo32lsw9;
       public          postgres    false    4733    224    219            �           2606    16952 (   cart_product fkreo7xwp4sy8mglrlf0b6hkr3e    FK CONSTRAINT     �   ALTER TABLE ONLY public.cart_product
    ADD CONSTRAINT fkreo7xwp4sy8mglrlf0b6hkr3e FOREIGN KEY (product_id) REFERENCES public.products(product_id);
 R   ALTER TABLE ONLY public.cart_product DROP CONSTRAINT fkreo7xwp4sy8mglrlf0b6hkr3e;
       public          postgres    false    224    216    4743            %      x������ � �      '      x������ � �      (   T   x�3�tN,�,I�Qp��O)�2���,NN��I�K�/-�2�t�/�M-�L.�2�IM�����O��2��HM�)�PpN,J����� ��      )      x������ � �      *      x������ � �      /      x������ � �      +      x������ � �      ,      x������ � �      -   j  x����r�H�ύ���`��(R��ɣ�ql�^�d��Ds�c�~���AɇݘGؒ�hTeef%#5���_���4�^�eS��F%i��*�T�� Vsk�8u�?K���T4S�$��>z����ڶG�0�A.PU��_G�������+���~jT:g�ʧk�K%�n<�z��j��������X��a��X%�r)g�C��z��*��x_��x�v��J/Ɓ_�UY�3n(�J�dڭ�[�*��\9��A����^�Ճկ�d�^ea��,��h��bg�4�6zi�of[�Vų0IT�%�X����޴���3'}�n��v߬��W����jaV+����5�* &RɌ{�0Q_��w�����m��}cڍ��0�D�Z�����a���-('!�%�� �ԍ���
xь���v����\��\-��~h�4�T*.x�
"�5-zUaJ��]TҨYq�ҽz���PEa�X�N��R�f#��V��+�U�U)�A)/���i�Gpe���^_����+�wPb"�#�/�;�u߻���z�"��*���X=�#}r�Sgm+èiz��xbT����6�J�!S���׊�{��½�Vb@>vn�����]��$LA�FU�C��}�@'���b�N�.a`�My��{2�@�!,<#@�v��[Z�r줤��w��;�8�\U1# ����s8�@"�i�g�6�VDa�J9L��Fm� �d_=y��ޘ%L�ޅt�f��������3�'L�xŁ0`zϮ��Gl�鹇V�֮w�IH��u���J/c�k��w�\Ѧ���ij���?���}2QeRg�{�@���v۳���v���`�zE"�t��?s)�j���
��µ��A�rҩ�B�Z�m�.F�d�p��ն2�*S�2\	�ea��y�<�-�_� i��'�����½�����]e���s� ���8@�<a}
����/\'E�]�7t� �'.�bߦ��@�F�/G<&�}�i��kg΢��1޸��a�Nj�P�?�������4���� _ ��u����gל�I�T��C��cU���8�EM���A:b��M8�<T��z��x����ЀM��fpe�x@nA��X����d#��taf�]����n���f KX�L���<��$ݻ��czp�i)¡t�
O���Y4n��"�����
1	���$Kߕ{)�i�w��k�D��L<c�2˔�'Sx�m�2^���tga~P����s|n04��)���G;�������w�DHy�� ���1ھe�l�0�,׿��)dn"E��n��(�e>�'��ۡ��!~Ef+9�
4DlI�0�.L��Ssi �F���� �[��[V�a�ƞ�-�~Â�x
���n�Z����n6vs�����S���� �d���"G�����]k�I�~��8M����b�x���ۛT��P�J�D0�%��2�wQZ�}���_����?���6��ݝE�n�PQ�JOò���Q-Ք�|<c���ԌlH2ƥ�e���F?l��vN_�\VBX��4��qm	������G��?:���1�߃�����0�xT�f�c T:5���Z���?�a2��c����Q�*�J���ڏ��p7�����E!��/��(2i������Y '��K���z|g�,�`�2�n���^��<�x���d(n�39Ѯ�U��!���8�` �T�~�AQ��옛���`��(�M��'���عj,��^�Rɞ�|*���c���7F`'=�-!���R�|"(m�)b"+�Q�Kg>Η��y���X�q�����`�Q�����ղJd�&���2�i8P���W:*2�".��*��%ݶC����=ѷ��D�Łn��4�v�N>����纲|��}m�w��C�#����� �$�7e���S�d'��u'4���ܯ�r�_��X�9�Q��d�M�B�ă,����4d�^��Xp._D䅕O�GuW��ؓH�=Hn�^v#�n%l*.�����0��=����W��i������*��I�䲯�xҐ����'y��AE�aM�D�{$��
\+��-�Ju�&_Mda{�H&����J]wx��-(���QHfrC���������$8\NJg��2�� �0P��      .   G  x��RKr�@]7��]6�B|l�)`��؅]^e�5hJ�23����
9@vI�f�+Ȫ�U���e#x_z��^��_?�bcؖ^�L������|�����E���H�l��a0�;��o���|����Z��-=U�����5�<m"l����T��/�k:d���F���چ.�Y�#�-�1:��0s.�Um�Eq^�<z��r���	u���a�4���@G���moF��v��7l4��[�[p)#� �m
���ل7��p���GAf��I�;0��p�GKx�g�4��u�Z}M c��F�v�:[u'm��Ѷ�w��t�{þ!�̂�A~��N~:0��(��b���K��x������O�{3����m�4�$W��i��ob@"u��$9��XX(f+�/��G��c�*�=��,h��e~�t�ʵ��	\J�J�g�0��w��wM���Դ������m�ʍޟ1�,��"����F���w�q�mMɣek��j���I+���$W��Ɲ5f}��}a'��Ҍ=�'m�,���	z��:�o9Fƥ�R�m�Ӝ|��*�%�/�N�/�J�     