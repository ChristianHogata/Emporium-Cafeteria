PGDMP                    
    |            CafeteriaEmporium    16.2    16.4 T    L           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            M           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            N           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            O           1262    65887    CafeteriaEmporium    DATABASE     �   CREATE DATABASE "CafeteriaEmporium" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Portuguese_Brazil.1252';
 #   DROP DATABASE "CafeteriaEmporium";
                postgres    false            �            1259    65900    cargos    TABLE     c   CREATE TABLE public.cargos (
    id integer NOT NULL,
    cargo character varying(255) NOT NULL
);
    DROP TABLE public.cargos;
       public         heap    postgres    false            �            1259    65903    cargos_id_seq    SEQUENCE     �   CREATE SEQUENCE public.cargos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.cargos_id_seq;
       public          postgres    false    215            P           0    0    cargos_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.cargos_id_seq OWNED BY public.cargos.id;
          public          postgres    false    216            �            1259    65904    clientes    TABLE     z  CREATE TABLE public.clientes (
    id integer NOT NULL,
    nome character varying(30) NOT NULL,
    sobrenome character varying(30) NOT NULL,
    cpf character varying(11),
    cnpj character varying(14),
    tipo_pessoa character(1) DEFAULT 'F'::bpchar NOT NULL,
    telefone character varying(14),
    email character varying(60),
    id_endereco integer,
    "idEstrangeiro" character varying(20),
    "indIEDest" numeric(1,0),
    "IE" character varying(14),
    "ISUF" character varying(9),
    "IM" character varying(15),
    "Nomefantasia" character varying(60),
    "RazaoSocial" character varying(60),
    status integer
);
    DROP TABLE public.clientes;
       public         heap    postgres    false            �            1259    65908    clientes_id_seq    SEQUENCE     �   CREATE SEQUENCE public.clientes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.clientes_id_seq;
       public          postgres    false    217            Q           0    0    clientes_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.clientes_id_seq OWNED BY public.clientes.id;
          public          postgres    false    218            �            1259    65909    complementos    TABLE     �   CREATE TABLE public.complementos (
    id integer NOT NULL,
    descricao character varying(255) NOT NULL,
    valor double precision NOT NULL,
    observacao text NOT NULL,
    status integer
);
     DROP TABLE public.complementos;
       public         heap    postgres    false            �            1259    65914    complementos_id_seq    SEQUENCE     �   CREATE SEQUENCE public.complementos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.complementos_id_seq;
       public          postgres    false    219            R           0    0    complementos_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.complementos_id_seq OWNED BY public.complementos.id;
          public          postgres    false    220            �            1259    65919 	   enderecos    TABLE       CREATE TABLE public.enderecos (
    id integer NOT NULL,
    endereco character varying(255) NOT NULL,
    numero character varying(60),
    bairro character varying(60) NOT NULL,
    uf character varying(2) NOT NULL,
    cidade character varying(255) NOT NULL,
    referencia character varying(60) NOT NULL,
    municipio character varying(60),
    pais character varying(60),
    codigomunicipio numeric(7,0),
    cep character varying(8),
    codigopais numeric(4,0),
    logradouro character varying(60),
    status integer
);
    DROP TABLE public.enderecos;
       public         heap    postgres    false            �            1259    65924    enderecos_id_seq    SEQUENCE     �   CREATE SEQUENCE public.enderecos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.enderecos_id_seq;
       public          postgres    false    221            S           0    0    enderecos_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.enderecos_id_seq OWNED BY public.enderecos.id;
          public          postgres    false    222            �            1259    65925    forma_pagamento    TABLE     g   CREATE TABLE public.forma_pagamento (
    id integer NOT NULL,
    descricao character varying(255)
);
 #   DROP TABLE public.forma_pagamento;
       public         heap    postgres    false            �            1259    65928    forma_pagamento_id_seq    SEQUENCE     �   CREATE SEQUENCE public.forma_pagamento_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.forma_pagamento_id_seq;
       public          postgres    false    223            T           0    0    forma_pagamento_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.forma_pagamento_id_seq OWNED BY public.forma_pagamento.id;
          public          postgres    false    224            �            1259    65942    pedidos    TABLE     �  CREATE TABLE public.pedidos (
    id integer NOT NULL,
    quantidade double precision,
    valor_total double precision,
    valor_pago double precision,
    valor_troco double precision,
    id_cliente integer,
    id_forma_pagamento integer,
    id_usuario integer,
    nome_cliente character varying(255),
    data_pedido timestamp without time zone,
    status_pedido integer
);
    DROP TABLE public.pedidos;
       public         heap    postgres    false            �            1259    65945    pedidos_id_seq    SEQUENCE     �   CREATE SEQUENCE public.pedidos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.pedidos_id_seq;
       public          postgres    false    225            U           0    0    pedidos_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.pedidos_id_seq OWNED BY public.pedidos.id;
          public          postgres    false    226            �            1259    65946    pedidos_itens    TABLE     �   CREATE TABLE public.pedidos_itens (
    id integer NOT NULL,
    id_produto integer,
    id_pedido integer,
    quantidade double precision,
    valor_total double precision,
    status_pedidos_itens integer
);
 !   DROP TABLE public.pedidos_itens;
       public         heap    postgres    false            �            1259    65949    pedidos_itens_complementos    TABLE       CREATE TABLE public.pedidos_itens_complementos (
    id integer NOT NULL,
    id_pedido_item integer,
    id_complemento integer,
    quantidade double precision,
    valor_total double precision,
    id_produto integer,
    status_pedidos_itens_complementos integer
);
 .   DROP TABLE public.pedidos_itens_complementos;
       public         heap    postgres    false            �            1259    65952 !   pedidos_itens_complementos_id_seq    SEQUENCE     �   CREATE SEQUENCE public.pedidos_itens_complementos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.pedidos_itens_complementos_id_seq;
       public          postgres    false    228            V           0    0 !   pedidos_itens_complementos_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.pedidos_itens_complementos_id_seq OWNED BY public.pedidos_itens_complementos.id;
          public          postgres    false    229            �            1259    65953    pedidos_itens_id_seq    SEQUENCE     �   CREATE SEQUENCE public.pedidos_itens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.pedidos_itens_id_seq;
       public          postgres    false    227            W           0    0    pedidos_itens_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.pedidos_itens_id_seq OWNED BY public.pedidos_itens.id;
          public          postgres    false    230            �            1259    65954    produtos    TABLE     �  CREATE TABLE public.produtos (
    id integer NOT NULL,
    grupo integer,
    sub_grupo integer,
    descricao character varying(120),
    peso_bruto double precision,
    peso_liquido double precision,
    preco_custo double precision,
    preco_venda double precision,
    unidade_entrada character varying(20),
    unidade_saida character varying(20),
    ean character varying(14),
    status integer,
    caminho_imagem_produto character varying,
    possui_complemento integer DEFAULT 0
);
    DROP TABLE public.produtos;
       public         heap    postgres    false            �            1259    65960    produtos_id_seq    SEQUENCE     �   CREATE SEQUENCE public.produtos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.produtos_id_seq;
       public          postgres    false    231            X           0    0    produtos_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.produtos_id_seq OWNED BY public.produtos.id;
          public          postgres    false    232            �            1259    65967    usuarios    TABLE     H  CREATE TABLE public.usuarios (
    id integer NOT NULL,
    nome character varying(255) NOT NULL,
    senha character varying(255) NOT NULL,
    sobrenome character varying(255) NOT NULL,
    telefone character varying(20) NOT NULL,
    id_cargo integer NOT NULL,
    login character varying(40) NOT NULL,
    status integer
);
    DROP TABLE public.usuarios;
       public         heap    postgres    false            �            1259    65972    usuarios_id_seq    SEQUENCE     �   CREATE SEQUENCE public.usuarios_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.usuarios_id_seq;
       public          postgres    false    233            Y           0    0    usuarios_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.usuarios_id_seq OWNED BY public.usuarios.id;
          public          postgres    false    234            }           2604    65975 	   cargos id    DEFAULT     f   ALTER TABLE ONLY public.cargos ALTER COLUMN id SET DEFAULT nextval('public.cargos_id_seq'::regclass);
 8   ALTER TABLE public.cargos ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    215            ~           2604    65976    clientes id    DEFAULT     j   ALTER TABLE ONLY public.clientes ALTER COLUMN id SET DEFAULT nextval('public.clientes_id_seq'::regclass);
 :   ALTER TABLE public.clientes ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    217            �           2604    65977    complementos id    DEFAULT     r   ALTER TABLE ONLY public.complementos ALTER COLUMN id SET DEFAULT nextval('public.complementos_id_seq'::regclass);
 >   ALTER TABLE public.complementos ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    219            �           2604    65979    enderecos id    DEFAULT     l   ALTER TABLE ONLY public.enderecos ALTER COLUMN id SET DEFAULT nextval('public.enderecos_id_seq'::regclass);
 ;   ALTER TABLE public.enderecos ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    221            �           2604    65980    forma_pagamento id    DEFAULT     x   ALTER TABLE ONLY public.forma_pagamento ALTER COLUMN id SET DEFAULT nextval('public.forma_pagamento_id_seq'::regclass);
 A   ALTER TABLE public.forma_pagamento ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    223            �           2604    65983 
   pedidos id    DEFAULT     h   ALTER TABLE ONLY public.pedidos ALTER COLUMN id SET DEFAULT nextval('public.pedidos_id_seq'::regclass);
 9   ALTER TABLE public.pedidos ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    226    225            �           2604    65984    pedidos_itens id    DEFAULT     t   ALTER TABLE ONLY public.pedidos_itens ALTER COLUMN id SET DEFAULT nextval('public.pedidos_itens_id_seq'::regclass);
 ?   ALTER TABLE public.pedidos_itens ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    230    227            �           2604    65985    pedidos_itens_complementos id    DEFAULT     �   ALTER TABLE ONLY public.pedidos_itens_complementos ALTER COLUMN id SET DEFAULT nextval('public.pedidos_itens_complementos_id_seq'::regclass);
 L   ALTER TABLE public.pedidos_itens_complementos ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    229    228            �           2604    65986    produtos id    DEFAULT     j   ALTER TABLE ONLY public.produtos ALTER COLUMN id SET DEFAULT nextval('public.produtos_id_seq'::regclass);
 :   ALTER TABLE public.produtos ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    232    231            �           2604    65988    usuarios id    DEFAULT     j   ALTER TABLE ONLY public.usuarios ALTER COLUMN id SET DEFAULT nextval('public.usuarios_id_seq'::regclass);
 :   ALTER TABLE public.usuarios ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    234    233            6          0    65900    cargos 
   TABLE DATA           +   COPY public.cargos (id, cargo) FROM stdin;
    public          postgres    false    215   bj       8          0    65904    clientes 
   TABLE DATA           �   COPY public.clientes (id, nome, sobrenome, cpf, cnpj, tipo_pessoa, telefone, email, id_endereco, "idEstrangeiro", "indIEDest", "IE", "ISUF", "IM", "Nomefantasia", "RazaoSocial", status) FROM stdin;
    public          postgres    false    217   �j       :          0    65909    complementos 
   TABLE DATA           P   COPY public.complementos (id, descricao, valor, observacao, status) FROM stdin;
    public          postgres    false    219   yk       <          0    65919 	   enderecos 
   TABLE DATA           �   COPY public.enderecos (id, endereco, numero, bairro, uf, cidade, referencia, municipio, pais, codigomunicipio, cep, codigopais, logradouro, status) FROM stdin;
    public          postgres    false    221   fl       >          0    65925    forma_pagamento 
   TABLE DATA           8   COPY public.forma_pagamento (id, descricao) FROM stdin;
    public          postgres    false    223   �m       @          0    65942    pedidos 
   TABLE DATA           �   COPY public.pedidos (id, quantidade, valor_total, valor_pago, valor_troco, id_cliente, id_forma_pagamento, id_usuario, nome_cliente, data_pedido, status_pedido) FROM stdin;
    public          postgres    false    225   #n       B          0    65946    pedidos_itens 
   TABLE DATA           q   COPY public.pedidos_itens (id, id_produto, id_pedido, quantidade, valor_total, status_pedidos_itens) FROM stdin;
    public          postgres    false    227   @n       C          0    65949    pedidos_itens_complementos 
   TABLE DATA           �   COPY public.pedidos_itens_complementos (id, id_pedido_item, id_complemento, quantidade, valor_total, id_produto, status_pedidos_itens_complementos) FROM stdin;
    public          postgres    false    228   ]n       F          0    65954    produtos 
   TABLE DATA           �   COPY public.produtos (id, grupo, sub_grupo, descricao, peso_bruto, peso_liquido, preco_custo, preco_venda, unidade_entrada, unidade_saida, ean, status, caminho_imagem_produto, possui_complemento) FROM stdin;
    public          postgres    false    231   zn       H          0    65967    usuarios 
   TABLE DATA           a   COPY public.usuarios (id, nome, senha, sobrenome, telefone, id_cargo, login, status) FROM stdin;
    public          postgres    false    233   �o       Z           0    0    cargos_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.cargos_id_seq', 1, false);
          public          postgres    false    216            [           0    0    clientes_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.clientes_id_seq', 22, true);
          public          postgres    false    218            \           0    0    complementos_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.complementos_id_seq', 18, true);
          public          postgres    false    220            ]           0    0    enderecos_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.enderecos_id_seq', 3, true);
          public          postgres    false    222            ^           0    0    forma_pagamento_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.forma_pagamento_id_seq', 1, true);
          public          postgres    false    224            _           0    0    pedidos_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.pedidos_id_seq', 71, true);
          public          postgres    false    226            `           0    0 !   pedidos_itens_complementos_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.pedidos_itens_complementos_id_seq', 28, true);
          public          postgres    false    229            a           0    0    pedidos_itens_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.pedidos_itens_id_seq', 80, true);
          public          postgres    false    230            b           0    0    produtos_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.produtos_id_seq', 24, true);
          public          postgres    false    232            c           0    0    usuarios_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.usuarios_id_seq', 5, true);
          public          postgres    false    234            �           2606    65994    cargos cargos_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.cargos
    ADD CONSTRAINT cargos_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.cargos DROP CONSTRAINT cargos_pkey;
       public            postgres    false    215            �           2606    65996    clientes clientes_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.clientes
    ADD CONSTRAINT clientes_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.clientes DROP CONSTRAINT clientes_pkey;
       public            postgres    false    217            �           2606    65998    complementos complementos_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.complementos
    ADD CONSTRAINT complementos_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.complementos DROP CONSTRAINT complementos_pkey;
       public            postgres    false    219            �           2606    66000    enderecos enderecos_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.enderecos
    ADD CONSTRAINT enderecos_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.enderecos DROP CONSTRAINT enderecos_pkey;
       public            postgres    false    221            �           2606    66002 $   forma_pagamento forma_pagamento_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.forma_pagamento
    ADD CONSTRAINT forma_pagamento_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.forma_pagamento DROP CONSTRAINT forma_pagamento_pkey;
       public            postgres    false    223            �           2606    66008 :   pedidos_itens_complementos pedidos_itens_complementos_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.pedidos_itens_complementos
    ADD CONSTRAINT pedidos_itens_complementos_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.pedidos_itens_complementos DROP CONSTRAINT pedidos_itens_complementos_pkey;
       public            postgres    false    228            �           2606    66010     pedidos_itens pedidos_itens_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.pedidos_itens
    ADD CONSTRAINT pedidos_itens_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.pedidos_itens DROP CONSTRAINT pedidos_itens_pkey;
       public            postgres    false    227            �           2606    66012    pedidos pedidos_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.pedidos
    ADD CONSTRAINT pedidos_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.pedidos DROP CONSTRAINT pedidos_pkey;
       public            postgres    false    225            �           2606    66014    produtos produtos_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.produtos
    ADD CONSTRAINT produtos_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.produtos DROP CONSTRAINT produtos_pkey;
       public            postgres    false    231            �           2606    66016    usuarios usuarios_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.usuarios DROP CONSTRAINT usuarios_pkey;
       public            postgres    false    233            �           2606    66017    usuarios FK_id_cargo    FK CONSTRAINT     �   ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT "FK_id_cargo" FOREIGN KEY (id_cargo) REFERENCES public.cargos(id) NOT VALID;
 @   ALTER TABLE ONLY public.usuarios DROP CONSTRAINT "FK_id_cargo";
       public          postgres    false    215    4746    233            �           2606    66027 "   clientes clientes_id_endereco_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.clientes
    ADD CONSTRAINT clientes_id_endereco_fkey FOREIGN KEY (id_endereco) REFERENCES public.enderecos(id) ON DELETE CASCADE;
 L   ALTER TABLE ONLY public.clientes DROP CONSTRAINT clientes_id_endereco_fkey;
       public          postgres    false    221    217    4752            �           2606    66032    pedidos pedidos_id_cliente_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.pedidos
    ADD CONSTRAINT pedidos_id_cliente_fkey FOREIGN KEY (id_cliente) REFERENCES public.clientes(id) NOT VALID;
 I   ALTER TABLE ONLY public.pedidos DROP CONSTRAINT pedidos_id_cliente_fkey;
       public          postgres    false    4748    217    225            �           2606    66037 '   pedidos pedidos_id_forma_pagamento_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.pedidos
    ADD CONSTRAINT pedidos_id_forma_pagamento_fkey FOREIGN KEY (id_forma_pagamento) REFERENCES public.forma_pagamento(id);
 Q   ALTER TABLE ONLY public.pedidos DROP CONSTRAINT pedidos_id_forma_pagamento_fkey;
       public          postgres    false    223    4754    225            �           2606    66042 #   pedidos pedidos_id_funcionario_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.pedidos
    ADD CONSTRAINT pedidos_id_funcionario_fkey FOREIGN KEY (id_usuario) REFERENCES public.usuarios(id);
 M   ALTER TABLE ONLY public.pedidos DROP CONSTRAINT pedidos_id_funcionario_fkey;
       public          postgres    false    225    233    4764            �           2606    66047 I   pedidos_itens_complementos pedidos_itens_complementos_id_complemento_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.pedidos_itens_complementos
    ADD CONSTRAINT pedidos_itens_complementos_id_complemento_fkey FOREIGN KEY (id_complemento) REFERENCES public.complementos(id);
 s   ALTER TABLE ONLY public.pedidos_itens_complementos DROP CONSTRAINT pedidos_itens_complementos_id_complemento_fkey;
       public          postgres    false    4750    228    219            �           2606    66052 I   pedidos_itens_complementos pedidos_itens_complementos_id_pedido_item_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.pedidos_itens_complementos
    ADD CONSTRAINT pedidos_itens_complementos_id_pedido_item_fkey FOREIGN KEY (id_pedido_item) REFERENCES public.pedidos_itens(id) ON DELETE CASCADE NOT VALID;
 s   ALTER TABLE ONLY public.pedidos_itens_complementos DROP CONSTRAINT pedidos_itens_complementos_id_pedido_item_fkey;
       public          postgres    false    228    227    4758            �           2606    66057 E   pedidos_itens_complementos pedidos_itens_complementos_id_produto_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.pedidos_itens_complementos
    ADD CONSTRAINT pedidos_itens_complementos_id_produto_fkey FOREIGN KEY (id_produto) REFERENCES public.produtos(id) NOT VALID;
 o   ALTER TABLE ONLY public.pedidos_itens_complementos DROP CONSTRAINT pedidos_itens_complementos_id_produto_fkey;
       public          postgres    false    228    231    4762            �           2606    66062 *   pedidos_itens pedidos_itens_id_pedido_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.pedidos_itens
    ADD CONSTRAINT pedidos_itens_id_pedido_fkey FOREIGN KEY (id_pedido) REFERENCES public.pedidos(id) ON DELETE CASCADE;
 T   ALTER TABLE ONLY public.pedidos_itens DROP CONSTRAINT pedidos_itens_id_pedido_fkey;
       public          postgres    false    4756    227    225            �           2606    66067 +   pedidos_itens pedidos_itens_id_produto_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.pedidos_itens
    ADD CONSTRAINT pedidos_itens_id_produto_fkey FOREIGN KEY (id_produto) REFERENCES public.produtos(id);
 U   ALTER TABLE ONLY public.pedidos_itens DROP CONSTRAINT pedidos_itens_id_produto_fkey;
       public          postgres    false    4762    231    227            6   -   x�3��/H-JL�/�2�tL����,.���9�S�R�JR�b���� #J�      8   �   x�u��
�@������)uW.��m�c�ȌE�ӥtcyTB�������~��,��J/�(^p\H�y�K���[�̷�ʼ��r�R[�+���2�1Ϟ&s��.FzѶ���ɂ�[�8��k����/{_���-��ʉ.�t�uI�X_Y���TR#5��Us��Gb���e�u����-���ɂ�[�� �=}�      :   �   x�m�=�0Fg�� ��Ӗ�'`1IP#�D�0�u��á��)���4��)�\��J����mn�&C�Q���'6�X����D�-<�`�ste��`�=��=�;�Ƅ/��W��G�.d0ǣ3�
}��u�ܝ4���nN��q��'��٥8^�ʟ{;_KT�Qd�oƥi{Qz���Q���"? ��,�%e)T�S�~�$Op��*      <   u  x�}��N�0���S�	P�6l;n�j�P�I;q14�Hi<�M���'�	�b$�:M�@ꥎc��Y�5�6�T"��B���
��wb���p�k�+bHl��U��#��6�I�3�.x�8.�0|UV��I�u� �t����9�ѕ�b��8��0�T+�U: �5!@�^�r���qBǑ�\����|ϱ����t����h�P k��0R�|�:���n��7���!1�!TZb���QF!�y ������>���>e#I��G�;�k���E����M]�iBë�=�Wqh��p�^fq}�E����^��m�pMh-�(H�v-��[
s$L&"��*�8���c�y���?U��u0.���$I~�!�!      >   (   x�3�t���H�,��2�tIM�,��2�t.JM�b���� ��	�      @      x������ � �      B      x������ � �      C      x������ � �      F   �   x����J�0�s�>Ai2I�eQԛ7/!ۺmJZ�WZ_�/����� -%���4>�0�盻�%�TSG���ک�gz��ڮ��)]�ö��( Eh�2AaY>c�f4�#��S���VD<�x
(-%xHK�e鄼���,��4
�c���!�����{��=�-�,�-�
\{Ͼ���1�����)��� /�3������[���lu#�C~�q�^�^���xs`8㵮���9      H   &   x�3�tt��442�І�������&&�F�=... ���     