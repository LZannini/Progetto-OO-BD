PGDMP     1    /                z           LibreriaMusicale_db    14.0    14.0                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    24685    LibreriaMusicale_db    DATABASE     q   CREATE DATABASE "LibreriaMusicale_db" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Italian_Italy.1252';
 %   DROP DATABASE "LibreriaMusicale_db";
                postgres    false            ?            1259    24721    album    TABLE     ?   CREATE TABLE public.album (
    nome_album character varying(32) NOT NULL,
    artista character varying(32) NOT NULL,
    anno_uscita integer NOT NULL
);
    DROP TABLE public.album;
       public         heap    postgres    false            ?            1259    24703    ascolto    TABLE     ?   CREATE TABLE public.ascolto (
    num_ascolti integer NOT NULL,
    id_utente integer NOT NULL,
    id_traccia integer NOT NULL,
    fascia_oraria character varying(16) NOT NULL
);
    DROP TABLE public.ascolto;
       public         heap    postgres    false            ?            1259    24686    traccia    TABLE     ?   CREATE TABLE public.traccia (
    id_track integer NOT NULL,
    autore character varying(32) NOT NULL,
    versione integer NOT NULL,
    nome character varying(32) NOT NULL,
    album character varying(32) NOT NULL
);
    DROP TABLE public.traccia;
       public         heap    postgres    false            ?            1259    24693    utente    TABLE     ?   CREATE TABLE public.utente (
    user_id integer NOT NULL,
    username character varying(32) NOT NULL,
    password character varying(20) NOT NULL,
    admin boolean DEFAULT false NOT NULL
);
    DROP TABLE public.utente;
       public         heap    postgres    false                      0    24721    album 
   TABLE DATA           A   COPY public.album (nome_album, artista, anno_uscita) FROM stdin;
    public          postgres    false    212   U                  0    24703    ascolto 
   TABLE DATA           T   COPY public.ascolto (num_ascolti, id_utente, id_traccia, fascia_oraria) FROM stdin;
    public          postgres    false    211   $       ?          0    24686    traccia 
   TABLE DATA           J   COPY public.traccia (id_track, autore, versione, nome, album) FROM stdin;
    public          postgres    false    209   A       ?          0    24693    utente 
   TABLE DATA           D   COPY public.utente (user_id, username, password, admin) FROM stdin;
    public          postgres    false    210   ?       o           2606    24725    album album_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.album
    ADD CONSTRAINT album_pkey PRIMARY KEY (nome_album);
 :   ALTER TABLE ONLY public.album DROP CONSTRAINT album_pkey;
       public            postgres    false    212            i           2606    24690    traccia traccia_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.traccia
    ADD CONSTRAINT traccia_pkey PRIMARY KEY (id_track);
 >   ALTER TABLE ONLY public.traccia DROP CONSTRAINT traccia_pkey;
       public            postgres    false    209            k           2606    24697    utente utente_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY public.utente
    ADD CONSTRAINT utente_pkey PRIMARY KEY (user_id);
 <   ALTER TABLE ONLY public.utente DROP CONSTRAINT utente_pkey;
       public            postgres    false    210            m           2606    24699    utente utente_username_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.utente
    ADD CONSTRAINT utente_username_key UNIQUE (username);
 D   ALTER TABLE ONLY public.utente DROP CONSTRAINT utente_username_key;
       public            postgres    false    210            r           2606    24711    ascolto ascolto_id_traccia_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.ascolto
    ADD CONSTRAINT ascolto_id_traccia_fkey FOREIGN KEY (id_traccia) REFERENCES public.traccia(id_track);
 I   ALTER TABLE ONLY public.ascolto DROP CONSTRAINT ascolto_id_traccia_fkey;
       public          postgres    false    211    3177    209            q           2606    24706    ascolto ascolto_id_utente_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.ascolto
    ADD CONSTRAINT ascolto_id_utente_fkey FOREIGN KEY (id_utente) REFERENCES public.utente(user_id);
 H   ALTER TABLE ONLY public.ascolto DROP CONSTRAINT ascolto_id_utente_fkey;
       public          postgres    false    3179    211    210            p           2606    24732    traccia traccia_album_fkey    FK CONSTRAINT        ALTER TABLE ONLY public.traccia
    ADD CONSTRAINT traccia_album_fkey FOREIGN KEY (album) REFERENCES public.album(nome_album);
 D   ALTER TABLE ONLY public.traccia DROP CONSTRAINT traccia_album_fkey;
       public          postgres    false    3183    212    209               ?   x?U?1O?@F????Kuw0?14?PUA??b???lɹ???IF??}zz?~3鄌JX?<
?Ja/j?b?g-??]???KG?ϽX?ά??r???4??x?b?9???x V??;???<Q.˘"?4Uܱ֋?x?LCo??߼??
??[Y?,4^????&?8?n?Nx?n?&]?????Ժ\r?? ?JyH?             x?????? ? ?      ?   L  x?u?KN?0????l7U??G??C?J?L[?x9N?܈{p1?4??3?淆?1?M?p8???%?/P?8?rh=WA????0.+A%pg?`????!,7{?pӼy[?K???ʲ?S?Q)?'?	<`??8?j|'??Agv???wy??.??2?xW!˻(?R??8ۛ?v??ˑ?????nYN?"??????
8???71
2?BN?? ???R
?t[??J?>?f????\?a?O.? ???????[?H&]I?1???O??!dm???????c?6???lm?(??_ػ??????aֲ*?=K9?}?:PJ}|v?2      ?     x?-??n?0Eח???a?H?&dQ?.?JhB?`d5???Iw???s?s?l????,MS?I?Ѳ??!?>+k??*?e??n?3=7w8?N'???L?????]?b~Ϛ?O	+;W?!?P?N(?CED????5??s?*??)?A?VE??vPZ???C??U?r??2J???D?????&?i??*L??ǎ0????_???fe?h7'G???W?%??u??o@?Pde??ه |R?[??????T`??(í^y_?U@?oI??RPhg     