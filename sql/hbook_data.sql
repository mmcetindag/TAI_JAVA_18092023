PGDMP  (                    {            hotel    16.0    16.0 6    &           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            '           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            (           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            )           1262    16662    hotel    DATABASE     y   CREATE DATABASE hotel WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Turkish_Turkey.1254';
    DROP DATABASE hotel;
                postgres    false            �            1259    16664    hbook    TABLE     �  CREATE TABLE public.hbook (
    hbook_id integer NOT NULL,
    hbook_user_id integer NOT NULL,
    hbook_room_id integer NOT NULL,
    hbook_hotel character varying(255),
    hbook_code character varying(20),
    hbook_name character varying(50) NOT NULL,
    hbook_mail character varying(100) NOT NULL,
    hbook_mpno character varying(20) NOT NULL,
    hbook_date timestamp without time zone,
    hbook_cin_date date,
    hbook_cout_date date NOT NULL
);
    DROP TABLE public.hbook;
       public         heap    postgres    false            �            1259    16663    hbook_hbook_id_seq    SEQUENCE     �   CREATE SEQUENCE public.hbook_hbook_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.hbook_hbook_id_seq;
       public          postgres    false    216            *           0    0    hbook_hbook_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.hbook_hbook_id_seq OWNED BY public.hbook.hbook_id;
          public          postgres    false    215            �            1259    16672    hfee    TABLE     �   CREATE TABLE public.hfee (
    hfee_id integer NOT NULL,
    hfee_term_id integer NOT NULL,
    hfee_room_id integer NOT NULL,
    hfee_hotel_id integer NOT NULL,
    hfee_adt_prc numeric(8,2),
    hfee_kid_prc numeric(8,2)
);
    DROP TABLE public.hfee;
       public         heap    postgres    false            �            1259    16671    hfee_hfee_id_seq    SEQUENCE     �   CREATE SEQUENCE public.hfee_hfee_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.hfee_hfee_id_seq;
       public          postgres    false    218            +           0    0    hfee_hfee_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.hfee_hfee_id_seq OWNED BY public.hfee.hfee_id;
          public          postgres    false    217            �            1259    16679    hotel    TABLE     �   CREATE TABLE public.hotel (
    hotel_id integer NOT NULL,
    hotel_name character varying(500) NOT NULL,
    hotel_loc_id integer
);
    DROP TABLE public.hotel;
       public         heap    postgres    false            �            1259    16678    hotel_hotel_id_seq    SEQUENCE     �   CREATE SEQUENCE public.hotel_hotel_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.hotel_hotel_id_seq;
       public          postgres    false    220            ,           0    0    hotel_hotel_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.hotel_hotel_id_seq OWNED BY public.hotel.hotel_id;
          public          postgres    false    219            �            1259    16688    loc    TABLE     �   CREATE TABLE public.loc (
    loc_id integer NOT NULL,
    loc_zone_id bigint NOT NULL,
    loc_code character varying(4),
    loc_name character varying(100) NOT NULL
);
    DROP TABLE public.loc;
       public         heap    postgres    false            �            1259    16687    loc_loc_id_seq    SEQUENCE     �   CREATE SEQUENCE public.loc_loc_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.loc_loc_id_seq;
       public          postgres    false    222            -           0    0    loc_loc_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.loc_loc_id_seq OWNED BY public.loc.loc_id;
          public          postgres    false    221            �            1259    16695    room    TABLE     �   CREATE TABLE public.room (
    room_id integer NOT NULL,
    room_hotel_id integer,
    room_stock integer DEFAULT 1 NOT NULL,
    room_name character varying(500) NOT NULL,
    room_status character varying(1) DEFAULT 'a'::character varying NOT NULL
);
    DROP TABLE public.room;
       public         heap    postgres    false            �            1259    16694    room_room_id_seq    SEQUENCE     �   CREATE SEQUENCE public.room_room_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.room_room_id_seq;
       public          postgres    false    224            .           0    0    room_room_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.room_room_id_seq OWNED BY public.room.room_id;
          public          postgres    false    223            �            1259    16706    term    TABLE       CREATE TABLE public.term (
    term_id integer NOT NULL,
    term_obj_id integer NOT NULL,
    term_obj text NOT NULL,
    term_strt_date date NOT NULL,
    term_fnsh_date date NOT NULL,
    term_status character varying(1) DEFAULT 'a'::character varying NOT NULL
);
    DROP TABLE public.term;
       public         heap    postgres    false            �            1259    16705    term_term_id_seq    SEQUENCE     �   CREATE SEQUENCE public.term_term_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.term_term_id_seq;
       public          postgres    false    226            /           0    0    term_term_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.term_term_id_seq OWNED BY public.term.term_id;
          public          postgres    false    225            �            1259    16716    zone    TABLE     �   CREATE TABLE public.zone (
    zone_id integer NOT NULL,
    zone_name character varying(100) NOT NULL,
    zone_code character varying(3) NOT NULL
);
    DROP TABLE public.zone;
       public         heap    postgres    false            �            1259    16715    zone_zone_id_seq    SEQUENCE     �   CREATE SEQUENCE public.zone_zone_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.zone_zone_id_seq;
       public          postgres    false    228            0           0    0    zone_zone_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.zone_zone_id_seq OWNED BY public.zone.zone_id;
          public          postgres    false    227            n           2604    16667    hbook hbook_id    DEFAULT     p   ALTER TABLE ONLY public.hbook ALTER COLUMN hbook_id SET DEFAULT nextval('public.hbook_hbook_id_seq'::regclass);
 =   ALTER TABLE public.hbook ALTER COLUMN hbook_id DROP DEFAULT;
       public          postgres    false    215    216    216            o           2604    16675    hfee hfee_id    DEFAULT     l   ALTER TABLE ONLY public.hfee ALTER COLUMN hfee_id SET DEFAULT nextval('public.hfee_hfee_id_seq'::regclass);
 ;   ALTER TABLE public.hfee ALTER COLUMN hfee_id DROP DEFAULT;
       public          postgres    false    218    217    218            p           2604    16682    hotel hotel_id    DEFAULT     p   ALTER TABLE ONLY public.hotel ALTER COLUMN hotel_id SET DEFAULT nextval('public.hotel_hotel_id_seq'::regclass);
 =   ALTER TABLE public.hotel ALTER COLUMN hotel_id DROP DEFAULT;
       public          postgres    false    219    220    220            q           2604    16691 
   loc loc_id    DEFAULT     h   ALTER TABLE ONLY public.loc ALTER COLUMN loc_id SET DEFAULT nextval('public.loc_loc_id_seq'::regclass);
 9   ALTER TABLE public.loc ALTER COLUMN loc_id DROP DEFAULT;
       public          postgres    false    222    221    222            r           2604    16698    room room_id    DEFAULT     l   ALTER TABLE ONLY public.room ALTER COLUMN room_id SET DEFAULT nextval('public.room_room_id_seq'::regclass);
 ;   ALTER TABLE public.room ALTER COLUMN room_id DROP DEFAULT;
       public          postgres    false    224    223    224            u           2604    16709    term term_id    DEFAULT     l   ALTER TABLE ONLY public.term ALTER COLUMN term_id SET DEFAULT nextval('public.term_term_id_seq'::regclass);
 ;   ALTER TABLE public.term ALTER COLUMN term_id DROP DEFAULT;
       public          postgres    false    225    226    226            w           2604    16719    zone zone_id    DEFAULT     l   ALTER TABLE ONLY public.zone ALTER COLUMN zone_id SET DEFAULT nextval('public.zone_zone_id_seq'::regclass);
 ;   ALTER TABLE public.zone ALTER COLUMN zone_id DROP DEFAULT;
       public          postgres    false    228    227    228                      0    16664    hbook 
   TABLE DATA           �   COPY public.hbook (hbook_id, hbook_user_id, hbook_room_id, hbook_hotel, hbook_code, hbook_name, hbook_mail, hbook_mpno, hbook_date, hbook_cin_date, hbook_cout_date) FROM stdin;
    public          postgres    false    216   �:                 0    16672    hfee 
   TABLE DATA           n   COPY public.hfee (hfee_id, hfee_term_id, hfee_room_id, hfee_hotel_id, hfee_adt_prc, hfee_kid_prc) FROM stdin;
    public          postgres    false    218   �:                 0    16679    hotel 
   TABLE DATA           C   COPY public.hotel (hotel_id, hotel_name, hotel_loc_id) FROM stdin;
    public          postgres    false    220   �:                 0    16688    loc 
   TABLE DATA           F   COPY public.loc (loc_id, loc_zone_id, loc_code, loc_name) FROM stdin;
    public          postgres    false    222                    0    16695    room 
   TABLE DATA           Z   COPY public.room (room_id, room_hotel_id, room_stock, room_name, room_status) FROM stdin;
    public          postgres    false    224   c�       !          0    16706    term 
   TABLE DATA           k   COPY public.term (term_id, term_obj_id, term_obj, term_strt_date, term_fnsh_date, term_status) FROM stdin;
    public          postgres    false    226   a�       #          0    16716    zone 
   TABLE DATA           =   COPY public.zone (zone_id, zone_name, zone_code) FROM stdin;
    public          postgres    false    228   ~�       1           0    0    hbook_hbook_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.hbook_hbook_id_seq', 1, false);
          public          postgres    false    215            2           0    0    hfee_hfee_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.hfee_hfee_id_seq', 1, false);
          public          postgres    false    217            3           0    0    hotel_hotel_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.hotel_hotel_id_seq', 2552, true);
          public          postgres    false    219            4           0    0    loc_loc_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.loc_loc_id_seq', 22507, true);
          public          postgres    false    221            5           0    0    room_room_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.room_room_id_seq', 3162, true);
          public          postgres    false    223            6           0    0    term_term_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.term_term_id_seq', 1, false);
          public          postgres    false    225            7           0    0    zone_zone_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.zone_zone_id_seq', 94, true);
          public          postgres    false    227            z           2606    16669    hbook pk_hbook 
   CONSTRAINT     R   ALTER TABLE ONLY public.hbook
    ADD CONSTRAINT pk_hbook PRIMARY KEY (hbook_id);
 8   ALTER TABLE ONLY public.hbook DROP CONSTRAINT pk_hbook;
       public            postgres    false    216            |           2606    16677    hfee pk_hfee 
   CONSTRAINT     O   ALTER TABLE ONLY public.hfee
    ADD CONSTRAINT pk_hfee PRIMARY KEY (hfee_id);
 6   ALTER TABLE ONLY public.hfee DROP CONSTRAINT pk_hfee;
       public            postgres    false    218            ~           2606    16686    hotel pk_hotel 
   CONSTRAINT     R   ALTER TABLE ONLY public.hotel
    ADD CONSTRAINT pk_hotel PRIMARY KEY (hotel_id);
 8   ALTER TABLE ONLY public.hotel DROP CONSTRAINT pk_hotel;
       public            postgres    false    220            �           2606    16693 
   loc pk_loc 
   CONSTRAINT     L   ALTER TABLE ONLY public.loc
    ADD CONSTRAINT pk_loc PRIMARY KEY (loc_id);
 4   ALTER TABLE ONLY public.loc DROP CONSTRAINT pk_loc;
       public            postgres    false    222            �           2606    16704    room pk_room 
   CONSTRAINT     O   ALTER TABLE ONLY public.room
    ADD CONSTRAINT pk_room PRIMARY KEY (room_id);
 6   ALTER TABLE ONLY public.room DROP CONSTRAINT pk_room;
       public            postgres    false    224            �           2606    16714    term pk_term 
   CONSTRAINT     O   ALTER TABLE ONLY public.term
    ADD CONSTRAINT pk_term PRIMARY KEY (term_id);
 6   ALTER TABLE ONLY public.term DROP CONSTRAINT pk_term;
       public            postgres    false    226            �           2606    16721    zone pk_zone 
   CONSTRAINT     O   ALTER TABLE ONLY public.zone
    ADD CONSTRAINT pk_zone PRIMARY KEY (zone_id);
 6   ALTER TABLE ONLY public.zone DROP CONSTRAINT pk_zone;
       public            postgres    false    228            x           1259    16670    idx_hbook_code    INDEX     M   CREATE UNIQUE INDEX idx_hbook_code ON public.hbook USING btree (hbook_code);
 "   DROP INDEX public.idx_hbook_code;
       public            postgres    false    216                  x������ � �            x������ � �            x��}�r�H���
�:�u� �א�hI�g��r�	DB� ��*S?�P���U7j������V>�Lr��
���W>�^k��u��<�%��IQ�^���o�dq�T�Q1O����=Ϲ*�b�;.�in�>pn���yR-�C�&���E����:)�7�����͒�Y���ƫy��k��U������������M����m�8��e�;����AZ����I�E�h�:�ͪ��]%ռ������ȹN	�z��m����ק�H�8���w[ܾs�����.�y��N�g�Q/�n��\ϙ���V�������m��m�?�+|��_�z�`�8#���B�v�8QmC�z��s��8�s}���<��5[{nP����b��T���[��U6�:�"��)���"����͗���O7߿bWo��x}g�O�M��qS�nR,��wW�<&k��`���Q���$��,/�y�������t޻~��HWI����1s�pq��9|��?�U��5�XMC=���ާm1{JV��\�=?�M6�s4Ɋr�q���|���������\PF�1��		�@�X^�������a�)2���u.giY����i�9�X�X����R`�l���	���`��%�kܴwZb�`vz��=��(Į����Y�����Y��j
���9ɳݖH^��x��_T9q8�`l�X���+�l���2�����������uN�ￖ�|[b�G�,��p[y{C�9��� ���sƱÏ�*�7U������������u)A�H֛��5����s�n�Ei]aצE��{LQe��0V��"�Y|�"y1:�{~߹Ix����L%�����x��߄왋�pb�E�s�p"��<p�3���ш�Z8�7���a�?����ŋ��;��KRX?b *L]b�:��sf��MPd��/`�\�)vQ�L�E����h/�;��VnY�g�s�@f��\�f'O�yZ-K��K�@Q�;�{��:�K1j4��DHx뮾�+�"ݙ� p���%1vm:'[�H�ړ�Z'�0�"g?����!��j��XA�Z��}��)o�{�۱_�k�w�\��>g�޵4�o����wβE"%\�5��q]?�\9�^ë��k�����!k����H.b1MK��?ZM�(�cM�<�a�ŐVP��:�:C��������m��|\뉥7yJ�6k����^@�P��K�2�2�NCq�Y�3Z�\h���7Z�06�S���x4���(J��`/��2�m|��3Da�~�'��&5��}\�~�Θ&i�qm�{q�J�@�c@�`�7݇�^��)ӲJ�q�޿�Fw���r�,Pͺ�2CJ�{J�r���.Y=%b�W�+0ni�ߗUAԱ��������k"�^f�� 
V�W��O�����r��wNK  ���4�Mݾ����_���xM��P���c�<a��<}�&����]J���眮k%`�����3P��3 ��~�엕ط;��D�9���'A�$Y�6�� s}�᧴J��I f��
�j~�� |���Z@0b� �Oɳ�Y��X	k
_HW���(����wW�(_��&۷?;������N��-=�'p����i�̦s�i nZ���h��\C�!6:y�4���B�g9��u]�	8��+��r����0&A�:��-�{HC0� ��Y���aZd/X��E���]���{��,y�o7�ұ�BSxۏ�T���kh�u�ug�
�o4/���'j�Ռ�Y�̠m�~���0�-��K8��3To<X�a[
�����
��O��j���T�j�vv��O�z�] О@9z�_E+E,�t������b�]/$	Ķܼl�b8���v�F�0>��w��p��� j���9�'�C�aP�̛j�K��&;�1�$���m��2[|�[�غ��:�J)�h��7�w;a}������zؙb:��V�3� ?�.�R`�&�F�O��# Bo)����Wg�X�����C�s������t2z��	E�`t'�Ӑa^
Y�HF����U�s�~2�+�it��r��bgf 5��
Z��?��Q���S �4O�k�^��f[H�����!�P^a�9~�ty�<C��ס���"�(�w^ͼ�T�����ۀI����(=���0�\����
��A��@Zg�x4mH¨oˍ���N��p1jhe�
x�䡻��9I*{R�7�K<��b�,�)�� Ҫ�	>�o:�`­��We��҇��N�wN��efp#-��j��C�P��>dN"^Ӽ!��Nz�W:ϪGk����J�aߢK�]dr�������&4]�d��i�6�ļ(/��o��@�w���^�����1�)�<�g�2��kT����<NK�km3�]<#+���x���}DN��o�^���W��WL�a�� 9� �� ۋV�$0�ک�Ƣ��6�P�4�h
1�I�=��r� �}"�o���0i�8����K�}�Zl�A*�˞��k�-o�Vۀ$�JxH�&݌�+�ݦ+�m��\[T�&���R�[�1��ʚ<��>�>�~��Mhy�,~��0���ؕ��y��gyY�L�I˪�j%�$�����	�����_�߅�xR�u�i(�o�N�A�*����XsM�����a��{�D��}�cϋ���%$>�Ҵ�^��%UGi/~Q���$�f(�o^�{�3ƣĊ7�#��T��*�-Xƭ����-P���5&�S�2MلU�r���^�Ç4bG�W=�ejNè���IF��iIf4�BU��.��-����ضS��� `�C�Ys��9�q���.�Xׇ�G�Y����Q�t����5[�F������/l���8OVy2�v���p`4����%ֽ�
��㇔V�˶q߯5�u���&/3,oi�4���wM/V�N`v��;]>:��Z��i����u��Ց3�sUP�u�ٱ���b@��ݵ�}{�����m�n�A:f+M�v����>O�����	�I�t�#]�B������J�)�ݹƗ��7I�u����7�h§��a�Gª*����@��l���s��X�����=��J�<R�X?��?%�N�Z�� �%m?,˪��À��Y�H�W�C�b��]��d�%h�&��]wZ��\~��ӌ
�;dY�����ڎpnX���~'�t���y��\�%v�Sak�m�����1#~J�ݛF4�m�7��6�ٰଉ�������buםHځ9�N-�9/�2�?��Y�#�A�-��[ᤨ�d��:�VN@.EB�� ��g���Dx���fKܡ6��@:�^��hQ�Q�ڢ�^ʛ
h�YV�29��)�1d ��1(�~���h} �X�\V�}��(��Ɉ8M� �~��g�Q��ꎝV;p�"[.���j�	�Rey2����k?�뿲7�T9�P�@�zmo���� ~�� �ٴw�>s��Ϗ�mP��I({If�u/� 9`�� ��!i�:�j[����(�i Jz�n�ɫ(
����<�y��^�:�"��7 3�N�� PC�w�V^}�﵂��� <a�6�m˧�ڬ������y5��C,@%��f:�Χ�O�w��+[���L�9��`CC|H��@�
�}f-�!�� \�,{�����8̴����Fjr1��.�� �PD͆=�ivyg<��w��_K��T���o/�ԉ���?�^3�C�t C�顣�w&P����)��"1Yu<3tƳ�*j/��!r�!/��ܮ:~��p��*�m6���e ���7�1���^б���c�q},�E��p)�ێk}�#�J�SK����1ܶ�dEf��@�"{�KOjeK$�����v��
L�v��_�nr��˛�Y�>FD����'ۭ�_�U���ej�8���9�����s��X�� cz�uF&�2C_�T9 �r���S�}�9T}� ����߬~��M�V���1���|��e%(ۻ�D�J1\5�� ]:�:}�km{�Z�    m�4Ц3,K��"m)��Q�y{)�%���D\ ����i�h��&_55����n6/�}3>+T���-�جشפՒ�G�b��;��@)�( ����v�d�T�V϶/�Z�L��.]��q�O�cjꠖQ�.f ���@zx�/90X�5�ÌZ�`�U�b���:��.�IWS�y�$[$���n��䩢ˌ���_�Ǵ���ҿ!�|W�����vRFv�����N!����K��;7�z-���wn�����#�=���F�.�rZ=t�/�c��8��uA}�|��e���`��c�J[��c\h���s�@���o������L_K�v��,��m�i3�Ft�W�*a��l��VZQ`L�1y5F�#��t��B��D�N@�h�
�d��9z����c�[��O�D��\��M�� ��sYa
���𽔅 �i�_��miҸ��hYt�`�*�����.��T���1Wذ�Z:k��QJ��a��V�d(8h�A��Χ�����P/+L�CPT�-A���4
���=w���&�J2^�;��!b7_�]a,� ��s-:񭐍f@˰ϡH�!�M�h�U2�g��P �ۆ��"�P�z *U8o������JUok�E�.�LK����lP�xW�1.wkEb!VFh�p~}3�T�yx}{���^�V1����a{ �4��'��NP��nZ���?'g7�x�����I������z|q0��/n������b��L,�!��y��r.��֊��'�ND"�"δe E����b{;�[g���9M�礐1ҙ/6�|"�!�,�Vʕ&�k����s���ǚ�$4�d�\�i!��|��Ī ���rՉ�s�՟`z�#���1U�s�k�FWo�!Z5&9L�,ÂbA��|��Q~�;�W�<"���0�V�
�2��$%�R�����^_����c��
��9�Zp�������n���o���Z��Ca�R{����L6E�=>u��ACv��e5��'���?�6?g�H���mC�+���A"�^�\�C�����`�y�=�$������:�Cl,�`���~�7e��:���4
�7���0羪m�]p����x=�
Z%J��C�KP��L[���V`��ƙ7�\��-L�{);� _� ���"�`u��x�:���Ԁ=ܜ@L���o''�ɤw
6:3���k�w�<-6��Բ����(Ni��C�H,~�	��i���`A�B�*��جLC~a^�_�/���Xp|�3�YE��?kR��-p�B����p�XX�4���^߉2B�̵Ad�/��� Y�E!AwK��L~6y��@>�`�Z0Cprme�/�cv����}8�~)���~aOFۤ���*p�C(�g=�����.�F7���xry}�����-5�x��ΦY�`��,{gB��+�C���=Ye�eG3_3�9��@iZ�����D]��	|�p����|�&:x��R��:d`��4�T������1MO@#y�}��m7�����6Z�[i~����2���F@�(WDa�?�N�z��D����I��3H��a��hwͯ��<A�Z*2O�x�X�!a�N��j��2����?�\D��{��u�-�A�L�0��:Z&�R�w�.�g�������O�lǄ�q-�: ��fC�ׁ�[$�/6��93{ ���Wn	z����HWX����&Rt�$���7
(?Y��.|a*L^��(Pw{�Y����@w����JJjY�{�lF��y�����d*y��@>c��Pe���c����O���$�&!��w}�x�L�J�N�ŐH+BG�am-3������7"��~�e�1t��秖*���~_$�&%6����S�ti�.�Z10v���x�O7�H�>>��4�jt}�:����������c�۠e����7�T�2���(߸$j�8���T�#Ɋ|���|^�A5A�>�M�UYh� r"Px�ꟛ����Jt�����G�G���^�Ѫpͣ�����\d�4Q^r�[���o�`��qÚ�D5�mڣiMɀf`���\r��Db�A�j�F��.:ٶb��WP�����3�#��4`�gQV�
��^Q:N���2V�1-R!B0r�&���<�PO�dkzR6N��L��^"��h�L�E�+Sٗᵑ�E��v�!S� ��޾
�k��۷��J�C�q�;���~[���bY�ۄ�6����V`m�5�0��^1��gF4h���~�^l�5ߓI�r�j���p���%z����b�iX���K3#iG�8�E��i��6LJ����0$fzy���vD��t_�	?U?A�m�ݿ��w,�g]�|߯�����&jv%�M[�p3��f�	5l;sR'ΊJ���g����7���?��o={�2��e�t8�d[c�&f�e�٥@)rTV��>�սNѭ�P�6[V�N�'����^#��F��97ؘ�YƐ�	��&�/9/;z�z̱��I��n��pXd�D����W��WcH�����9���k��@K��r��W�8����&�l�+�H�۷Ʉ�gF"/U����u(�a�����%�������1.[� e���Iĸ�M6u�mc��#��,5!�1>+%>f�;}J�ďR�Zp�M`�i^�S���i��\�TE�4뵖C�y�v�����z>#�҇���/��ZTf��/PZ�O�E:AZ�&��m>��h��T8k�ʕne��kE��}���l�f�X.���L���H�*k��A�$~߹82	��庡91}V���m�k�g&����X���'B�ƌ���bd�k�9����D���wܯF�.�t��5�tS�9��}���.��M>��!�6�{EEٙ��q��ɒ�w�lV�����հ	�H�8�z���{*`�or��W{��J�	��O�0=�0hW��&i,.�5����훤��8d4�����Z`�/S<�ab���w &r�gA	�X� � ^����/� `]Q�c���P��61eY��T��R��u�
��:���*�Id�h/Xۿ#�F���RuJ^�bjD�U�$`�G�L�W3��O&�|ڮ�[���R�Y3��nR.����пP.��R�&�w���W��]�]��uC㲕6�hW�����@*T�F�X���lF{@#(�M"rrU��i�Xf�j��t�E"Z�Lp�I���<KFb��+�JQ>�;t�����
�2�g .qs}w�ۿ�}��8<��F���X�`�bݔd�6���v�v0U�&s�_��=�E������;�e=��G�� ��y5�*�^=T�0";'`�)R?'Ub}��L��"i9��È�j0�Gfɗ�h� �CN�����gt{!��'u骬�E�'�Z�[Y���x��.�A��N�$�ՎnQ[S+a������zd�U&��Lé�*��Q./�	\�%k��V&]�����.���D:0��d��`����Ajn ��|!���Z�$��D���F��8 ��O�ɴ;�������D��&�1�D0bYj��r	E��Ɔ���2q���}`̌vFj��ۀ�|HY��]�j��� 3g��?Px�1�)<�,�FQ�o'3z��d|y@�H��e�B������Uý�y�@�W2g�{���O=cf̲C�B�-ǔ,T%`� p�
Z�M%gmd'�Q�a��N�1� L��o�~Z�d.�Еnm�4,��+)s>E�zc&�m�Z�]���B8�]k�]R��2�'��'�˕�
��q�|��!�~�y�ãc�f��{� �\�K�b'"�� ��:���fS��5^�
��+���g���3$�ƶ��P��\f�����৬О�F9�M���4���n���i���"�^�$�%#�c��a �$*�A�b���yҳm�(~E]U�:>���E�������!�J�2���W
:&�j�nv��j����`�f���Xdw��[
 :l�v��9K�&�U��[A�Y��`��9?�[�c����*��*.��5�Ӎ���hp��d�Rkl�:����6?+�    G�6QK+�"Z��w��Q�Ga_G���Y�C��S2C�-u$�j24���,���Cf���KOy�ߡ��Z���B�aL��:���P��T��ܤ�Qj����g[0�,YbՉ�ޮ�Lx !@η�2+��9�d9/�������$�E�߶=����;3c�x��t7�xɝ[��\���.����c�1Wx�/�;���s�2�[�$̟WK/���MZFI:Ϯ{Ť
;�2���GkV`��7,Øu�ޡ��a@�0��zh��|�s�>��"�'t�"H�6v��\�[IW�C$�!�Z��B��0@�h�h̚�cLYD*c�',��}�~g�A�.��M��"�F�G�.�o����D��#�;h����D6�>��.n�W�z8��mԟul�m�U��yZ�.���-�!���ZIyb��QL��~�B8�)�KR([@����aJL���;k1��T?׈�1C�`D��
�vff��*81��Q^V����4dڼ����2;{��|����1�6+ S�@/i���Q=���� 1��s����K|�aw�M�0~��mP�|�"Y10ZD?���g��
Y�JԿ�t�����T�ŧC&A������,�O-�&/m*x鏴�%B&��A?}*;)h�5��E���2��%ۘ�9T��̴���8ż�!�����Vi���7��g����1� �� Hw��hP�mF8djt�n�S��k����:]u�5c�6j�]Z��`�0 ˼�����g)[��I�*�|�R���P$pg�]��YcF����������RX����ft|7����)�1��M�� B
Cm7^���Z��,C�/b��hq����J��`�8�y6�뭫f�K!'�Na�vo8�渓���Ӭ��úBb����zI�S��d��e�0C�1��R
#EJ$F��]�p��W���Bp!�&ى�+L@�����r�w�`(ȍ�����H�A��@��w7:8������Fw�'�I�Ѱ��l�-ll����Dc�E��"�B�^�U[��Z��1k8�^�ƙ�Y��sM6�"��f=���j����?���,�X먻A�-��N��%�gi���<{Ǩ��+Ğ�T� �ߖ�DڔV�U��SG�1d1ؼb��.8����Pיw�v���H�����P��A��_��|Q����`N�V��v}L+lmPm�i#��W�r���I���J�x�tԙV�H�b��&U�9��$��]Ð�i����r喎�X8�A"y6��~{��o�צ��l�դٰ�D W�94�R� ~����1-��fH�=�L7]/҂�;�0�:L;�F4y�.�@�<	B������������L鬉�5+�F�F��fN�x"�F4YosL�~Y`���8rI�N���]9������WV�}�1!?�n�Ziw����hw'�m�J<E�#{w��I��|H�O"t� �X+u�q��N�Ze�:?&��
�Ԍ3�{���x˱��)�Քu�	��n�;E=iT��ݙ�c�x�18VG�V��?��������/���U�$Yw�H8�T�=�W3'��\����N���Z�+�x���-�DQ�(��~3����&���/X�)vay�Q��jߑ!&U���0����ag�Z:l"��\�h�2��/�����$"����&�����[e��ޓ�n8�0v�G Z"��ΫwUM��1����,�xi	6���(6�Ǧ����i@08�)U�&#�1�vb|�t���
Q���!aS��͂Ħ�i\9�?�.�j�"_g��]9|��X�/-0���ΧL�5�)¨�5?��	;,L��
p�=k;7C��3)���^�zD���B����0d׎�J�\����=#��Q��dt~yq������`$�M$S8XA�K=�C�g3R|��w���y���b�c��=�)�X:C�)�1�Z�ɖ�9-�H���h��:8��pu�$I֠ �6K>G ���}elR�H�"�݉��^젦("��B�A2�H��'����4[�5����0�o�i[2�S�*�`���y-�f��2�)&�ZbQ�wқ�g=��a�Nj�f�6�ʸ���<4����\�XWR�ԩ1k%]ߌ�1T9�����������ޤ�l�����'t�aR�9�& bu��*���x%Z�E)�&�6F9�o�	7ca0�~|�@'�eS����7&i���1�X��hύԖ�@�Ly�F��{�DB�`�� ���e�yj�^A�W�Fu��EV�ciq HQK<�;��P�1�Q��s,X�G�A]���c"�����k=��c]��]��z4�����;����xjΥ�ݸ+T���G �K��V��==�K(�/�Xu�9��B��{�����q�k|��Dkۆ�p�y�V��4�1C�����l.ߤN�l��8���,+���JЉ�Jܙ����1͊�cHibѺB{	�"�"u,Q�ab���&_7�4�ƾ8)ĺ�H�>!�X�:H@"�)��"Y8��qз��_:"�OA��%�Oi��+��]�6�~J)������s/ �7#��{��v~_��2	O�����-T:�(U�u`q�Q�;��g����zT��ϐ���[�G��@^��C����M�aR����I�����c��j(VD���J��F7�����~�Me:lE퓦��8<��.��8���3XV��ףHo��Z�֕?8��N�G������Y���pwy!�A��?���KZ�0q(�.;��c^�\�scUCퟗ�����Qͳ�Dצ싉E�E��|���f/f��)��˞�5��3� D��W�p�oȷ�NG⨘Y}�S'����Vu"��|���;��Q��h1d'��0�>�읜�>��/o�VN.���Ee/7:�S���κ�i �׮}MC��~1��k�5î��pE$�޵C�:~D�Xx7:_�5��aK}G�&�,���hw���-ɰ�D}h)��"��IC<�e����.l�'�4tƀ��.�a�c�^�.:	~��:\�|��(�>��+b͢�3æ�%j[}�\��y�Y�/���@�m���yz�0��Ρ��Vl?q�17�����.[��a#.ߨ:H����o�9v�4Y��^����K�8 #���Yg�����EZQ�b���h��r�B��mш�.�N����'q�fV~U���#���Ỏ˶�b�r1�3�@j�y��I�6\u�Lg�(tm�l� f��ͯb��U��H=;�}X
A�w�ޏD/&��q|q����ʖ����
�g���&����5�ec����"{�оj1�i�����y����^�(�ۉ��h��+�����rg��VNfP�"4���՜Ѻ1ǪR'f8r�`ca��Y(���ꘈ��r���:-V��Z7c�~N��XN�0#;�m(��1�\���w�5���4��f�6h@���0_�G�}Yl���V�\�0�~E_��'�d���{�Z��N�8����~�&�w�x�2�뜙+ �<��KV�d�N�r� �g��ݛ;z�L"�7Z�3�U�c�Tsy_}�e�e�*S{^�D�0+���f��������F�U���t�����w��.�Z��C�����૱dp�S����\����r0>UR�eʼ�w�F�X�1��
֩�A킯�[��d��u�ȹ+����!�� ��A�Q���3�v�����m����3Ussf��3:�3��	�.�諍�uu��t�\ �]��'q�Z���:_���]V�'=�4��%�O.���U�����T]��w� 4K1��g~/clw��c��bh��I0��f(�o@�5��~�YY���[s�X�b�g���d~Mpɣ���t2>S�27&,����j��o��C�x���pYm�e�E��u&�N&�ڪ,��/�(fxx�;8�a��.T+@���CQz,��b|�4K��fn�qn���tt��>�W��a}?F�g،P,�c�y�����>����1x�i��d�mV��!Gg�    <Lf_�d�.��4�����ꇘi�.���y�M�҄<���-���Gk���9,-������h7�\�x"�~�p�ݾ֑��yv��9-�ϳJ	R�����v<���M�M��)y����/a���(<�BE�vs�A��h��5��w�\�tqQ&_v�P.ϷP��C�337 ��]ɟ��ի���C�D�
�J�Yŋ�'v_�OU�b���^��F���5�u+]�p�w��r6�J���������&<XGD�a��CNؙ]yHD�YaT�wyBD'�Ў.���1y��S�
�eVu�\�Z�f�/��h_�P�y�m�� ]���
�(A����8���,��`@ "���$�ɼ5C6Ƕ+�=���	�g�Z��W�@�ѳJc0Y�!�Xu?�3>��J�"l�<��4��g)'��&�X9#&�����������F���<y6j}�߿.R{�=�^J���ib.O �u����>�v1�,y: �K"�ҬW�l����4��������^d�C�[�jVu����&x<n����T��I����H���Ċ��ڒd�a7B�E���S�[�El�!9@���@@�����b?b-ۓ��'ג �Ⱦ:z��.��:����X��a1'�^�'3n�h�0����:����E�lq�H��c��:��4��>k� m�o��Vk�N8.7P�],���5Uk���������[WEm;n\�p��۬Ri��5wYG�r�$HhK�qBh����wq9��������������q0�0��؛�����F"�1g�����1��^�}�.o�ߍ%D�yodLc!sb��j�<�+u�(L���-u��^}�8"�^X�����i*��|<���)<�oyԓ�G�r7vO�=p������V��f��&�7_�~�`������ qI#�	㊺�*h��k�s]���UwYk�9��<�q*��ˏ_e߿�;A���e%�M_�2��:���amfmmX�#��}k=+5Gb�8艮��v���$��.�&7v��pؑ�'��u��R#8ˁk�OK�%Y�[z�X/�VԻ��/�Q����X�[��*}yi��"Y���ja������1V����3Pu H�=�V��v��_)���l��'��.��aI�j3��>�.W��5�XTi���_(γ��R�	�,��SJ^�����sY���yY�2��E=�E��=:�(�NYw}bV���*���S4_��]��>b�k�j�"
pV���[N���-+�d��81����9sաU�~����ā���գj���,�}����Ī���}9������0̱�$y�r��5���H��E��^Y��~1z�����q����EsY�۲I��A2
�e9���g��(��}���Q~�Q�Zʹ:RH��E�$�b��������&�����uٔ<{��V� �e��e����������\օ���=tT��R���c�9� ��p��t�4����˦��%���h��n���("d\�l�-`&R�G���O�́���8�gvew��	�a>D~����q��	>��%�e�^s�r/.���3�=YC3�G4ed]�ߕ�=Ȋ"y2�)+画��NN�@.���R�N�YR@R״��,_�qD�e`ۋˏ*�nru|y};���9ȧ����͊m�ci��Eɲ��>�XB,n;��\����q���2ψˈد�~��H~�z-���b?����k{�>4c�JQca͙�������ub-��W���X�_�=��v�ˢ���� ׋��$���4�\A�aC\%�*�ZG��.�{9TZ]�Y�ꙭO�ϗULѪσ�9��e�R�R�J� ���we1M��%\�)��ȐZ݋;@��jU�3_�9��8��uG��9Ë}@ߺ���oX*�E�j�9��
a���<�>�u}	X�Q��,�N���
��c��j�DE9E�4�s�2�7B�|�+%�HA)�Y5Ѩ)-���X>���B�U���&/n�dU�&�n�&p��˭�y�4�8���q�e�GC���c�ZV	�4�pW�CY�pד�������u��[M�a8:���naƳ>�ږD<T�+��~źt�TD~\/�Ӎ�p��A
��-��Qә{�*�#�K�c����E���5�Ͷ�X��5�v�!6����'*O� �����k���LF��h�3�_�	<։�M�2J��Sy��_��q`'��6<����u���zs�Gӧlڒ/�Ra]9։_7�m��`	�q��X�M�e��b��Ucb�ga��2,n��${��Л��)l��B/�,�U�n���u��q��Be]GF6+�:HB�6�
����U��i V�_��̮�Uw�\X̬�X�6��,vQ�s#�h�6��T�_Z�Y�>�LWx<�*�:�'�1�&�=4�d�.��S��(j�c'om*�&��e�)�/y.QkCZ�	#G�Y�V!����eΠǙ���� i`5�R�P�d������R��5B(]��1�i7q��Q	]3�,����|���& +d.���j7.�Ό渭�_:N���)��D;���:7s�Z;��������(�������T=e�����7:�nN�}=�-��Hg�o�G�����lKs�X�XA�
���#� NQǂ�gF�{�`��a�@�)`ܒ,����v_uB��0��r-ւ�ξ��U�e��(���]�0̲$�uY.z�`��F�5˽|L��ή��s�,��ny��q�H��<yl��0��I��'5��:J�2�Y��aT�#��D��JliC
�E���3�k�k >֧�U���"�P]@�D������_�c�!��R�����.n��u��u�,��]"F.�˲�ͯU]��OuY}�(\�Ř�̘�a;��"���8"_���H�沆�?6I��6_��v�-a���N����Փfw�GU[��L�~(�Y���	�M�`׳�m[�������t����m�a.��k��νDn}Yt�%f�SL�^��g�	R�@p�l����ߤ��E�j�U�4�^25��0�H�ҁ!N���:�C�q0��~ ����$�a-��*�Ҧ�Ix`��HՌbE�닱�f61������6'H����4_�������dn$8�
c�I-C'Sm'%�& ��b�>��
?��S��D��	���x����x@���`�2w���|QlC����"�.3Q/x����h�<��]�H�[d�i��M2�r���ir�(��'+1�K#���ޭy�Y/�V����[f����yLnU��W�gS�	�Q�xG|1B�����rrE�Ps�C3L1��+�@'�$rgf�=w2M����r�1��Vpo���j&�n��J%�.,���̳5<�Li�A[��N_3��j�2R\&��� \2��!4-@���\2�u3��Ie��-H�ų�6�{��R��b���t�+I�P�i�C�D[����F��'�����X[��"*\�� �H�������+�n�P����H�	\e"T}������ɡVuup�]� q�<���o� t�Q��������F�]&Ф#���x�OGo���� ?yt56�H�.��AZ�̂2JF�6�45���V�5)��V�e��1���/H'�xtp�j'�D�a\D�(q��&�E�*d�j�V��i-��1[H�@?(��
Q�1cH��T��eW�؉�u}6{��l�����~V/X�YD���"�sd�أ�X�E�ݫ��Y:S���C��.��_�u��'��mG�ȱ���et���"K�S�x�A�;�Hea�S���J��d�N���B�]g	t*�"���5��=櫴ù������#����A(�R�h�;T�U�E�b��v'@g���������UV�%t��o��^��_3Al�ʀ�V���N7�6�bn��u��	����BmQ_�t�2�պ<��'c��Agz�+�Q�vJ�	��r.[���a3JL�D��0�=�m�RY-�=�ۆ��w����?fE����x��p����������ݬ�M�QX8g㏗׺ ���d$l0��   ���J����sY=���u&�m�0͚$��Rt]�w�����U�$��Ň.�NA�w+u�7�9Z'�v�x�s]��.t�F�'<f�*��6U�K���LT�
"�b�([���u�v��u&��f��g=o@@)M��u�-�0RP�<F#YBV�$o �+#j�05����N���~P~�@��Hĺl�U�ƜǰQ��1�W<}Zr�!w��M��<"�T���CGY1�<�fE�87o����/Xw��w]xW<
Ba|:y�=hɺ�8���=B~����x�]K_{�u����Kq��X�y���f��� ��#�J}k�z�Qֵa�X���{���M��oH<�T)��G�|�HT��!1M�n��v#�&b�I��c�9-�E;�������؅��9K��xd�4z/go�pb�)T�f.
�L�Y���YѠU��cp�~��������2�	gh� ��/���5`��Ik��]|uZ^�n�j�:�X��Pi�(Ɯ�
-���]�aH���݀{3į5�#�*�w_�g�U]Â����cl��r)H����H���:�ṣ� �E8��I��Ƶ{����H�Mc'��G�{�P@�����p�i}���x]%��$È�1��(�~�}<N-]V���{�q�gP���v���_yi�oM��"��>%����kZ�r��x�s(�4Wx{����0�
Ci
�z�E�twB��8����l�	Xl%-Jm�R�"oC��z<a�Z�����mK:�0��c敳�wvyy*�a4��	!6�\D�kIꉋ�&wV�TSnaj�C����A�M��1�?岦����bj���<��h0�P�V��Hp�`�Y��i�����t`d�(b�1B�MVm1�gs�>~�ut-I���lt���A���X�b&�`���`HȮW_�Z�����B��,�g&�{���Yq�♌�����y�b�3���G��oY�3���=3,�z]�?1���Q�wɶ�Ov�+Ϻ���=�4Жc<��������_v            x�e|�n�Z��8z
�@7�;9ܲhKMJ2Hр�o����c$'9p�r^ o�Q�����Lz�39���UJ�70.�R�/��j�f�*}�?�WwCׇ��$Q�����$�I��Va=�����n;���	���6a�K
���k��z��ͤ����ǯ|E4U�������ߗ�(RdW����"�m=�b~����}��l�_�?z���w�6l[< ��5�\. Cdb7�����!�$�o�k<o�䋰�2a�.ٷ��[;�L��]�yx�>�M��a64�8�S6�.L�xV�r�'��:�wwh�n9�M�Yhq���-1�M��n�kycBqo/�����IB1q���@BQga���\�N_��U؆I):����IJ���[�!�n�M��W��TлN�z�LRj�l�A��*�[����v�}��C��� �j��C}WOR��AT뱙dT����q��,lh=b �0$2*0{��6z��u��-���j�͇����$����_S��~�6��;�M2�k��7���Z�U��a�.e*e����������WW��dԮ^Ս&�T�oo�ϥc�� ��(�S��������&9�Z��AkŨQ�����������&y&�Z���d��ۺ��Tp3��9Nrj��g�,4n7��$/��׃�*
��V҃��cj���^�Z[�R�ͤ��6̂v"	��Ra�9�����*��r�w�J���z�7�{�K9�7T���`6�k=(Nu�v��0)�	M�ڋ���TW��z�r%5�?���r[��2����N��Ԟj�r��P)L(\i�LJ*���=JO�Bf���G��f�Cm9)�
`����)sǉ:)��|��{��p��T�1xr�j+T������D�*�Y��j��:�@��q��.���fP��zV�ᚏc�`�n����ԬA=�e*1���߮Vh�Jz���h�ʬ)6�{ǩ�"`��`�C��c���W��E���V��b������Θf2� tk{�y��ɷ�И�����m��$3-M�Z��Ѵ����"�9�Iʕo�~;���p�8������û�?qA��9����N�,�$# �"$�Ն:�����\�~�0C�+�V�T+�n X�C�L�x��
�m�l!|n�7pj��I�d�(/Nɝl���7u������z'�^�Խ�G�*!���~>�M.[�R�8I�D|uRCª�"�s�8`���z���(Tw��9�J����Q�*�fu�f�����Q�gêD�t~���ú��������/M�WtV����ab�!���2�0������ǯ���.+�mM?�8����Ǭs� �bϩW�v*W��a��T�����Itq�B7ê�
��I��lG����U.1-9�x5��Xek���A?C
�ә��4uɭ'����y�v���u�3A��xz��*�����<�O�=^tL�Wb��N`5����;���wa��� 
���a*��na) \��BA64엀�V��cH�"�\G8ՑL����˙�����'��n����������cB�p��)��p}��.I�V�K 4df���Vl�Zrѧ����ûǟ<���t)<n���{� ��h�[�ݲ�/��
PbЦǨ��05�=~��xN�}+�݊>�n���0bDrF'q�!�`�,h.���W�2Uu�hNWd5��p0�B��5I���$�nk��5���0��\!0 9�lD�5- ��^�z)e����xu�rxz}xs��1�*����^�E����fO:�$3�w�p�,r�!&Z�w�0`�ab*��%1^l��?���D��ϟid�����K]<4��ENR^�\r��{](�Ŧ�s)ѢY2b��sng�	Yiog�	�=��C;g{d.-B�;�`Zt$1�|x�����/�"��r���i2�ߑB��M
�V̜
 �_���8�n���Р��ɒ	���x�w�S�����"�Ϋ�$�.(����pI1خ�G�z��N�US�#�
���J�y��7�W����{�����?.�<�?KT-�|W��[� �2�;�x8\�^G	����]������t��<��36-���1\��0���yJ� �O#:����ߗ�G���������]�ϛ-��L+8[��7��+G`�a[�u��V��o�:��cfXv�-p��9�}�A� �Vĵ[�����N�P#65>=}��B�ԭ���yo
�V����a6�(��]kΡ���������x�>t�iHAڊ�a-�|
ʶ���_6����v� g�t�nVr���hR�VM��e�F�^��x<�B���^[Hτ� �Eƨ��yH#�x�p���\��r��q��Z���K��N��%�&1+St8�����vxwx����˞�}z!#<��S �m���rb)�YAL�"$���()83���N+��@����Z�� �J8uV�uі�c=�)k�&����[�#q5z��ҁIr!2|:����JX��ux%���q�ʐZn�ڰ�����}|���9��qz�ʀ�Бђ�������3ǞL]0��"��e�9��L܅�a/&")+F�ӱ��-��Hn�5#���ƨ�0s�N�����`��<�X<E����Y�a`h=�d-A�v����^=+"��S;���E 3�y���#��fva�kD�=s��a����I���2���)�_���h� X���������{���ذ\���K.�`M� �X����OW��o>ӗ�?�������AA�z�����$� ~+�7��k�\��R����0�)\��f���
�-=��نn670��o=s� p�tC)R�yeP���R�wm��
W疽9�������\�^1��o9%i�#>>��t�捻�B��v�|J�V��R��������d����fU+ː��3347�EW���~\J*/L�X9�!|4��V�3�Q��l�}��T]�c���r�<�V�ͭ�W�B�V�(�E�8�F��������)ǫv]Xi��V�
|����C6uM�$�`��5i��8fm�k^�J5��[�V ]%���.w���nK�6t���Y�z�cμ���b�� �	�iq��|��Ջ/C� X�C�[��FY4�d��Q�/���5��&a��R�:72/ ����iwu%��H|Y���c����� Ԭ_�'Q<�j�j#��,����bǮ	줬w��5�y��I��w��>\̭��_���!HF�/�A���f�{�@2:� ��ﱴjF�/�d#𑥁���^$��kZ�kp2r��y����"A'a�z͘��� M&d�%.�е��%�8cz)K\h�"N\�n��R��M}rA��%>~�S1vFz&r�e�,%�Zz1u�xux|:��)Ӑ��+���&����@��R����]|](��MO͍������؛n-m�MǖCз"��}��/�q6�"<���khy��	�_O���[Fn��6k��'�a[����m�
�l��+s��g򼆤�L#�DoѤ/~\�����~��{*)�R��,�H��<�����H���s�=/�:w�fI�U	7��D�W�F��'N��Û���̮��'b������n�4�If7 f���ܞ�ǟ��M��� йbh��zTn/��$:3�xbQ�Ƿ/���h�� NWh�S2zbQ#�T	:C|�(��x3�^A�@8��s=M�8_A�
���>�@����N�1���Y�n�{]6����9$DW@R0�d�� ��p���忩�a�*^ߋ��U������x&�=�r8���=s�Q��!�B.�i�ѓT8Ĉ.���S]��c�)�I���,G��ӵ�.�)zGW�[w�g&�1O�3�n+-I/^�O���g�i �D�n�{���pw��Af��O�/�9�hb��vh0usX�$=S�͝Ò*�Wߊ;
aN���E��z~�
���̠�Ї݌�5�5y��w\�%5���FK���uy�j    Ȃ�xjy���ui%�%M4@����������?޿P�5�5����@r=u[�<�A�̐��J7��z�d�����O_wpGX��Ô&�qO��G��5�aF[Z�"�� �H�XQE�у�'�4{<����[Y0�aC���0�9m��<��������o^,�崤��\/%��Ӕ��ء�T��4���m���䴤�۳Y�.VNs�w;�|�b��u3�0PiT��\*�iR�{8����;��������_(@�Z��!.W�
����䴭ʿ�^Q@��bU�fw/u?9ͪz8u�h̓ӮZֽ]Zn'�Q0��V }HO��O�1�����Y]a�:����.F^���إ�	 �҅�u�I^��p��W.7��l�t�g��ˌq$�9�D����_�er�K�q���OfK-L�P)9�b�sKɹ��#NJ|�yϚ����X��@�d:�Kk@�A��.�	*)"�˒���R������>�������pw�K���ȽA�Fȭ�;JVX���,�+�ND����:Z��u��y��e�J��A�_ � ڂ�X��O�E�"JO�ݰ ��p����,��0��i���ş�E�r�"r��� �X�P��o�^���l{��"�Y�8P.��؍!]�2AK�މ9(X'��m�؂U���ej�5�1��=�a��y~�`Ѡe��Ff+�q��{X �,�W��Z �ׂ،)�"q%+uD# o�ׁ�S��>����)@�����V�KAS���4�����V����V8Tw�1�R�29M�?�2����,����ĸ6G�C�7�Y�MRW��f��3��+�=��2[�X�ܵ@�w+��������5X��4��L��vG�r����Ȧ#��&saep�4gݣ�:<<=~����Eo�
R��?���,~�4�]��RG����l���Q�%��P��0�k�O8�X�hŬ�����Po.;���G� ��
OM��k}����~[ߓ2��e�B.A��X,�(�|���+
�5����/+K����X��Fu�W0�(Xڨy��k)���@zYlF�u�c������V6f.⊽��emc��vX�*7@�>�+���٘µ�:�h)�Q�Eo����`�DrE�z�h�▮�<��������Q���Ԛ����N-�;& 
V5���C�4`���F(�`����`����;<�����m:�P ���,XŨ`��,k,X�h�<��aX��i�Y�)X�XX[�,U�|�W�' �p�=g������ �d������8R%�O�$b� �jW۸)Y��0�3q������D+��U���Ю��#�ƛ�~	lԂ�����3=����qKgK+��ȕ`$�f�k "ը�+`�_��ա:��x��>6�7�_L�����������Ϗ_\�ٵ��&5��tsӶK�=��K����K�zyF�@*C��X�T�����-���m�,͏��ak.R�����w=+wc�I��R9S�.<F#mg�'1��R�.w��k
�R�6��]lx~� �ue�rϘ��y^&.9�3�͐��3�/����M����E�~L\l���-I��X�B϶$= ��%i٪B:H˞���s?�%g�8[��i	BVT*��d:6l�5y�y"��
l~��W�H
zE<�� ]���cWAIŋ*��b��̏(�B�N��7LJȖ�;�%�2�f���y���\����]�~�C"K�Lp� i�0�i�K0���e�E+�0��+
8�� ����� f��]�̜��z��q�N	rVl�t�K0��a�:��� /W�~�?73 ,Z���l�й���"|��#�V�Bμ4���r��2��g�,���<���딠cC���\�,gݲgT��3�}�,��!4�M"��ݗD���-"���p1�ញ�,���l�7Vjm	
�� ��ع�`�,%�Vp��;L���̓,��,���9�bfJ��/�lf�K�pfE�w�7oo.G)x9�����9��������.�λF���iÝ̖�i�W��a0��D���[+��$�6�O�Wg�_��]���U�Լ�&WB� �]f]��XM]l�lT����N�@l�ާNbv���9Ҟ�����U^�[X���mS��X:��E�E����ә��nNKŀgX��*��bK�d'�Y���&K��q�E�*X�U �L��t�����R)��@2C��24a�Ud�m Nq!+Pnf?��{�+�nf��嵀*io��h� h,�^�͌����.�
��9�����`���$� �㭪f���]�.�T���{��Zj����y��ӱ�f��A\5ie��t��k+�-�W��a�`*P�b�%l5�f+PovN��W�=l��U��2pmt��+Ʋ4��T`��IR6�X����]��s�;�Iǭ+���#�+G��yl�k!%�7?'�
ěO~����z���x�X7���<Hw�V�`87��n*���
��R'(gR�s��U�!h7����5���
��G��(`#����5s=\���wk��- W�fuݎw��UFD�:H����\���p�*��o�����7^�����t�E��*���р�~G�6t+�9����m��a�����jw��o������/��\&�?����EĊ;s45��=�I��9�\�Ws�J�2���=:����$�d�s.��|������
\�{���NM�:���^v�T �<�xSf �{Z���윗*�tn��wV�`U+�1����Y�O+PӼ�CY���i���K��^+Y���u`�ܨ��w�*un���˕���&yuf����
����Hh���E�J���w������{_��&8:������
����*p��2q��9X�-@ъ��qV`��BaftѰU+���3*p��3G�&��4����t:���Yl��[���������k��1V�\p͜;�����q �����<�U�B`.=���@Թ��,8ieg�t���Z�&[� ���)Z0b�a,*A���������=̎���8� ��^/�Z$*��Z�����
P }��� o��E+·08~���������m���A�ĠQDp�"�3C��Cd'��*��U+*R%� ,GP3��*�V��@ L^L/�V��+ _3�R7���ɫB)�_$��G��
��>��)]Ѻ=a�_9�Z�%�~x���߯��{QډkJ���f�<轰��d�)^���=��(�DbC�_v�N��
�$���p�w�
���~���݈��"��*-NÍ���uK����fW�n�5�h��&��L%��������u����X�V��_x��~~6������I]!��0��$07p��bKp=X��Ұ��0�������������V���p�6�]��f$r&�*H쩛k��B#�a=��E`n ���a^�d/�/h����+<��28,V���{���m��݊y��V���<��\Jx��ı�k+ #�k�����V�gl�bT���+�:huR���=�f�jz����k ��W/����H�8�gצ�×��:A����Hk@����ѭ��
���"�K .�铽�*���3� |{5K�#������{���{��ۤ�U2
gMZ�
�U�Q_��W�T�jT`-[X�@|ud�>�e�����<���k懷�w�~@�[���.y����'�hmb�a��� �d��q˿��*֝;��w��z����U��]��Jm��7�z"��������Z*�yw�*��[-���mY{	���m��M�(Ɯ��~Whj(L���Q���b,-��8j7������.���\!y��X������>>=��䢳"�Ř�_�K#�r�6E�N�c�%�I=���(�^c��70����G�ƭ��� [)KӔ2���R���c�/J\�w�wD\���c4��\��-�dDz��i�U�VI\	�d�%�(��V�(qn¶g�%.:�� 7  �W��%}�����dÌ�dd�F���j&���o�4���"2��`�2�������}K��u�`n�Up)^��e��˖I	�WpQ���Xe���;��Pݩ۳�@�养�������<����z��c���Л�-�F��F9���N��1b��g�g����`PG��Βs?�� �,�7"~uC!ڋ/�}�al
py����?�Q�U;���������{�@i�������VEV���?�Q�ŵ�n�Hk����3vD���0/���L@���5Y������m��g.=�Iq�G�� ��O_��*����i7DJC$i�͏�Y^���:�"����b�a�|E�PZ�ΰ�yb�3�p������?���\�������GfY����Bf��/����� w ���~���1
O�L.%/!�o�T��0Y����P��^���-�[f8�2w�:�����e�-�Y$�� Si�/�By^]�AiAa��p��R!�҅����P��`E:f�������7%6B��5��Y\���*�vE)����rC0�ZI˳Gk�`���+�Y3�cr���^�
,2l��b0�e#�m�����K�J~�����1�G�� ��=�X�W��uZ��
�$o�/�,� *��������rj�;-�Ȑ�`P*�A��	[��_Z"e�1C�/ݑY���������Kͯ�U�	�RD�g_~�@�/���G�����_�� {Q��L:9�1X�� ����E�W���W�� }�Fג�d'����X>�Q7R��8Ɇ�\mP��"���x@`W$HNB�2 �P
�߿�秷/?�"�@��B v��41�V�t�!P�+��p�!�7PZ��5+Ӝ��j˅`��Js�AG(��4K��!P�b5cpk5.�s��Y+[d����E̓q���$����cINXS=pb�Ej�G�1XQ�Z?� �s�ws[���G����Ę��R�#��d��X�n���1`�a��Ÿ���M"~!'U�H�m�p���&~
#�����g�X��p��>fx:�ҏ!�O_C*�1�3K�{�������n����nŁ�6W��X�n[���~�h���?��(M��� uEn\�#1�7ܲq_-��I�~U��zz|��q�-��dA�\�򙪩T��nB=�>��5�L������π���az*��z}�V�W�֍|Kѿ���Hˇ�6=�(�A����G1�+u~�|^�⋋�?s������z�0��U�YmqE���D��`Yw���F��X>��7��X�/������_'����z"�            x�}}ˮ%�q�x�+���.*#�ÖH˄(� i�J��c�a4�l
d�e�g��?�9V�+3V�&l���UY�+�)������ͻ{����x>��ÿ!?�<d�M}%��G�rQ�juw	��<��4��˸��$�\�?R�7�)��^����ۿF��A��Ǐ?�yg��p|���{%�6���_������/�����`����[�_Qd'��;͂H:I7W�(�C"6�ØH}(������z��z����zԿ�Sy:I7�D���v����+�I���C�X9]��/?$x�r���=D_�������j�h7�>#y�z�n��0M|��]|M�ύp'��ҷ�_I���ӷs�h�$]\]���z�h7_zD?v=_���<�6?�דts�G�#��E��>�#�!�7��M�r��E8U�B��"�*/H�"�*-J[������2E?�A���"��t=H���%��\�Wc�5.y=�d�WQ�/4���{L�#���H��D:��*���J�#�`�H?�D:ҏ!��t�'�8�Ev��t�E8�IG:�3�Hgl&��̤#���t�S.��tveґN�L:�9�IG:=2�HgB&��3�H��IG��L:R�eґ*(��T�t�ÞIG:t���IG:n�t�CTHG:�t��ґ�XHG*N!�ґ�d!��ґ>����)�t�7,�#�m��1��:��H�$�RRQ�HI�_�<)z����"�*��Ƌ8p�G%%��\II�?WR�nЕ��;t%%�]II�GWR��ҕ���QII-^āS%�I��J:�=���tW������Z��7gW�h�{����lҦ��F�T��HG
�H�B#)bh�#��t���y��Ѽ�DAC�:��H44�#Q�м�DAC�:��H44�#Q�м�DAC�:��H`y���N�����u$
�ב(h�^G���{����u$
�ב(h�#�t�����4tґ��N:R��IG
:�HAC')h�#�t�����4tґ��N:�A3�ƛ:�b<HMjIO`IQVISLIUBIW8IY.I[$I]I_IaIc�He�Hg�Hi�Hk�Hm�Ho `�7�Hm�U��Hm�K��lHm�A���Hm�7��,Hm�-���Hm�#���Hm���HHmX�"}X����V2Gk���u�K��@����'�R�m)��ɸ���Ź6">U29#>J�9#>?��#>42E#>)�E#>2F#>�F#>�H��O�ī3׹�"&(٨S��ԈIGVj��"35b"&��\/�Ȭ2���L"[5�wtإ#3\Ey��x���E�!)N2Z#|:d�F�p�l��d�F|(d�F|(��91�E�U2I#�?٤��҈�KViČ$�4b�]1��0��<d�FL2M#�٦�'�4B�d�F������}�2P#6�P#�C&j��F�q2R#Ɩ�ԈQ$35b��N�����������Јw%4���x>٠{K!]��d�F<��Ј{��k�C#�����}A!3�8%�5¼$�5$k4�l$s4�D${4�$�4��#;3��#�2¤#�1�|#[1�T��+a��	a��ͳ�dd�EVd�EQd�ELd�EGd�EBd�E=d�E���"�s����#�̹P��n#+D��LA�[� �-S���)�|K�d�%�
2�@Yp	��L�PA6\� #.T�� *ȌK d�%�
2��3Yr	 �L��A�\� c.m�5��6ȜK@d�%�2��YtI���W��E�ykYtI���E�0қ��:�懐E�iYt	H��;Im]!;/I��7o�l��n���H�1�ԁ��6c��/d#m*���R�l���o�ͫ�C(��~zIᇐ��~zIᇐ��R��/◤M�B�^R�!d�%�B�^ʐ����Mx!�QY2��d�%�̒�,6Kz���������D(4�,�K�PP"
N
J���IA�P88)(
'��.������pRP"N��ԛ�B6�E7u��l��
�h��uD�),��&�4!�Mf{B�;�ׂ�w$!�IC}���P��B!�?!RN�B��,��h9Y��`	�d#��~So��Ho=�ԁ������q��wP��O��ԁ�
�����;�P�8�B�x�]L�Ϻ_	��Yw&��q��F(x�7��G=o���͏z��Mx!����z��濡�����-�tS^�����t$�۳.�Bv{�����gY��S� J�xF�������#g��'�J��\āe��.�����#��E�˒ɀ"�zN���JT6ϙ.���?�@!ŏ'@H��	R�x�?J@ F�� ��Q�(~� ?���1����4�rN��3��;����~4�:�M�������1�~�qT?� 8�M�����F��	�Q�hlT?�5��s���9 �������3pF�#�Q��C�Տ<@�7�30F�#���<�h~`?��ŏ<�������xAv}� �>^�]�/Ȯπd�g���3��i3�j3�E��� k?]��w>0�ld�g��Y�/�,πd�g�2�3����R�h|-ُ�����xAfy� �<^�Y�/�,πd��2�����������á��?2� � /� $� ���@2�� � /�$S� �L���"��]B��/d�*!�ԁ�Aad�q�d�`2����֫"�"�*��E�E$3�(��>��(��>����p.�0"�E!F���/�͉dh2��b�H&v����,%Ƌ8pB*�V�7u��\�ߵ^āR�!�[�J�n��)\�Q����>^ā��~TS����$�s֋8p�L�<g��7�B�(~�j�ā�/��	����|NH�g�q�D
���/�ͩP#z_jD��B����N}N�(��W�qN�(��W�qNHD�T�7�歐�f~7u��T~')5�ԁr�JU�Mx!}'��ԁWe#ú(ވdX���u�_Z����F�uQ�ɰ.
8"�EG$ú(ވdX���� ���z�v�Fz��������Mx!�dX��a]Pe@�uA�%h��]]��HvuE���ժ�ު�P5	���+���+���+���+���+���+���+���+���+���+���+���+����o���*�Fġ&�mx۽mx۽mx۽lx۽kx۽kx۽k�!$#g=��J��
�Q�*Z�4��_4��_�3J��"��ȏ<`F�#��=(�{*P��T��� �#P�1�G�cT�#`��u��}��*0��T`�;���wP�1��cx�cx�cx�cx�cx�cx�cx�cx�c4?J�͏0Y� �,�
�Ay� ��g�E^4�"�@d�W@��+��+���X��X��X��X��X�l�
�A�
�A�~� ��k�M_�5Ȧ��d�W`��+���X�l�
�A6}�~�(�����
�H��d�W`��?��e>�7�rS^Tő*t`��g���I8�#m~���Ld�WE���o�6_��$�e�r���buOT��@n���gE��GM�(���o�|Mq�J�fm�Bɗ�6}�D�iCn��N
���P��k
�q�P�H��f����}��?}��Q�U���P�xDGg���Ƣ�[n��l(9�fV��
�D���j�I�PsH�SC�a�*�g��[���i��D6N���[���W���������'�P�Y��@�����)y	��)y��-S�jэ>e��������C���OI���*Bf�I�pv�G%�j���k�([�o�?M���tOTW�tO����9�R0�>(yWu���_K���-��S����N�O}t�����<�h��'ں�n�6��[x���U���U�M���
��C�����>��o��[����[�Ex�#�~�t��bn��gr17��3��[C�1z�7u�M�L�W�-<���5�F�h�����4��M�y;d��y�h��.7u�D#u�R    �*:��i�u2eJ�j:m2�b5� �wQ�
�<�]���Q��L~⮊��'L�߾��:�B6����ԁ����[��/d��a��7��b����㕩#Gבɴww�L�X]��L�X=�
�F=ԛ:�Ae����dJ�����{}�@4^�h4�Ѻ�A:��D����3�Ku4g�>ގ-gtAy��|��0{D��~�EG��(::����eAl�5/Ҏ;z��hZ@�Ԏ��K�h[@��n}�iָ��:�/��u�R;z�/��y�R;��״�}yX;��/����R;:4�ha@�Ԟ!)(C6������l~2*��3u��0SW��ɋ�nd�Wv�������Z�%H0E�܊]!G�����#{x�9���rx�VWđ	�u�q&$�qd��pd�g]G�~�^��z" a,�b�Xx_Z��"�\A�&��Zt�
���Tm�+*����>��Vx?Y��.�P�_���M:0������O:0E�bR4����4���p�t�	�;���:��G�ƒ=��?��D��B�ֿT/=3\���*Dg�J�+QU�ވ
1�kĦ�iD���x}Y���Й��C��-�=ʣl$����1Jm����R��xwL�P��'�R!�8u��~�������~Y����������y�V�"̪�t���^�0I ����m
�ObP�
"QUX��	����?JUa��G�*��8P*��A����	JEܜ����'TDK�\A���H���@%�{�T�d>D�T4���)[»ubF��#��]A�ꊲ)(��d~���RU�H����GzJU��H�*��zJU	}u�RUB�=R�J��Ga��F49���8�y��RU�D"��Q"���(���l�MJUἻI��DFs���aӍ�p��M���A�Rѳ�F�|6�RU8�9�T�[sm���õ�W|��RU�LB�v\��֦r��Y�nɅ�dm�\6U�
��Rі�lhKE:�-��Z�{p�HJ�*�xJU�|�2l�nN��6\LMD���Fm�[T�
���RU8^�:�n�p]�H8݅�t�t.O�U<�
��:_����4/:��z���������ś���=X
�����V�U
a+4Q)d��K)�h�R]�J!f@ÓB>̀�&��:*rb�T����U�fB[�¸�+C)�V�>��A��=fz~TBX�X7�z�`���#��b%��v&� Z�TCK�#O�����;M]*�!�o���g��A�J�]R*4D�>�к�ڌ�;^�P��~�~���7%G�t�}6d@��3ڄ���=��(X@����n\� :Tr�4��S��~kݽ*� t���
h�Q��+�%G54U7�	3�T�x�-�#Q��:��.�WUMh�Q	4�F5�4!L�p�H�04���0�T��A����-#+�&N��D7�J�뢁+�'�������"�)k�Hh�:(����I՚(��]�.����6�$��Q\�tS$�d��K*X?E��P���uT$�d-�_��Rр�DT�|Z@��J�	�*�&�T����=�jB��J�	*7�D�J�	m*�&44��л��ԭ`]
�JK�IP}W@��J�
**���7GG̲���N�j���zoU@%����ږ�#��k[��(ǯm9kQ}_�r�B�}mkAuC���PE_�[�PD_�[QC_�䱸n-� ���P!_�[�Z�J�*T���p����7��.��}=�}�o`rj�2�����nOm#}G�>%�#z��Ⱥ�4B](o��P���"����m����N#�����3�J�(�n��P��g�@���4O��-�mҍ��8Y��{A��$�T��x�� e��z.f��u�8j�9�P?�$xVn�М�����=��C1q��Dם�hC-f��Ⱥ14�r!I�ˣn� ʁ[\KWЀ�&�n�`�DT��Z.�e3�5�Xq-��-��L7���+�Jےיn-�'��i�-�^�A�qV7�^<3�1\Ry��W����ӳA4�\��i�P���zk����B�j#�q6�Q��l�P���zB�=4a)���O�
�]�sņ���
!	�����u�\��Z<?Z9/g ��Z]J�����d���;a���� ��Z󯯋B#C�j'�����h�P��|�*�⬵�n�ʭ�ׯ��okE�Э������n�Ծp3�:�O^���:���9~��/��~���^}��~Q��h]Q;Y�(��!� ����⋾�:Pm��z�t���@�D?��x���ۿ�?�ٍ����C�C�%4D�C'�m��7�M�q�<���咁��sP*�3PS;��u��6v��Q\�)��|�x����fD�~��?�Tt�٣�Q'#9���\d�����Rv[���������
EI�g��V*��{^rλ���c�r��K,�z^J���^g����T��/����㟞㫫�r� ����lA
z'k)转�M�a��ď���=i۝�����k@�>u}��#�������N�I���$a���g�9�Ưe��?��P�{��Ӿ��=�g�5XF�vok9�K��a@t��ݹ(�>��zR�����2�;y��Hݻ7�G��;щݻ�3+h�H��_Y������c���k�v��~�8����=*$��Q��d.�����MX[�q(������_����׵e��L�F���ڣ���}���i�z�Jv8�r��3�QW9��mX�8{9mQ{9Y&{�6mD{Z6�}�lڠ��|�:(�c�w�H���Ln�=����=�O��3����'��u��%h�����3h�R-�R>q	o��*�<Yrd�I�š�=W�,��'��3rO];�Qr&|�ϞsI���tYג��d����'����EI1T�;��Q۞��k7�H��=c��p{vb�'�XS�D��ð^y-�0��k���Sk
u|U���������bz�@+�5�:��#������?��,��}���P�`�|�H���@k��Z�- 	�y�˶�����r�z!�t�p�����w�u^�<�������/����˝M�&,���H����,��|��������Wo�?'Vy~�/ow�zs����_���=���߾�{���~~��Ǘ��?כC#Gf��R�Bd9.�G��זJ(]?X.!�,kp�s��������3b����۴dB;�D��ׄt1����9O�/@�H�����H�`I{�I��YZN:��;N�x�.��~���Oo����>�{������o^��fǜY�о)���d�r!��U���R���:��1�6�����3��,�&P��I�j��(N��	�/���I����Il@o� q9�-�~6I�������s?�`o�|5�vK^�����ZP��c���ڤ�x���򾆇�ڴ�����r�oR�`Njy�<�߾������������b����YdS�e�M�-�b�B���e;� ��dDuZ�>
��b��-��]��N���q���U�&��" ���A+�"is���O�kCȢj��- �vZ�t�����/�^�x����ug�����d���=p3
�5?��Ng��[��, �T}O�`᥹�����u\;�,^י45�[~��Ѣc�H���Ѽ�!Ͽ��;Z�xR$#�J1Ҍ1�"%�X4)��;TBo-݆������\��d@Y�$_p���l��}f{��M$Ce�{R�D
�X('�b� L�}�C����=a0��C�L\�k������:ĵ��z�@=}�W��O@�t8����c��|��E"�Z�cn�3jX�"����k��Qr�AK�Ջ҄fʭ�gm�Σ^�8N,mvZ\_�����xJ����n�$�X����ľĂ/��og�ݫ�b,g���B�?{Q`��J@�q8z��B��,��X<%Q�w�v|�_c9��뵨�N	�����ۨ�;t;����@��(ܽ�~�������7���i6�]�����$��P��`1����Y$&�m8����� ^��#���i�a����0�45Ҽ�L�2�� �	  $�3Xp�ڭf�oA,2�Wjm�\	(��u%��6��%f���9K@gܵr�v@,�ln3�M�ƫ��qm��IkSς.���pI����]�jl���刾�����s�Cp甀x�1Ý�x��3��}w'lZ�t()M�5h1�����T�`�����8��.@��;��9�
�G��4*��BLǫ��	�rϒ��N�%�]'���fGZ�հ�#vS�Ɵ�L�[������8<��;�җl�f�Q.�.��Q��o�]�*e&r�����g�����I>�w�3'��_���P6;{2� �lvR���j�+�gӎ��%9�Ԝm3�X�_��\�S뉓��k�I�k:`f^�@�����vn��*���a���l1]�J���]�����b)(kG�ǫ7�5k~2<!��?�2�?�Z9��lׅQ|��{l����"�j�>�Z�������}kiAMR�r���;Au˰��Y�HC� �*�O:�hjL������y�_�hxd/�ݥ�}1�.Uf��tۆ�1��T���m�c��!�|\��߱㕎r���a����Y�S��IǛv�J��|1�T�~��#P�;�5�cǪ�O��P-�P�L-�ب�x�B�y�2��j��LϺ��By��;���Q�vF�Q)�.@f�;:���v�>�Z��ϲ�<���I%�b����Ϳ,��b�&��ӏ����=�v"�^�;Q��e<V�ò��;��(�u/���(�u0	��s����G1���Gɫ� }XV�8��t��/���:���Y�8�;A�v�ԓL�o}�.6-,�î��ٹI�ϻ�,魳��`�b.v�Q�FY"�	¾Yd?C��Ǝ��b~��41Oz]|��G���#��;�����#x\�K�?�|���_��~��W���W_~�ŷ_������>���ϯ?{����_��헯~�����A4oω��CE}b��J���N��|μ؁-g��t*�G��O��m�a�N^p���	b�8����$S����: ;�=���qq�l�����ί��$H��|b� �^������79\ə9��C��UO@;C�#s�.�ՙ,t��z��Ws�V���R��X�}��LF�"k�N%<b�����5LGP�߻�����j�����JD�~�4�����c<G
N;���f>�u!��[�������b.����b}�Ϛ�__����ċb�z7�s�4���y�����-hX��Ip[&9��n���4rh�������\�m�A�A��/�@�:��0ǰ#����ps��N{g��Ȝ���e�Qf�X�V���b����b�wp��������~���.�om��s~�d;Ǜ��5��g��_�ƚC�����>O̸�?3�3�f3�)�[��e�A�~���	���=���V�C��2��2d#f�v6����y���|gv�_���;���LĶu|d}Y�*֭��A�{�!�������ŨX['�2��� 3k����$�����}��S��wʎ��(�L�T?J�;�oN�n�����=�bG�m�@�C�6�V+v�e�����~��~��p�3.���$��D�'	��u�=x,S��?�Gh4&;�iK�1+^[.�Nj�X��0�m�f����ׅ	�-	�
�-e��h�$u��[ڽO�����e�۝OɊ�W?���8js��"�0�Kg"�Y�PAK	�MpΎZvq�����A�w�6�\�[7�����1ԫQ��x��~�����t�4���N�m�ŭ�0�sK��j���T;���k��q��P�gA�n�ޟ�A�3C��������}�������w����o^}�,��'�soAk �e�� 0��{�X$�2CT��YA6�P�CA���e�R�L!W��..2)$.JH��8/A���%�P�p@P�*י}���V�4��\B�w��:[i�{��{!Z��ˑf����΅_�`4':�IН\�t��6��_�(�-�A'��j�I�a�3���Q��G_�#��K����ί�#�c[�(��r\�� �,i��*�֛0p�̇��p.�f��<�)4z#��3b$�t�mi�IZ��KZ&���cN��U��mv0��N��	�LS��X+eP�X+��8���0h3�$T�I��M����e��`JZ��B�CL��"������RU���������>��F���W?� c�j������/C2�gV?���m#��
��>qUn�s@"�}�G�j|EMDŔ�g��0$��; "���j�i��u\��f_(J8�o�#�����NW��˛w�_���]�/���yɞ�&ڡo�RNB;7��ۉl��;�h_���'�v����@�*ۧd��9+�����U��ܗW���]O�'/��4����z^ˈ�d�#/����0�%09M�Q�D�p#}�i#9�xޚBHOr�����\�|Et�|{ӁT�Sz�ë�d?w�G�.xr�}�� �����/~���fZ�      !      x������ � �      #   l  x�-��n�H���<�����C�[4�JL�Q���K���<���Uv���O����S����ɩK!-c�Mrv��x�1��� j�;VtXv�:b;MX1��r�"�Ǌ�\�M���f�"����t�-���.NUA�&ceN^q�E��$o��:�e%N��x�e���R����тUuҽ���-۲���}!v��N�8���w�U��E'�t���I��]�N�*^�j�xi;Q��f1�m���9�����S���z�`�6êl)�S�̏m.r�5�BQ��	�Ϭ�rW�>��t���ݳfR��c8�h���b�<�fS,m_S�ݱ6����w�W�g��''f]��oQW�W/
�7)�*%yYȝ@	���%R������u��P�'g�:�yln=��@�wp����A;QºE�͇J=�m���y;��۲>Ǌ�&׉ؘA_z�A�l(�U�Z��l�����oE�ﳡAvUђ;^6tr��'w�fØ�����Gx5i��e)��AƆu[��v��&`���Ld�[�\���5��+c`�
Y�zæB~!���x��T��������_!��)��47�l�ϻ	Օ�iL��Ụ 1oz?@%Ll����.fӦ���Y+��oKe%d�7D[������-0VLU
�˚-���U��[�4
��N�U��xB�F3)D�-��\��Q�ք�x�y�-@W ��6+�-���7m�G��m�Gq�i�l�(*N9E�%c[� ��N��
�;~ƞ=:�	�uJ�Rt����AI_�N�'��&=^ϰ|�ض(U�b�ĶMiszù4�ٞS��o}���v��s���~��"����JЋ7�1��3��<}�     