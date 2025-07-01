--
-- PostgreSQL database dump
--

-- Dumped from database version 18beta1 (Postgres.app)
-- Dumped by pg_dump version 18beta1 (Postgres.app)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: _ChannelToUser; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."_ChannelToUser" (
    "A" text NOT NULL,
    "B" text NOT NULL
);


ALTER TABLE public."_ChannelToUser" OWNER TO postgres;

--
-- Name: _PlaylistToVideo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."_PlaylistToVideo" (
    "A" text NOT NULL,
    "B" text NOT NULL
);


ALTER TABLE public."_PlaylistToVideo" OWNER TO postgres;

--
-- Name: _video_tags; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public._video_tags (
    "A" text NOT NULL,
    "B" text NOT NULL
);


ALTER TABLE public._video_tags OWNER TO postgres;

--
-- Name: channel; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.channel (
    id text NOT NULL,
    slug text NOT NULL,
    description text,
    is_verified boolean DEFAULT false NOT NULL,
    avatar_url text,
    banner_url text,
    user_id text NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL
);


ALTER TABLE public.channel OWNER TO postgres;

--
-- Name: playlist; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.playlist (
    id text NOT NULL,
    title text NOT NULL,
    user_id text NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL
);


ALTER TABLE public.playlist OWNER TO postgres;

--
-- Name: user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."user" (
    id text NOT NULL,
    name text,
    email text NOT NULL,
    password text NOT NULL,
    verification_token text,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL
);


ALTER TABLE public."user" OWNER TO postgres;

--
-- Name: video; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.video (
    id text NOT NULL,
    public_id text NOT NULL,
    title text NOT NULL,
    description text NOT NULL,
    thumbnail_url text NOT NULL,
    video_file_name text NOT NULL,
    max_resolution text DEFAULT '1080p'::text NOT NULL,
    views_count integer DEFAULT 0 NOT NULL,
    is_public boolean DEFAULT false NOT NULL,
    channel_id text NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL
);


ALTER TABLE public.video OWNER TO postgres;

--
-- Name: video_comment; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.video_comment (
    id text NOT NULL,
    text text NOT NULL,
    user_id text NOT NULL,
    video_id text NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL
);


ALTER TABLE public.video_comment OWNER TO postgres;

--
-- Name: video_like; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.video_like (
    id text NOT NULL,
    user_id text NOT NULL,
    video_id text NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE public.video_like OWNER TO postgres;

--
-- Name: video_tag; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.video_tag (
    id text NOT NULL,
    name text NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL
);


ALTER TABLE public.video_tag OWNER TO postgres;

--
-- Name: watch_history; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.watch_history (
    id text NOT NULL,
    user_id text NOT NULL,
    video_id text NOT NULL,
    watched_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE public.watch_history OWNER TO postgres;

--
-- Data for Name: _ChannelToUser; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."_ChannelToUser" ("A", "B") FROM stdin;
cmawwzvz1000j4wt9qrdl91ks	cmawwzvog00004wt9mwvejbx1
cmawwzvuj000b4wt9me35pnha	cmawwzvog00004wt9mwvejbx1
cmawwzvr500054wt9ahq5ovxu	cmawwzvog00004wt9mwvejbx1
cmawwzvws000f4wt9yoogtf4r	cmbhzh70200028ljx91rnqmnl
cmawwzvtc00094wt92ot2cfpt	cmawwzvs700064wt9b2g2pz3k
cmawwzvws000f4wt9yoogtf4r	cmawwzvog00004wt9mwvejbx1
cmawwzvok00014wt9uin2kpaw	cmawwzvog00004wt9mwvejbx1
cmawwzvok00014wt9uin2kpaw	cmbhzh70200028ljx91rnqmnl
cmawwzvz1000j4wt9qrdl91ks	cmbhzh70200028ljx91rnqmnl
\.


--
-- Data for Name: _PlaylistToVideo; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."_PlaylistToVideo" ("A", "B") FROM stdin;
cmc6wovs90017hxs96rlv4xhm	cmawx075500zp4wt9vhrtayh9
cmc6wovs90017hxs96rlv4xhm	cmawx07mb01164wt9y44dhos0
cmc6wovs90017hxs96rlv4xhm	cmawx058p00tn4wt980t6tgzf
cmccm4nyf0009c7xflcbd93if	cmawx07mb01164wt9y44dhos0
cmccm4nyf0009c7xflcbd93if	cmawx05v000vs4wt9i59jkfuz
cmccmisq8000fc7xfkx14o6ab	cmawx039n00ne4wt96w5xleul
cmccm4nyf0009c7xflcbd93if	cmawx05c600u54wt9mg02c50q
cmccm4nyf0009c7xflcbd93if	cmcd9m4w0001cc7xfi6w9f09r
cmccmisq8000fc7xfkx14o6ab	cmcdfac4c002gc7xfocmkpodv
cmc6wovs90017hxs96rlv4xhm	cmcdfac4c002gc7xfocmkpodv
\.


--
-- Data for Name: _video_tags; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public._video_tags ("A", "B") FROM stdin;
cmawwzvz4000l4wt9zrxi2iwe	cmawwzvz4000m4wt9cocl4os9
cmawwzvz4000l4wt9zrxi2iwe	cmawwzvz4000n4wt9lo8vkyrv
cmawwzvz4000l4wt9zrxi2iwe	cmawwzvz4000o4wt9ju73sis1
cmawwzvz4000l4wt9zrxi2iwe	cmawwzvz4000p4wt9ko7iu84e
cmawwzvz4000l4wt9zrxi2iwe	cmawwzvz4000q4wt94cf6vg1b
cmawwzvz4000l4wt9zrxi2iwe	cmawwzvz4000r4wt9igt7hcwr
cmawwzvz4000l4wt9zrxi2iwe	cmawwzvz4000s4wt9v7kgf4s3
cmawwzvz4000l4wt9zrxi2iwe	cmawwzvz4000t4wt9jqlk94yt
cmawwzvz4000l4wt9zrxi2iwe	cmawwzvz4000u4wt9olakkk1z
cmawwzwjx00224wt9t8q7kpgp	cmawwzvz4000n4wt9lo8vkyrv
cmawwzwjx00224wt9t8q7kpgp	cmawwzvz4000p4wt9ko7iu84e
cmawwzwjx00224wt9t8q7kpgp	cmawwzvz4000q4wt94cf6vg1b
cmawwzwjx00224wt9t8q7kpgp	cmawwzvz4000r4wt9igt7hcwr
cmawwzwjx00224wt9t8q7kpgp	cmawwzwjx00274wt9299lw8sj
cmawwzwjx00224wt9t8q7kpgp	cmawwzwjx00284wt9plhi1d59
cmawwzwjx00224wt9t8q7kpgp	cmawwzwjy00294wt9ijdwttp8
cmawwzwjx00224wt9t8q7kpgp	cmawwzvz4000s4wt9v7kgf4s3
cmawwzwjx00224wt9t8q7kpgp	cmawwzvz4000t4wt9jqlk94yt
cmawwzwjx00224wt9t8q7kpgp	cmawwzvz4000u4wt9olakkk1z
cmawwzwsu00324wt96rnd6hm0	cmawwzvz4000p4wt9ko7iu84e
cmawwzwsu00324wt96rnd6hm0	cmawwzvz4000q4wt94cf6vg1b
cmawwzwsu00324wt96rnd6hm0	cmawwzvz4000r4wt9igt7hcwr
cmawwzwsu00324wt96rnd6hm0	cmawwzwsu00364wt98uy37kp5
cmawwzwsu00324wt96rnd6hm0	cmawwzwsu00374wt9s0vi40li
cmawwzwsu00324wt96rnd6hm0	cmawwzwsu00384wt944rsphiv
cmawwzwsu00324wt96rnd6hm0	cmawwzwsu00394wt9dnq8y0hu
cmawwzwsu00324wt96rnd6hm0	cmawwzvz4000s4wt9v7kgf4s3
cmawwzwsu00324wt96rnd6hm0	cmawwzvz4000t4wt9jqlk94yt
cmawwzx55004a4wt9c8fsokbr	cmawwzx55004b4wt9wyr6iqyd
cmawwzx55004a4wt9c8fsokbr	cmawwzx55004c4wt9r5lb024c
cmawwzx55004a4wt9c8fsokbr	cmawwzx55004d4wt9mlfie51z
cmawwzx55004a4wt9c8fsokbr	cmawwzx55004e4wt9kilnae4y
cmawwzx55004a4wt9c8fsokbr	cmawwzx55004f4wt9whgas7ge
cmawwzx55004a4wt9c8fsokbr	cmawwzx55004g4wt9j3thatpz
cmawwzx55004a4wt9c8fsokbr	cmawwzx56004h4wt9uwx9e5b8
cmawwzxqt00614wt9oeruk8dx	cmawwzxqt00624wt94oajdo9a
cmawwzxqt00614wt9oeruk8dx	cmawwzxqt00634wt920duv6h1
cmawwzxqt00614wt9oeruk8dx	cmawwzxqt00644wt963242lvv
cmawwzxqt00614wt9oeruk8dx	cmawwzxqt00654wt9ydo2ixyd
cmawwzxqt00614wt9oeruk8dx	cmawwzxqt00664wt9re7yad8i
cmawwzxqt00614wt9oeruk8dx	cmawwzxqt00674wt9jla5y5rd
cmawwzy9q007o4wt9xhmlilnb	cmawwzy9q007p4wt923ood4kd
cmawwzy9q007o4wt9xhmlilnb	cmawwzy9q007q4wt9eifyog5h
cmawwzy9q007o4wt9xhmlilnb	cmawwzy9q007r4wt9yv4zwggz
cmawwzy9q007o4wt9xhmlilnb	cmawwzy9q007s4wt9zerpsbre
cmawwzy9q007o4wt9xhmlilnb	cmawwzy9q007t4wt9djdwbycs
cmawwzy9q007o4wt9xhmlilnb	cmawwzy9q007u4wt94r8hfoog
cmawwzy9q007o4wt9xhmlilnb	cmawwzy9q007v4wt9ezumozgk
cmawwzyfi008c4wt9jtn3qcrs	cmawwzyfi008d4wt98ojgkbr8
cmawwzyfi008c4wt9jtn3qcrs	cmawwzy9q007p4wt923ood4kd
cmawwzyfi008c4wt9jtn3qcrs	cmawwzyfi008f4wt91xz8sjpq
cmawwzyfi008c4wt9jtn3qcrs	cmawwzyfi008g4wt9rjs1bjzj
cmawwzyfi008c4wt9jtn3qcrs	cmawwzyfi008h4wt99lr69z9x
cmawwzyfi008c4wt9jtn3qcrs	cmawwzyfi008i4wt9aq9kzy7p
cmawwzyfi008c4wt9jtn3qcrs	cmawwzyfi008j4wt9ftey6jhp
cmawwzyfi008c4wt9jtn3qcrs	cmawwzyfi008k4wt9wj5ejimk
cmawwzyhv008s4wt9oma34pg0	cmawwzyhw008t4wt9iihgob9j
cmawwzyhv008s4wt9oma34pg0	cmawwzyhw008u4wt9echojapz
cmawwzyhv008s4wt9oma34pg0	cmawwzyhw008v4wt9bl4c8dq0
cmawwzyhv008s4wt9oma34pg0	cmawwzvz4000u4wt9olakkk1z
cmawwzyhv008s4wt9oma34pg0	cmawwzyhw008x4wt9ekh0o30d
cmawwzyhv008s4wt9oma34pg0	cmawwzyhw008y4wt92cdz663l
cmawwzyhv008s4wt9oma34pg0	cmawwzyhw008z4wt9nytvd9xv
cmawwzyvh00a14wt9cj7f36vb	cmawwzyvi00a24wt9sa35mx2s
cmawwzyvh00a14wt9cj7f36vb	cmawwzyvi00a34wt9kfl81reh
cmawwzyvh00a14wt9cj7f36vb	cmawwzyvi00a44wt9hdtv1nfl
cmawwzyvh00a14wt9cj7f36vb	cmawwzyhw008v4wt9bl4c8dq0
cmawwzyvh00a14wt9cj7f36vb	cmawwzyhw008u4wt9echojapz
cmawwzyvh00a14wt9cj7f36vb	cmawwzy9q007p4wt923ood4kd
cmawwzyvh00a14wt9cj7f36vb	cmawwzyfi008g4wt9rjs1bjzj
cmawwzz6t00b44wt90h6ua44t	cmawwzyfi008d4wt98ojgkbr8
cmawwzz6t00b44wt90h6ua44t	cmawwzy9q007p4wt923ood4kd
cmawwzz6t00b44wt90h6ua44t	cmawwzz6t00b74wt9iegsb475
cmawwzz6t00b44wt90h6ua44t	cmawwzz6t00b84wt9edkwusba
cmawwzz6t00b44wt90h6ua44t	cmawwzz6t00b94wt9dhpmled8
cmawwzz6t00b44wt90h6ua44t	cmawwzz6t00ba4wt9vtkou8vu
cmawwzz6t00b44wt90h6ua44t	cmawwzz6t00bb4wt942s16r8d
cmawwzzm900ca4wt93qtus3e5	cmawwzy9q007p4wt923ood4kd
cmawwzzm900ca4wt93qtus3e5	cmawwzzm900cc4wt9qbip2fpj
cmawwzzm900ca4wt93qtus3e5	cmawwzzm900cd4wt9azjauzva
cmawwzzm900ca4wt93qtus3e5	cmawwzzm900ce4wt9rl6kuhg3
cmawwzzm900ca4wt93qtus3e5	cmawwzzm900cf4wt9j3tgbbj0
cmawwzzm900ca4wt93qtus3e5	cmawwzzm900cg4wt9jyeiurg9
cmawwzzm900ca4wt93qtus3e5	cmawwzzm900ch4wt9ed0x9gxu
cmawx006l00dy4wt9j9hdbiaz	cmawx006l00dz4wt9ackv0j7x
cmawx006l00dy4wt9j9hdbiaz	cmawx006l00e04wt9h1ulo4cr
cmawx006l00dy4wt9j9hdbiaz	cmawx006l00e14wt90526xir3
cmawx006l00dy4wt9j9hdbiaz	cmawwzyfi008g4wt9rjs1bjzj
cmawx006l00dy4wt9j9hdbiaz	cmawx006l00e34wt9ai4z8w9l
cmawx006l00dy4wt9j9hdbiaz	cmawx006l00e44wt9luyuoc1c
cmawx006l00dy4wt9j9hdbiaz	cmawx006l00e54wt9iarhpmqv
cmawx00or00fj4wt9wtc8azz4	cmawx00or00fk4wt9viwhqrdu
cmawx00or00fj4wt9wtc8azz4	cmawx00or00fl4wt92r03w4u7
cmawx00or00fj4wt9wtc8azz4	cmawx00or00fm4wt9jx1tzps4
cmawx00or00fj4wt9wtc8azz4	cmawx00or00fn4wt9ljhl4obh
cmawx00or00fj4wt9wtc8azz4	cmawx00or00fo4wt9ht8t35k0
cmawx00or00fj4wt9wtc8azz4	cmawx00or00fp4wt94y93emh0
cmawx00or00fj4wt9wtc8azz4	cmawwzzm900ch4wt9ed0x9gxu
cmawx012x00gm4wt9bzlnwl97	cmawx006l00dz4wt9ackv0j7x
cmawx012x00gm4wt9bzlnwl97	cmawx006l00e04wt9h1ulo4cr
cmawx012x00gm4wt9bzlnwl97	cmawx006l00e14wt90526xir3
cmawx012x00gm4wt9bzlnwl97	cmawwzyfi008g4wt9rjs1bjzj
cmawx012x00gm4wt9bzlnwl97	cmawx006l00e34wt9ai4z8w9l
cmawx012x00gm4wt9bzlnwl97	cmawx006l00e44wt9luyuoc1c
cmawx012x00gm4wt9bzlnwl97	cmawx006l00e54wt9iarhpmqv
cmawx01ph00ia4wt9oj70r7v0	cmawwzy9q007p4wt923ood4kd
cmawx01ph00ia4wt9oj70r7v0	cmawwzyfi008g4wt9rjs1bjzj
cmawx01ph00ia4wt9oj70r7v0	cmawx01ph00id4wt9zv7dy3rp
cmawx01ph00ia4wt9oj70r7v0	cmawwzzm900cc4wt9qbip2fpj
cmawx01ph00ia4wt9oj70r7v0	cmawx00or00fm4wt9jx1tzps4
cmawx01ph00ia4wt9oj70r7v0	cmawx01ph00ig4wt9u46rb0bx
cmawx01ph00ia4wt9oj70r7v0	cmawx01ph00ih4wt9m6toz3lc
cmawx026c00js4wt9t45otcch	cmawx00or00fk4wt9viwhqrdu
cmawx026c00js4wt9t45otcch	cmawx00or00fm4wt9jx1tzps4
cmawx026c00js4wt9t45otcch	cmawx00or00fp4wt94y93emh0
cmawx026c00js4wt9t45otcch	cmawwzzm900ch4wt9ed0x9gxu
cmawx026c00js4wt9t45otcch	cmawx026c00jx4wt9jfd4tf9o
cmawx026c00js4wt9t45otcch	cmawx026c00jy4wt92z08eln3
cmawx028p00k64wt9u1hmtoh4	cmawx028q00k74wt9f1kdg5t9
cmawx028p00k64wt9u1hmtoh4	cmawx028q00k84wt9mm9x7ker
cmawx028p00k64wt9u1hmtoh4	cmawx028q00k94wt92jdo2jdo
cmawx028p00k64wt9u1hmtoh4	cmawx028q00ka4wt9si1i0epl
cmawx028p00k64wt9u1hmtoh4	cmawx028q00kb4wt9r955lxxz
cmawx02ob00lj4wt9rqrd4trk	cmawx02ob00lk4wt9zz3kvli1
cmawx02ob00lj4wt9rqrd4trk	cmawx02ob00ll4wt93ub7n5az
cmawx02ob00lj4wt9rqrd4trk	cmawx02ob00lm4wt9px5roe6n
cmawx02ob00lj4wt9rqrd4trk	cmawx02ob00ln4wt9p19k14df
cmawx02ob00lj4wt9rqrd4trk	cmawx02ob00lo4wt9795xwjlk
cmawx02ob00lj4wt9rqrd4trk	cmawx02ob00lp4wt906ggya1q
cmawx02ob00lj4wt9rqrd4trk	cmawx028q00ka4wt9si1i0epl
cmawx02ob00lj4wt9rqrd4trk	cmawx028q00kb4wt9r955lxxz
cmawx039n00ne4wt96w5xleul	cmawx039n00nf4wt9lrpxl1ol
cmawx039n00ne4wt96w5xleul	cmawx039n00ng4wt9bl1h58ea
cmawx039n00ne4wt96w5xleul	cmawx039n00nh4wt92oabomvk
cmawx039n00ne4wt96w5xleul	cmawwzvz4000s4wt9v7kgf4s3
cmawx039n00ne4wt96w5xleul	cmawwzvz4000t4wt9jqlk94yt
cmawx03sg00p04wt9vpd3ggrw	cmawx039n00nf4wt9lrpxl1ol
cmawx03sg00p04wt9vpd3ggrw	cmawx039n00ng4wt9bl1h58ea
cmawx03sg00p04wt9vpd3ggrw	cmawx039n00nh4wt92oabomvk
cmawx03sg00p04wt9vpd3ggrw	cmawwzvz4000s4wt9v7kgf4s3
cmawx03sg00p04wt9vpd3ggrw	cmawwzvz4000t4wt9jqlk94yt
cmawx045k00q74wt9igaq26lw	cmawwzvz4000u4wt9olakkk1z
cmawx045k00q74wt9igaq26lw	cmawx045k00q94wt9p1fptj2u
cmawx045k00q74wt9igaq26lw	cmawx045l00qa4wt9je9hgpbn
cmawx045k00q74wt9igaq26lw	cmawx045l00qb4wt9ztdi8lhp
cmawx04ot00rs4wt93cg994tl	cmawwzvz4000u4wt9olakkk1z
cmawx04ot00rs4wt93cg994tl	cmawx04ot00ru4wt9c6i0z9qd
cmawx04ot00rs4wt93cg994tl	cmawx04ot00rv4wt93y94gswt
cmawx04zu00sr4wt90ejbktsa	cmawx04zu00ss4wt91q0kz2q5
cmawx04zu00sr4wt90ejbktsa	cmawx04zu00st4wt9etdgqxqn
cmawx04zu00sr4wt90ejbktsa	cmawx04zu00su4wt96ky11u6t
cmawx04zu00sr4wt90ejbktsa	cmawx04zu00sv4wt9su77i5xe
cmawx04zu00sr4wt90ejbktsa	cmawx04zu00sw4wt9285epod0
cmawx04zu00sr4wt90ejbktsa	cmawx04zu00sx4wt9kwsgwfv0
cmawx058p00tn4wt980t6tgzf	cmawx058q00to4wt9xg8o9g8y
cmawx058p00tn4wt980t6tgzf	cmawx04zu00sv4wt9su77i5xe
cmawx058p00tn4wt980t6tgzf	cmawx04zu00st4wt9etdgqxqn
cmawx058p00tn4wt980t6tgzf	cmawx058q00tr4wt9kyx8ftp4
cmawx058p00tn4wt980t6tgzf	cmawx058q00ts4wt9y34jt546
cmawx058p00tn4wt980t6tgzf	cmawx058q00tt4wt96e68zrle
cmawx058p00tn4wt980t6tgzf	cmawx04zu00sx4wt9kwsgwfv0
cmawx05c600u54wt9mg02c50q	cmawx05c600u64wt9w1tnbtw2
cmawx05c600u54wt9mg02c50q	cmawx05c600u74wt90e9ad489
cmawx05c600u54wt9mg02c50q	cmawx05c600u84wt9rp22ahgj
cmawx05c600u54wt9mg02c50q	cmawx05c600u94wt9s2u1tqxh
cmawx05c600u54wt9mg02c50q	cmawx028q00ka4wt9si1i0epl
cmawx05c600u54wt9mg02c50q	cmawx028q00kb4wt9r955lxxz
cmawx05v000vs4wt9i59jkfuz	cmawx05c600u64wt9w1tnbtw2
cmawx05v000vs4wt9i59jkfuz	cmawx05v000vu4wt9ugk5vp3t
cmawx05v000vs4wt9i59jkfuz	cmawx05v000vv4wt9wkfzl5br
cmawx05v000vs4wt9i59jkfuz	cmawx05v000vw4wt93t9eaphi
cmawx05v000vs4wt9i59jkfuz	cmawx05v100vx4wt9iak4c7wd
cmawx05v000vs4wt9i59jkfuz	cmawx028q00ka4wt9si1i0epl
cmawx05v000vs4wt9i59jkfuz	cmawx028q00kb4wt9r955lxxz
cmawx06ah00x74wt9ydhtje39	cmawx06ah00x84wt9xqgarj3j
cmawx06ah00x74wt9ydhtje39	cmawx06ah00x94wt92fn55rpr
cmawx06ah00x74wt9ydhtje39	cmawx06ah00xa4wt99mq6700p
cmawx06ah00x74wt9ydhtje39	cmawx06ah00xb4wt945evgws1
cmawx06ah00x74wt9ydhtje39	cmawx06ah00xc4wt995j3w071
cmawx06ah00x74wt9ydhtje39	cmawx06ah00xd4wt9ewvdlima
cmawx06vz00yu4wt9bc7s0gml	cmawx06vz00yv4wt9rgke9mea
cmawx06vz00yu4wt9bc7s0gml	cmawx06vz00yw4wt928z4kcow
cmawx06vz00yu4wt9bc7s0gml	cmawx06vz00yx4wt9b81asscq
cmawx06vz00yu4wt9bc7s0gml	cmawx06vz00yy4wt9ofu7d6mm
cmawx06vz00yu4wt9bc7s0gml	cmawx06vz00yz4wt9xp9gj2rr
cmawx075500zp4wt9vhrtayh9	cmawx075500zq4wt9cxpc6e69
cmawx075500zp4wt9vhrtayh9	cmawx075500zr4wt9hmflijp1
cmawx075500zp4wt9vhrtayh9	cmawx075500zs4wt9rjo87tn7
cmawx075500zp4wt9vhrtayh9	cmawx075500zt4wt9vo1hijjb
cmawx075500zp4wt9vhrtayh9	cmawx028q00kb4wt9r955lxxz
cmawx075500zp4wt9vhrtayh9	cmawx028q00ka4wt9si1i0epl
cmawx07mb01164wt9y44dhos0	cmawx07mb01174wt9x1jku9k7
cmawx07mb01164wt9y44dhos0	cmawx07mb01184wt98gk8qaxn
cmawx07mb01164wt9y44dhos0	cmawx075500zs4wt9rjo87tn7
cmawx07mb01164wt9y44dhos0	cmawx075500zt4wt9vo1hijjb
cmawx07mb01164wt9y44dhos0	cmawx028q00ka4wt9si1i0epl
cmawx07mb01164wt9y44dhos0	cmawx028q00kb4wt9r955lxxz
cmccnongc000wc7xfsyd8hr37	cmc85xl300003ts960zphstr6
cmccnongc000wc7xfsyd8hr37	cmccnongd0010c7xfnmzrz67a
cmccnongc000wc7xfsyd8hr37	cmc85xl300002ts96fak0e4pf
cmcd9m4w0001cc7xfi6w9f09r	cmc85xl300003ts960zphstr6
cmcd9m4w0001cc7xfi6w9f09r	cmcd9m4w1001ec7xfhmz723e0
cmcd9m4w0001cc7xfi6w9f09r	cmcd9m4w1001fc7xfnbu7vhyc
cmcdfac4c002gc7xfocmkpodv	cmc85xl300003ts960zphstr6
cmcdfac4c002gc7xfocmkpodv	cmcd9m4w1001fc7xfnbu7vhyc
cmcf7ilp6001ct1amaoj4kh2m	cmc85xl300002ts96fak0e4pf
\.


--
-- Data for Name: channel; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.channel (id, slug, description, is_verified, avatar_url, banner_url, user_id, created_at, updated_at) FROM stdin;
cmawwzvpy00034wt95y2nwftb	redgroup-plus	Новый канал от RED Group. Здесь будут выходить расширенные материалы, более подробные и скучные гайды, а также 5-часовые практики больших проектов.	f	/uploads/avatars/redgroup-plus.jpg	/uploads/banners/redgroup-plus.jpg	cmawwzvpx00024wt9kvly0uo6	2025-05-20 19:36:12.886	2025-05-20 19:36:12.886
cmawwzvr500054wt9ahq5ovxu	his	Channel about self-improvement and productivity	f	/uploads/avatars/his.jpg		cmawwzvr400044wt9efoisp15	2025-05-20 19:36:12.929	2025-05-20 19:36:12.929
cmawwzvs800074wt9do12tffp	maddixmusic	Dutch DJ/producer Maddix is known for his genre-breaking techno-rave sound, infused with big room and trance influences.	f	/uploads/avatars/maddix.jpg	/uploads/banners/maddix-banner.jpg	cmawwzvs700064wt9b2g2pz3k	2025-05-20 19:36:12.969	2025-05-20 19:36:12.969
cmawwzvtc00094wt92ot2cfpt	maisyleigh	Hi! I`m Maisy! Bringing cozy creations to life, finding my zen, and sharing my cozy lifestyle :)	t	/uploads/avatars/cozya.jpg	/uploads/banners/cozy.jpg	cmawwzvtb00084wt9epygzuv8	2025-05-20 19:36:13.009	2025-05-20 19:36:13.009
cmawwzvuj000b4wt9me35pnha	kuruchbro		f	/uploads/avatars/kuruch.jpg	/uploads/banners/kuruchb.jpg	cmawwzvui000a4wt9wob6nm2u	2025-05-20 19:36:13.052	2025-05-20 19:36:13.052
cmawwzvvo000d4wt9vfirhc8a	spawnpoiint	SpawnPoiint: Weekly videos about Tech, Gaming and Setups! Bringing you high quality and aesthetically pleasing content from the UK. Reviewing the latest smart home tech, PlayStation, Xbox, TV Setups, Desk Setups, Apple, Gaming and more. Everything you see is recorded on an iPhone.	t	/uploads/avatars/spawn.jpg	/uploads/banners/spawnb.jpg	cmawwzvvn000c4wt98ia9wd91	2025-05-20 19:36:13.093	2025-05-20 19:36:13.093
cmawwzvws000f4wt9yoogtf4r	johnsummit	forever trying to find comfort in chaos..	t	/uploads/avatars/john.jpg	/uploads/banners/johnb.jpg	cmawwzvwr000e4wt9y3pkqm8k	2025-05-20 19:36:13.133	2025-05-20 19:36:13.133
cmawwzvxx000h4wt9m9pa0271	visualdon	3D Visual Artist. I make Retro & Space visuals.	t	/uploads/avatars/visual.jpg	/uploads/banners/visualb.jpg	cmawwzvxw000g4wt90zexbrtg	2025-05-20 19:36:13.173	2025-05-20 19:36:13.173
cmawwzvz1000j4wt9qrdl91ks	tomorrowlandchannel	Relive all the magical moments of Tomorrowland all year long.	t	/uploads/avatars/tomorrow.jpg	/uploads/banners/tomorrowb.jpg	cmawwzvz0000i4wt9hgb2rpm6	2025-05-20 19:36:13.213	2025-05-20 19:36:13.213
cmcclfbz60016kovgwtkmg3so	Test slug	For tests	f	/uploads/avatars/f8dbac256084.png	/uploads/banners/745fefcc1f7f.png	cmbhzh70200028ljx91rnqmnl	2025-06-25 23:36:19.554	2025-06-25 23:46:52.255
cmawwzvok00014wt9uin2kpaw	redgroup	htmllessons.io - Интенсивы #1 по веб разработке,  наша главная цель — подготовить профессионалов.	t	/uploads/avatars/e0951a41664a.png	/uploads/banners/365a4e66bbe3.png	cmawwzvog00004wt9mwvejbx1	2025-05-20 19:36:12.837	2025-06-27 19:07:04.237
\.


--
-- Data for Name: playlist; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.playlist (id, title, user_id, created_at, updated_at) FROM stdin;
cmc6wovs90017hxs96rlv4xhm	Test	cmawwzvog00004wt9mwvejbx1	2025-06-22 00:05:03.849	2025-06-22 00:05:03.849
cmccm36sm0001c7xf0a1tirsg	Playlist 1	cmbhzh70200028ljx91rnqmnl	2025-06-25 23:54:52.582	2025-06-25 23:54:52.582
cmccm4nyf0009c7xflcbd93if	Music	cmbhzh70200028ljx91rnqmnl	2025-06-25 23:56:01.479	2025-06-25 23:56:01.479
cmccmisq8000fc7xfkx14o6ab	Beauty	cmbhzh70200028ljx91rnqmnl	2025-06-26 00:07:00.847	2025-06-26 00:07:00.847
cmcf6q62j0009oay7folt62nv	Test playlist	cmawwzvs700064wt9b2g2pz3k	2025-06-27 19:08:09.403	2025-06-27 19:08:09.403
\.


--
-- Data for Name: user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."user" (id, name, email, password, verification_token, created_at, updated_at) FROM stdin;
cmawwzvpx00024wt9kvly0uo6	RED Group +	redgroup-plus@test.com	$argon2id$v=19$m=65536,t=3,p=4$VK20qb6/MudustRvemr23A$JLoqfFfh2kTrGVxL27RN3tx67dSaVQjxvzKL4F7RT3s	5ef38c87-7683-4461-83b8-e68e2a0f79ea	2025-05-20 19:36:12.886	2025-05-20 19:36:12.886
cmawwzvr400044wt9efoisp15	Hustle in Silence	his@test.com	$argon2id$v=19$m=65536,t=3,p=4$muoL8U+3FabrOhTtXPHBFQ$HhtuRQgMhmqRyrTtSpqqv/xFYKNTMN/o2T4AFgLtzyg	84a2f3c0-24a3-4734-8734-c76bb645e5e3	2025-05-20 19:36:12.928	2025-05-20 19:36:12.928
cmawwzvs700064wt9b2g2pz3k	Maddix // EXTATIC	maddixmusic@test.com	$argon2id$v=19$m=65536,t=3,p=4$lNqPIiiIqu3EOlr5qoJTxA$IOArdQFKIhM35fU69+VjHPEd1cTxG8TbFJlbN/QTdYU	4f004dba-2c97-4069-852c-2c28ce07abf6	2025-05-20 19:36:12.968	2025-05-20 19:36:12.968
cmawwzvtb00084wt9epygzuv8	Maisy Leigh	maisyleigh@test.com	$argon2id$v=19$m=65536,t=3,p=4$xQWBf/L6oHs1ip2+ToZRuw$ltqkSAyr4XeVen1YP3UOHQ+htej3yc0iYWBYZpDEEps	34a08f80-1848-4d6f-8eaa-dcac4c4564b8	2025-05-20 19:36:13.007	2025-05-20 19:36:13.007
cmawwzvui000a4wt9wob6nm2u	KURUCHBRO	kuruchbro@test.com	$argon2id$v=19$m=65536,t=3,p=4$RR7/VfflyoaKnRphXFeboA$kRFV6Os+AErOfnb46Um3wVADqVifgcAA4E3G48vtP/A	f5c4998c-c942-4396-a076-6334dda50ebc	2025-05-20 19:36:13.051	2025-05-20 19:36:13.051
cmawwzvvn000c4wt98ia9wd91	SpawnPoiint	spawnpoiint@test.com	$argon2id$v=19$m=65536,t=3,p=4$zwAFC6dS3mXUx4DnjTTcHw$nIHnWP6RdNtduk6chdMhF9AGR9e10b8TMgnvAztmxBE	add7554f-2df0-44a7-9296-fe60bac1eab3	2025-05-20 19:36:13.092	2025-05-20 19:36:13.092
cmawwzvwr000e4wt9y3pkqm8k	John Summit	johnsummit@test.com	$argon2id$v=19$m=65536,t=3,p=4$GUSYGdBspAVVSiJ9KgJkAw$PNTXtcj/dF2/uoBmu/eKKA/enVi7AzblmTzyRrvk3ak	a3314ba0-be03-4940-a7e0-ae1cfe95bfdf	2025-05-20 19:36:13.132	2025-05-20 19:36:13.132
cmawwzvxw000g4wt90zexbrtg	VISUALDON	visualdon@test.com	$argon2id$v=19$m=65536,t=3,p=4$cdsStCkGrJU6iyJNAB76ew$j8rb5k7B435zv9ozi+VEjNW7gRdp4aY7BHn6I53XkaM	0faf1a0a-faac-42ec-b24b-43a6e8f03d73	2025-05-20 19:36:13.173	2025-05-20 19:36:13.173
cmawwzvz0000i4wt9hgb2rpm6	Tomorrowland	tomorrowlandchannel@test.com	$argon2id$v=19$m=65536,t=3,p=4$3Jjbmsyi/+JYcgWqeeoHCw$kXAPKeb48WLuNXU7n8wPhU7iYKXN5ASO4XCETQManOg	714feb54-a60d-4349-ba98-49d87a370d11	2025-05-20 19:36:13.213	2025-05-20 19:36:13.213
cmawwzw0o000v4wt9ok2a006k	Kirk Dare	Elouise_Christiansen-Kub@yahoo.com	$argon2id$v=19$m=65536,t=3,p=4$ds8AFNGS1J25TnwwBN4CQA$5yL4dgkjP0E5RYIN0wpaV6o+/ic/SGXq/4VwHj6MBZc	3007c7d7-7476-4c1d-aac3-2184e946b9a0	2025-05-20 19:36:13.272	2025-05-20 19:36:13.272
cmawwzw2l000y4wt90j5gor81	Monica Waelchi	Henry.Raynor-Lueilwitz92@hotmail.com	$argon2id$v=19$m=65536,t=3,p=4$VQPAOxnb1e+RFzUSnHBgeQ$oUeCi63pgIPxmZdK/Gx4ZJ3kbh64eVsAreDly7Yr5yw	15f13c29-b4a6-4c50-a783-197117a7b2ad	2025-05-20 19:36:13.342	2025-05-20 19:36:13.342
cmawwzw4h00114wt9577hsijm	Gilbert Nikolaus	Rosetta58@hotmail.com	$argon2id$v=19$m=65536,t=3,p=4$VjA8FXtLCdwRT2mJ+c/Vow$zPHPe+YBXfrwJphK9zV7yejahu3qFQXj5p37x+DM4vM	26e727fd-ab05-4b9e-a630-4749ad6a689c	2025-05-20 19:36:13.41	2025-05-20 19:36:13.41
cmawwzw6m00144wt9220jqruw	Antonia Doyle-Walker	Armando_Langosh26@yahoo.com	$argon2id$v=19$m=65536,t=3,p=4$ApaqK31C4KxrNui5v1a+Ow$Tz+5TaqA3KrVzbj4jQRL6XpxtbCEZkCWuoq8dOcjU5c	33b2bbd5-4d8b-4708-9a78-75700018f3f6	2025-05-20 19:36:13.486	2025-05-20 19:36:13.486
cmawwzw8n00174wt9rjfajvwi	Laverne Rice	Mathew.Romaguera@hotmail.com	$argon2id$v=19$m=65536,t=3,p=4$ZDtGVFG2o6Fk5vM+KSgCNQ$XDS6UmKE4MILKM3INc19GWiUk9NxibWrB/DV8gsPno0	fa5c7c1b-090a-488a-9123-240210e1d267	2025-05-20 19:36:13.559	2025-05-20 19:36:13.559
cmawwzwad001a4wt9nbwzbeh8	Pete Ratke	Marjory_Kovacek@yahoo.com	$argon2id$v=19$m=65536,t=3,p=4$F95aaWib610KAVUhD+Tn0A$LjxjD8PvRNFOb9oIS5jUfiV721sE2itbxcEVwsIbhfI	dd05f6ea-f802-463f-b969-4e8ffee311eb	2025-05-20 19:36:13.621	2025-05-20 19:36:13.621
cmawwzwc1001d4wt93si4ixot	Lauren Halvorson	Kamron_Wiza@gmail.com	$argon2id$v=19$m=65536,t=3,p=4$nsxJYuY4BPIfPyphwgv5cg$R2PYbq21EeT98RQ44G97KZ00GCDe3cjjNDvAn0cAxPU	eb8a93da-9934-4b74-8fc5-b09975e7a2b1	2025-05-20 19:36:13.682	2025-05-20 19:36:13.682
cmawwzwd8001g4wt9m1liwtuf	Colleen Stiedemann	Ross56@gmail.com	$argon2id$v=19$m=65536,t=3,p=4$UrM+fbzQsqePtuE2Sf9cpg$E8V3pxOsVKDYwwxnEIgYzvLMUKkOLeNyh7NsVbL/GOg	89212a56-5696-44a5-9691-89cb98293917	2025-05-20 19:36:13.725	2025-05-20 19:36:13.725
cmawwzwed001j4wt9jhe2amid	Ruben Rempel	Emery_Nicolas38@gmail.com	$argon2id$v=19$m=65536,t=3,p=4$rpKre2Nydy8fZkHqcUpVhA$zvxTYSvOFkBcvunyX0X/QztYCDic56rLmBhTQS0zvxs	54ffef77-e69f-42ed-9564-19e8ea4a1927	2025-05-20 19:36:13.765	2025-05-20 19:36:13.765
cmawwzwfg001m4wt99r70ca6f	Terry Gleason	Gwendolyn51@gmail.com	$argon2id$v=19$m=65536,t=3,p=4$vHvGzqhGVdDiodRaFiqB7A$6huvuv+lAtvXAXQgAkbrCejBhS5+h+riW4J5dZaUiuM	d6f52f29-ef3f-4ac4-9b5d-6045e3950db8	2025-05-20 19:36:13.805	2025-05-20 19:36:13.805
cmawwzwgl001p4wt9eey8oegt	Dale Schmitt	Xander.Abbott@hotmail.com	$argon2id$v=19$m=65536,t=3,p=4$UF+i9JLirYVtQQlEAyKd0Q$L78nTytDL78fbVkgyOeuA/2x+olvbC6ZYqi9lscBrwY	c57d8037-d635-4991-bd4a-dca68c5c06a4	2025-05-20 19:36:13.845	2025-05-20 19:36:13.845
cmawwzwhp001s4wt9la95mavd	Wayne Stokes	Hudson.Wisozk93@yahoo.com	$argon2id$v=19$m=65536,t=3,p=4$Hx5LckCJYweQJ1Lc4yyl8g$zkxxEsJDsOVv0NRnz/kleSrHBRZaKvgC/YkyMaREKhw	7b6c968e-cb48-4b32-98d9-af6f8643e5f0	2025-05-20 19:36:13.886	2025-05-20 19:36:13.886
cmawwzwis001v4wt9nyb6k54x	Natalie Mayer	Marcia71@gmail.com	$argon2id$v=19$m=65536,t=3,p=4$3Si8tkyosp0PKaX70D3tnQ$UdJIVW//sZJ5X1nY522aT6FgqJEGsdwQis4vom9tJSM	caee5c92-7f2e-4c6d-bf30-185ec6780fc5	2025-05-20 19:36:13.925	2025-05-20 19:36:13.925
cmawwzwjw001y4wt9jsqfdxoi	Mr. Clifton Kuhlman	Yolanda.Runolfsson@hotmail.com	$argon2id$v=19$m=65536,t=3,p=4$pHb21xMA+faH+e48Rjvneg$CMJaKw1RwTTB0JSDXGuwrk4xzkD+EnyJPODw/hhrQtk	cee8cdfe-9d87-48ce-bb8c-31e5cddf642c	2025-05-20 19:36:13.964	2025-05-20 19:36:13.964
cmawwzwlb002d4wt9ed24xyya	Darlene Beahan	Arjun_Kling@gmail.com	$argon2id$v=19$m=65536,t=3,p=4$kg6IrP88gcsYyrPCfMlFqA$5so+ycNZp3R6PAFHzjSvIs1JkDdhgYMmd3ucLUxdvjQ	a3472b0a-1699-4ed2-a2f2-fbee99beadd0	2025-05-20 19:36:14.016	2025-05-20 19:36:14.016
cmawwzwme002g4wt9roohv6vj	Dr. Dorothy Dicki	Graham83@yahoo.com	$argon2id$v=19$m=65536,t=3,p=4$PTYvj/PYcV5BCWf7r4vrAw$yvHXViVh9hRmjx+Sa3uZoO3QKEaP2ccX060yP2bkSdg	36b3ad48-1b94-49ac-b0a5-34ef764fe4ec	2025-05-20 19:36:14.054	2025-05-20 19:36:14.054
cmawwzwng002j4wt9ay2cdg5l	Florence Walker	Ned_Gorczany@hotmail.com	$argon2id$v=19$m=65536,t=3,p=4$eNwaf+zdCS2lE4Rd+wvnvA$CC3Nftaf885OMd3yq67FCgASMqdOWVh7JEv0noAIO4c	681ced75-a58b-4a9d-9817-c1a37294279c	2025-05-20 19:36:14.093	2025-05-20 19:36:14.093
cmawwzwoi002m4wt94o4p5jnm	Marjorie Schamberger	Jacynthe_McKenzie@gmail.com	$argon2id$v=19$m=65536,t=3,p=4$JbhIEnH+sLrAe7mgAvUwLQ$0v8+AD1+nRFzI9Lhm23B8tjzsuK0s9QY1mZt80SNr30	e8d7a79e-5ef1-4ddf-a7a6-50d8cba3724c	2025-05-20 19:36:14.131	2025-05-20 19:36:14.131
cmawwzwpl002p4wt9jwe5ci6h	Mr. Randolph Rutherford	Isom.King@yahoo.com	$argon2id$v=19$m=65536,t=3,p=4$668pkuUC2Xaid6sdwbxnlg$5aTCfwjgO84VyNJwDIbkSRzet+Ciko7hwBQeEvbxI6c	fb122c88-9e42-44da-ace6-d78147475c88	2025-05-20 19:36:14.17	2025-05-20 19:36:14.17
cmawwzwqo002s4wt9lrdvr2t5	Mr. Alton Runolfsson	Chester.Hodkiewicz@hotmail.com	$argon2id$v=19$m=65536,t=3,p=4$q7j887W8zqTGxx5ZomxdxA$CfA9CS1+9h5HtKELlfXFz0SkSeNN0bjGkPEtYzXFwIY	8bbee549-bfdf-4207-a255-52a2fb8c800d	2025-05-20 19:36:14.209	2025-05-20 19:36:14.209
cmawwzwrq002v4wt91xc5gylw	Leroy Gleason	Veda_Auer@gmail.com	$argon2id$v=19$m=65536,t=3,p=4$WOkdyb/wJfjEpzD6VWTPzA$1mlHq7apSiApR5KeY+0XDCzTJSlnAwl7S+VwJhw8vdU	90544158-0779-4a7b-8804-b67032e717b1	2025-05-20 19:36:14.247	2025-05-20 19:36:14.247
cmawwzwss002y4wt9yatyy4fz	Roxanne Harber	Hazle_Schamberger36@gmail.com	$argon2id$v=19$m=65536,t=3,p=4$muUWx0X+4wS5HqQ2f54N4Q$XX7aiTcSO4CfCLGl0mp1l7BkedTI3PmCYVM6oyLKIEs	8391d8b9-01e4-4b74-985b-115ba2301bd4	2025-05-20 19:36:14.285	2025-05-20 19:36:14.285
cmawwzwu2003c4wt928qqtkul	Jeanne Harber	Lindsay_Runte20@yahoo.com	$argon2id$v=19$m=65536,t=3,p=4$sJaMZPRyTFp/ZSZog+aSDg$yo18kEotK9FeUCZ25IEPvCFv1Nb4h90/Bo7bqvyDIv0	9f18466c-5a9f-4c62-b125-00531da679e2	2025-05-20 19:36:14.33	2025-05-20 19:36:14.33
cmawwzwvb003f4wt9qjz18ez4	Natalie Osinski	Donnie58@hotmail.com	$argon2id$v=19$m=65536,t=3,p=4$K/xMdusRF55vVsmjQmL0SA$eO+vv21TQI/azTari/Ti8MJaOSAgVD8D7XmAGnMcfCY	fff2376d-4756-4620-b250-61de3c5feb8c	2025-05-20 19:36:14.375	2025-05-20 19:36:14.375
cmawwzwwe003i4wt9o697hm6b	Ervin Morar	Alfred_Swaniawski@yahoo.com	$argon2id$v=19$m=65536,t=3,p=4$XuQ8Pjp9FIvp7BF4fTtzMw$PCi2SYWlP1MA5jz1dQSsX49L1lLiadztrR3h6A2j+WM	3f1707c5-6f8a-4b28-b7b0-dda07e040e0f	2025-05-20 19:36:14.415	2025-05-20 19:36:14.415
cmawwzwxi003l4wt9y0i3cpcc	Marianne Stokes	Adam_Douglas@gmail.com	$argon2id$v=19$m=65536,t=3,p=4$n3yCc368oaEjXD59ddA1tA$4ArbldmBCPcJW+LBTNSnES+eyK4nyK3+NQoGtEsSFzM	6a1daa35-03f1-493b-bddb-da304785610e	2025-05-20 19:36:14.454	2025-05-20 19:36:14.454
cmawwzwym003o4wt96frf8th0	Lonnie Feil	Tyra.Wehner-Schoen50@hotmail.com	$argon2id$v=19$m=65536,t=3,p=4$DRl4zOmwz9ckLK/J5Tr5IQ$evExSqIdE0mzbcAUje7fX9EOzd9SKs4LTEMr8sD+fnU	745dbdf6-6812-49ca-b6cd-e449773ef79e	2025-05-20 19:36:14.495	2025-05-20 19:36:14.495
cmawwzwzq003r4wt9omsrjpfl	Bobbie Padberg	Brandon4@hotmail.com	$argon2id$v=19$m=65536,t=3,p=4$DlWwIe5dB4SYFuVs4NzWRg$ZmR+68JYvzPPayvcSxDpOfFeGRa+37WJxeXODBgom54	5fad2f93-948e-4164-9bc4-433a65e11374	2025-05-20 19:36:14.534	2025-05-20 19:36:14.534
cmawwzx0u003u4wt9247k9qmp	Owen Volkman	Tessie.Littel@gmail.com	$argon2id$v=19$m=65536,t=3,p=4$rRYjNRMKJoUrXWzrGGBNng$SU2KONiYDkP/263BjhZ6z9Tw9HZ6dq2pDoDME16LttA	9718161c-6bad-44af-9131-313b5e59da6b	2025-05-20 19:36:14.574	2025-05-20 19:36:14.574
cmawwzx1w003x4wt9vvrrd99h	Joanne Jacobson	Jerod_Wisoky@yahoo.com	$argon2id$v=19$m=65536,t=3,p=4$TPxbmWt13/8rjQ7MNKEAAA$czxlSdtliUOC16CevvEAzfxVbEYGyZz/wzwAd/2M6n0	d4140007-8e9e-481f-a84b-11b43cedb167	2025-05-20 19:36:14.613	2025-05-20 19:36:14.613
cmawwzx2z00404wt9rq0euynj	Maria Price PhD	Filomena7@gmail.com	$argon2id$v=19$m=65536,t=3,p=4$ekUej2Tf4PmJaV+ekAFWTw$iWEyGE2MPBbMRLhpA82TqSnfcn6Uge0V6QTk+OORpQM	281d2205-479d-4a61-b4f9-f970e72bbd8c	2025-05-20 19:36:14.651	2025-05-20 19:36:14.651
cmawwzx4200434wt9llisglvn	Mr. Ray Keeling Sr.	Angelita.Kautzer21@gmail.com	$argon2id$v=19$m=65536,t=3,p=4$/6YLAcdI9poRtuY5zc/1cg$8KpycYO1UUKAxcd4XvgB6fPGVDpRUcjq+kWskEX48Io	6ccd75bb-ca4c-4453-80d2-a5d5a6a66214	2025-05-20 19:36:14.691	2025-05-20 19:36:14.691
cmawwzx5400464wt9c8j69ark	Olive Beier Jr.	Rachelle.Ziemann76@hotmail.com	$argon2id$v=19$m=65536,t=3,p=4$FGVsDzyqqik65Ws5h7SFdA$VQknMcCDzA4ySo4KdkJ3q/mLn12WgMeDgCi/OiFE7e8	af665b45-9bcd-495c-899c-06ab0be29aa6	2025-05-20 19:36:14.728	2025-05-20 19:36:14.728
cmawwzx6i004i4wt9pl2nycaz	Archie Tremblay	Imani8@gmail.com	$argon2id$v=19$m=65536,t=3,p=4$L7Ku/aOaBLiHPlRi1KzwkA$/8zoT6YyrlgqRjM0QGcW+QjjdmyZ/4fj/hUYQxGp/hA	b0f5bed5-1e83-4f78-b4fa-bc31757003be	2025-05-20 19:36:14.778	2025-05-20 19:36:14.778
cmawwzx7m004l4wt9oh5kk86c	Luz Cormier	Celestine80@hotmail.com	$argon2id$v=19$m=65536,t=3,p=4$u6CEW7w4XHkV6LDoJFzqZA$P2yjb9P+G6NAyLeNZUmRrqIgoWKSL4Qn+uVQh4Wb2bQ	b2f8337d-234d-415d-b77b-980871816455	2025-05-20 19:36:14.818	2025-05-20 19:36:14.818
cmawwzx8n004o4wt9xs8pxzwk	Jana Goyette II	Roel26@hotmail.com	$argon2id$v=19$m=65536,t=3,p=4$iEVhXm37kwkvr9vA+GhnVA$JrMDD/ofHwiDZPzPMK5KOjicixqXhLsBXcdojnOTTWk	323592ed-f8f4-4e48-bfcd-fc1fc00c4dbe	2025-05-20 19:36:14.856	2025-05-20 19:36:14.856
cmawwzx9r004r4wt9y4jp7x9n	Reginald Wolf	Remington_Wilderman@yahoo.com	$argon2id$v=19$m=65536,t=3,p=4$efZQdcpQOD52zdP/NRHhYA$UFVwiQMZlaLFEFjRSQ68c278ot3xm6deNPxgluX/Ozc	98bc0670-1189-42d6-a866-fa9ab573d62a	2025-05-20 19:36:14.895	2025-05-20 19:36:14.895
cmawwzxax004u4wt9bd7auth5	Luz Kuvalis	Adolphus_OHara@gmail.com	$argon2id$v=19$m=65536,t=3,p=4$EWQ7osjdW4vBthcKwUEf4g$6ngBn11YTyS1o4wjQYsjhX4ME0WCWk11Oraio5joHYI	53921b31-6ce2-4e19-8cde-4672ec119f8b	2025-05-20 19:36:14.937	2025-05-20 19:36:14.937
cmawwzxc1004x4wt9yoiexeq2	Dr. Noel Lynch	Ellie32@yahoo.com	$argon2id$v=19$m=65536,t=3,p=4$oCotR6hHMH8so3XI6hpvGQ$3MrSHb34T9ye8A9vLM+4Fr0voI2LZJLfnWs/xEjsxYk	ae4de106-ce16-4e54-badf-ad5d25a7ebab	2025-05-20 19:36:14.978	2025-05-20 19:36:14.978
cmawwzxe000504wt9kwd4n74b	Daniel Hahn	Deonte.Flatley@hotmail.com	$argon2id$v=19$m=65536,t=3,p=4$toMcDzVFUvg6Zj2vevvNEQ$rqydM1dOIDi2Ac2YMUVQpwmXAqy+4gKrNOmgN+6l5TU	a6cc091a-60fa-4977-bd4a-d327f13a7368	2025-05-20 19:36:15.048	2025-05-20 19:36:15.048
cmawwzxfh00534wt91b4tlabr	John Cummings	Hermina_Miller@gmail.com	$argon2id$v=19$m=65536,t=3,p=4$sr9ZOrUOYxurB0n8ZOimPg$Is7AozSMHAUZ5zQSIR7RVmI04wrrBjvKQoHlB8xdde8	eb982ee9-8a04-40c7-bed4-934cefeac5e0	2025-05-20 19:36:15.101	2025-05-20 19:36:15.101
cmawwzxgv00564wt9smcxkanh	Pauline Grady	Jamie20@hotmail.com	$argon2id$v=19$m=65536,t=3,p=4$tXYpbIoHXNy6ZRxcGsjb1g$hwaTnjFMSWs6zvmIaibXRUkzzyMomlZoUiZGXgIQOMY	092440a5-8787-433e-b238-46976065060b	2025-05-20 19:36:15.152	2025-05-20 19:36:15.152
cmawwzxi000594wt9s2jcmzu1	Mr. Elmer Stiedemann	Joany95@hotmail.com	$argon2id$v=19$m=65536,t=3,p=4$6HzDbYvlyngGLDYIhVfXMQ$t8LJdQn87tREcJQQE/fiKawMYAJpOQc/zxCLLYFISco	eff41e27-3f10-42bf-a4f1-2ff0e6a98498	2025-05-20 19:36:15.193	2025-05-20 19:36:15.193
cmawwzxj3005c4wt910kd916t	Derek Littel	Sunny8@gmail.com	$argon2id$v=19$m=65536,t=3,p=4$v9uE+a+ljsWyGYjgnHXduw$DrbVzXHe+Wvs9Uy8P+jbbyG2AEXhiACq/bWeIxUvDSE	af5bc509-1a07-45e2-a774-ed8336a9f1fe	2025-05-20 19:36:15.232	2025-05-20 19:36:15.232
cmawwzxk7005f4wt9ebphhn2v	Homer Lemke Jr.	Greta13@hotmail.com	$argon2id$v=19$m=65536,t=3,p=4$mUKdW9OFQPttDs7bwgq8fQ$nt6O4flPmtWHz91BBDNjUumOoisIzq3/ZJYvGeVdghw	9273d09f-2bdb-4613-8ba1-1cc7782e171f	2025-05-20 19:36:15.271	2025-05-20 19:36:15.271
cmawwzxlb005i4wt9ukkf4m9x	Suzanne Hodkiewicz	Arielle_Greenholt-Crooks@gmail.com	$argon2id$v=19$m=65536,t=3,p=4$NFm6GV3r77aciG0ntlgsrg$g0COnOl8Qjfqdnj6Zsa7YNwopEu7HhlnvW4hxA57PsU	f1f0fafc-3972-4a4f-baab-069ee5ebd622	2025-05-20 19:36:15.312	2025-05-20 19:36:15.312
cmawwzxmd005l4wt9y4klb4gm	Rick Tillman	Cade_Collins@yahoo.com	$argon2id$v=19$m=65536,t=3,p=4$K9qz8toWpSFfW26NicC94A$fxC4XW4OFAufGydb9bGO1Uhiw2Jy9v/7gsHasqQdJOc	3ddbb917-443d-4a37-9bef-516a340b56de	2025-05-20 19:36:15.35	2025-05-20 19:36:15.35
cmawwzxnf005o4wt90xoqjeee	Spencer Lowe-Schneider	Noble36@yahoo.com	$argon2id$v=19$m=65536,t=3,p=4$4MydwPvhtU4uXkaKaJFgwA$KPPcGsTJwm6U06dItbtWF/GloN+lgRWuXRqtDI8ks5g	2b4ecbcd-cd30-4d1d-ae4d-ac16a7c99bf8	2025-05-20 19:36:15.388	2025-05-20 19:36:15.388
cmawwzxoi005r4wt9rt9j132n	Jackie Hirthe	Natalia.Legros@gmail.com	$argon2id$v=19$m=65536,t=3,p=4$7C0EJg45G+q6DnshP7XknA$EVUrYWUzkkUAk/VB/AI9ghoYEPzGnx6iLZqkOl3KUm8	2bcea8ac-715c-43ed-8117-8cb34cda2de0	2025-05-20 19:36:15.427	2025-05-20 19:36:15.427
cmawwzxpl005u4wt9adfretnw	Charlene Shields	Vivien1@yahoo.com	$argon2id$v=19$m=65536,t=3,p=4$40A6FStBFRBNfO8RCTi+Fg$DmS8Ytn0tlv4R8pjhj6SUleF6+IXUvG2w6PhB9fiFkE	7252a27c-0d27-47a3-a2e1-155b799aae46	2025-05-20 19:36:15.465	2025-05-20 19:36:15.465
cmawwzxqo005x4wt9a0weoo7g	Ralph Wintheiser I	Johnpaul_Yundt46@gmail.com	$argon2id$v=19$m=65536,t=3,p=4$JZrMZX+PPNe3graXEdtJgA$0YsCnOg1ApXXa1n6ZeHZ9c8S+Sq4PtUEkoJ1rJcfnVA	d2e89d6d-a22e-4bb0-aa54-2693c060ce20	2025-05-20 19:36:15.505	2025-05-20 19:36:15.505
cmawwzxs500684wt98ol1e7w6	Margaret Friesen	Phyllis_Bailey@gmail.com	$argon2id$v=19$m=65536,t=3,p=4$z69Cb2aoGIBZjoqmyZUV1A$oFjdhggk7aTAPhf2M93ErrRu492sfgPaigT4nRvAbd8	9463f1dc-2b2c-4a0b-b713-7f4cec932cd5	2025-05-20 19:36:15.557	2025-05-20 19:36:15.557
cmawwzxt8006b4wt99dirluxb	Juan Legros I	Kayleigh_Blanda14@gmail.com	$argon2id$v=19$m=65536,t=3,p=4$+pNlAAC+a0ZNKoM1sO129w$1QvgFz+a7bQ7Rboor2gcWapH7GlXZYz9WAlVE8MGsjI	12a9253f-bcfc-44a0-9d8a-caa020e93bbc	2025-05-20 19:36:15.596	2025-05-20 19:36:15.596
cmawwzxuc006e4wt9f6dlzeq5	Robert Breitenberg	Jude.Huels@yahoo.com	$argon2id$v=19$m=65536,t=3,p=4$TCW1Gd7Igj23Re3xaA7GpQ$4aMzzGhF0Yyogue53uhhiw2Qkf4Z/LMFmwNcnhyKm+o	ffcb82d9-610a-4374-8b55-e85277887655	2025-05-20 19:36:15.637	2025-05-20 19:36:15.637
cmawwzxvf006h4wt9nrxzxney	Sonia Welch Jr.	Napoleon_Russel@yahoo.com	$argon2id$v=19$m=65536,t=3,p=4$jtK30AMwZSBDWNppv9es7g$O20rXiBF5b4i+bHZyGisjA1MQmkKbXDQOVPsWSUqfdw	ff539761-2288-46fb-85f9-bf602f8cee88	2025-05-20 19:36:15.676	2025-05-20 19:36:15.676
cmawwzxwj006k4wt9g8vcjpwy	Monica Strosin	Miracle_Mosciski42@hotmail.com	$argon2id$v=19$m=65536,t=3,p=4$AlWqf/eqpFxKKe/n16YE0Q$YFVuB3XBx+vH1DBQtitwFX0tCI2+VsThYbX4rZLreSk	a64cb5e6-e26c-4c16-8ec2-929601e14617	2025-05-20 19:36:15.715	2025-05-20 19:36:15.715
cmawwzxxm006n4wt9ahqxlwhe	Marie Gerlach	Niko.Dibbert26@yahoo.com	$argon2id$v=19$m=65536,t=3,p=4$HG1jNhW6ntcVdR9S7lY3QA$PuA87hn8/ngUAKBO868DrfItSu/Vd/JnDHCto/1R2/4	5851229f-f303-4a49-9a7a-a90966b7ac50	2025-05-20 19:36:15.754	2025-05-20 19:36:15.754
cmawwzxyp006q4wt9ot90j4yh	Lindsay Schneider	Jayde.Rolfson27@gmail.com	$argon2id$v=19$m=65536,t=3,p=4$xSaykdGiGD4NofUCuq0bdQ$4UGNt0cMUzMOGLRswv401NHaQSppLc+7FfQKgJxeRGQ	9e452878-e4ba-40e4-8ff9-756e9d18a024	2025-05-20 19:36:15.793	2025-05-20 19:36:15.793
cmawwzxzx006t4wt9u41oqd9j	Robin Koch	Jazmyne96@gmail.com	$argon2id$v=19$m=65536,t=3,p=4$XKf/DSXdG6HkCPgyhd8Ifw$zDWDag2FFFTLm4YEy1Uu4IFtgp4XQSuFPWf2x3RO2Go	36be4baf-d7b3-4c24-afee-14411e66e2e6	2025-05-20 19:36:15.837	2025-05-20 19:36:15.837
cmawwzy10006w4wt90ohf4w58	Clifton Feil	Alf.Beahan@hotmail.com	$argon2id$v=19$m=65536,t=3,p=4$HaYpWa+1Sm08k8f4t5Vwyw$EEf99l4CyOM6QytImsx56LlsNuMKfMCr2F67jXnv0II	1490d99c-de3b-46c0-aea6-b35f71d86fc1	2025-05-20 19:36:15.876	2025-05-20 19:36:15.876
cmawwzy23006z4wt95dc59n8u	Rita Dibbert	Patrick.VonRueden75@yahoo.com	$argon2id$v=19$m=65536,t=3,p=4$WUsxgYv5Vadqmu0G8LHk2w$OZ6kBlu85XQQRULNXlRmbDiR0vzpXDSx5kNaX/OLTLs	131342d6-f8c5-48e6-b312-3abf35b420a2	2025-05-20 19:36:15.915	2025-05-20 19:36:15.915
cmawwzy3700724wt905kzm4a4	Sonja Gibson	Trever_Hammes97@yahoo.com	$argon2id$v=19$m=65536,t=3,p=4$9O+VUbe16elybA7IjPSMyg$0doTzcPzlJW8yJ44a3w/MMIqpEGV36y9D5dyyMiLQa8	d2e0c73e-2645-4522-bdf4-93040182d0f5	2025-05-20 19:36:15.955	2025-05-20 19:36:15.955
cmawwzy4900754wt9q4uxrozq	Steven Kuphal Sr.	Rigoberto.Nikolaus@yahoo.com	$argon2id$v=19$m=65536,t=3,p=4$fXajtURfYyeVqLcx4geSuA$2Xh0+t4nrGYsqdlElqlFclqUcTIPjQzbZ+te88kHtxo	c3154b34-ee2c-4237-8101-d802863dd04c	2025-05-20 19:36:15.994	2025-05-20 19:36:15.994
cmawwzy5d00784wt954t6t2ww	Kara Raynor	Zula.Lang@gmail.com	$argon2id$v=19$m=65536,t=3,p=4$EZZmbQhc3CuUraN/oXg+cA$CTE3IUGwPHiTCVqtMgpJeWVp/DfKsrNHxwvwgziKXyI	41dc86bc-28a4-494a-be9a-f2d18d6b7d5c	2025-05-20 19:36:16.034	2025-05-20 19:36:16.034
cmawwzy6g007b4wt9bazkt9w7	Claude Blick	Aaliyah.Zieme4@hotmail.com	$argon2id$v=19$m=65536,t=3,p=4$anPWbtTrVIVyEdqvZThLzg$ALnFqtgr2bwWbPSfH9xjWNv+WgeTQmIyWzqbFjJ4aHU	46ad458d-c3c6-45eb-97af-34bce2fe7702	2025-05-20 19:36:16.072	2025-05-20 19:36:16.072
cmawwzy7j007e4wt9b0fri5uf	Matthew Brekke	Arnoldo.Russel70@gmail.com	$argon2id$v=19$m=65536,t=3,p=4$w/JNwt1ZtQA6+4ThfZJMsQ$JJo13+vsTx7jYXpbQFNOcJAit8DK2vnURqV0GNJWSP0	737b5e90-c09e-407d-acf9-31b6e1c129b8	2025-05-20 19:36:16.111	2025-05-20 19:36:16.111
cmawwzy8m007h4wt92ux6p8rp	Marlene Kovacek	Clarissa.Bergstrom33@gmail.com	$argon2id$v=19$m=65536,t=3,p=4$Xk6T5GgHuZr/fkmp7smYzQ$g2IMMrGgGyimYsc+PZ37DGrsJxoWfyP8FQ3oCcedx6U	2534f385-cec1-4506-8bcb-b3e480d55ff2	2025-05-20 19:36:16.15	2025-05-20 19:36:16.15
cmawwzy9p007k4wt90n6xdxtk	Teresa Kertzmann	Marlin_Hudson@gmail.com	$argon2id$v=19$m=65536,t=3,p=4$HO72ynAmzXlcF+JmQySUBA$O9QxBP0SvjuMW+gUUkUoJmMi58Rn6wz+sSLSMkOf0hc	25a55865-405c-4e84-957e-56b47a572d28	2025-05-20 19:36:16.189	2025-05-20 19:36:16.189
cmawwzyb2007w4wt9mabhw94k	David Wisozk	Mathew84@gmail.com	$argon2id$v=19$m=65536,t=3,p=4$QBTWik/bCHOrhZvA+bh83Q$GjyYBbDqKPCi2O+d4x9SjgnHw40PgRSWF13r00u1Z3Q	5b27fe86-9270-4a5f-b641-b2ea6d0f9921	2025-05-20 19:36:16.239	2025-05-20 19:36:16.239
cmawwzyc6007z4wt9y5c4w61l	Saul Abshire	Madisyn26@yahoo.com	$argon2id$v=19$m=65536,t=3,p=4$nIPnAikn4zAQFkcL/MTd2w$8QDHH/lj6+xorCuCh+UgRtiDeXL/N2KUjjbo1rJhT/Q	8d6d594c-922c-4459-bb1f-3e81a5c025f6	2025-05-20 19:36:16.279	2025-05-20 19:36:16.279
cmawwzyda00824wt9b9n2mr9u	Kim Schmitt	Nickolas.Little57@gmail.com	$argon2id$v=19$m=65536,t=3,p=4$66q8Dv97nnZSZkuzs6OJPQ$gi8pNkU+I0o2PbfXr034pGQb5fVLOAwR8s0tG/eXO8k	d862a789-7c97-4bdb-93d8-ce0aaa771aa7	2025-05-20 19:36:16.319	2025-05-20 19:36:16.319
cmawwzyec00854wt99gqmshjf	Shelley O'Hara	Alford_Botsford@gmail.com	$argon2id$v=19$m=65536,t=3,p=4$yDNapzKoXueKm4FY5P6WYw$/1fYQX07e864gekVZw1BmQi9pVGSOgJNoQCoGPm2oGo	e0053896-ae99-4e50-a490-4c2f50544496	2025-05-20 19:36:16.357	2025-05-20 19:36:16.357
cmawwzyfg00884wt9929g152g	Bernice King	Mattie_Welch40@hotmail.com	$argon2id$v=19$m=65536,t=3,p=4$rigY/J6Md22M+TTkJo9seQ$21sRFnBeGoDINg+sNFfAukAhhW12uS3Qsm6IdlrGTks	6f98e87a-d061-41de-ad17-5ca96b5b8eb6	2025-05-20 19:36:16.397	2025-05-20 19:36:16.397
cmawwzygr008l4wt95ape2nh7	Sheila King	Jamir.Turner@gmail.com	$argon2id$v=19$m=65536,t=3,p=4$btiurK0lGiO2hovrU9imIQ$8Pvw2wnRXIRmtiV6YqVTBQIIn3Tvds5fuANBoYhEDtE	8b4ed29f-5333-4986-a40e-6d0210cf0282	2025-05-20 19:36:16.444	2025-05-20 19:36:16.444
cmawwzyhu008o4wt95jm1a7gr	Kenny Hintz	Bernhard73@yahoo.com	$argon2id$v=19$m=65536,t=3,p=4$EcQj8TRGvSxB+hodmshiNQ$LEhxfI5SBdgvhRbII3fagIXyc/0Ri95hMDzzO33Euzk	162353b8-ccb4-4e02-874c-b4809505e9c2	2025-05-20 19:36:16.483	2025-05-20 19:36:16.483
cmawwzyj300904wt9qufjec8q	Christie Parisian V	Al47@yahoo.com	$argon2id$v=19$m=65536,t=3,p=4$22I8ImtmsUMWEUMUZLhlKw$gW1mZp/msG2z2nAdzD8OD/voux5jUyKNiHv1SPqYaDc	3f41e0e0-4961-4425-bdf4-4f8b89bf92af	2025-05-20 19:36:16.528	2025-05-20 19:36:16.528
cmawwzyk700934wt9grv58ybr	Dr. Lillian Schaefer PhD	Emelie.Abbott22@gmail.com	$argon2id$v=19$m=65536,t=3,p=4$z9fZe94AiGEenqSf6WQeDg$R1PIkOTvyKwNPMKYzViykzhsNb6ZjPq1afVRtZcCsEw	e1fadc2a-d6f3-4413-936a-4feb6353999d	2025-05-20 19:36:16.567	2025-05-20 19:36:16.567
cmawwzyla00964wt9pu5npsl8	Darrell Funk	Laverna54@hotmail.com	$argon2id$v=19$m=65536,t=3,p=4$UN8LhY0DTZPwpdcDqWVG0A$0L3bE/6TQQKrpTjncvTAsYquWRCySNtZa0raCiGD7Lg	0daabca3-5f07-4934-ab5f-1a950c87d9ca	2025-05-20 19:36:16.606	2025-05-20 19:36:16.606
cmawwzymd00994wt9s24nhb9q	Fred Fahey	Danny.Frami71@hotmail.com	$argon2id$v=19$m=65536,t=3,p=4$XhjdxSWgl8hF/98WEviqEA$aqsKcoQ+irwkpvFcB2ac3S5WBrjO1ici/bOVTJ/f0WU	92c22793-7e66-4845-b0fa-b92d455e1dc2	2025-05-20 19:36:16.645	2025-05-20 19:36:16.645
cmawwzyng009c4wt9owep36ld	Rudolph Sipes	Bernadine_Lynch@gmail.com	$argon2id$v=19$m=65536,t=3,p=4$kz71zpzGe2lXhUoVdzjizA$KlmRzcp9ueHNiQ9oUctvzYD0raI8lR1l8bxFBmtgJy0	999594b4-f470-43af-9b80-58c2147847d8	2025-05-20 19:36:16.684	2025-05-20 19:36:16.684
cmawwzyom009f4wt9nz6da0r0	Frankie Tillman	Wyman_McDermott@yahoo.com	$argon2id$v=19$m=65536,t=3,p=4$oi0KYXsmj+L/nsVYXmT8Kw$N4slta9M2NrW6trDA/wsP4dQR8zpiIYr3uQH8MbFc1I	bf80a0b1-e4ff-47ae-a647-79761ebe75bb	2025-05-20 19:36:16.727	2025-05-20 19:36:16.727
cmawwzyq1009i4wt9xmd6my1u	Deanna Crooks	Cortez.Pacocha@yahoo.com	$argon2id$v=19$m=65536,t=3,p=4$8g8779On/Ko/8xnv0gjNBg$N2lrp5fpQbKPt+qfK+7LUynTn2ZGGLzwo8S5aCkqeOo	a63b624f-b35e-4cae-aa2d-238664b492ac	2025-05-20 19:36:16.777	2025-05-20 19:36:16.777
cmawwzyr3009l4wt9mlae64zm	Chris Ankunding	Billy.Stiedemann66@gmail.com	$argon2id$v=19$m=65536,t=3,p=4$CZkySu9IQCLe9rsipaUG2w$aBJnM7NkPUVCOVHk1o7YntOD3UzdlOxi/fNOpPKbokA	e2fdd1f6-9d74-4b0f-942a-e5dfb05a032c	2025-05-20 19:36:16.816	2025-05-20 19:36:16.816
cmawwzys6009o4wt9mix1qecd	Jonathan Kerluke	Tyshawn17@gmail.com	$argon2id$v=19$m=65536,t=3,p=4$BVvZPLr8RuRyyKvhPlLdmw$SsgCid9yFkcPomL0dMHjfS/qYPl50V554ZfMk7JYvAQ	80474bb7-eb5b-4fa7-8799-75c02e6b2bee	2025-05-20 19:36:16.855	2025-05-20 19:36:16.855
cmawwzyt9009r4wt9ondjbnap	Ms. Roxanne Little MD	Gia.Wehner@yahoo.com	$argon2id$v=19$m=65536,t=3,p=4$Q46nhiVRRrEqieVdzSwdyQ$zzA7ks6OtnfpzdRyB8TDVm5mvxlT34SnhwGILafWnqE	6efe3985-4c7e-4211-a86e-c824a3d4e0db	2025-05-20 19:36:16.894	2025-05-20 19:36:16.894
cmawwzyud009u4wt9q51rxs9e	Misty Schamberger	Shayna51@hotmail.com	$argon2id$v=19$m=65536,t=3,p=4$p8+SSUvy/ytPATT3r9kvpQ$x6TZjsi6xWiiv0BpWfR9x5P+hXmJYCatELs4L5lH3js	faf7ff81-0324-429a-b507-dd25a52604a2	2025-05-20 19:36:16.933	2025-05-20 19:36:16.933
cmawwzyvg009x4wt99pkp6u6h	Judy Friesen	Anderson.Mohr@gmail.com	$argon2id$v=19$m=65536,t=3,p=4$HPQ2YYc1L9Kg9h8en7217A$hj//16MZKeIvJYrppkFXxTFWKhXyzyGvDDLfjdwTjPM	face3856-e318-4e42-91e4-487c99681943	2025-05-20 19:36:16.973	2025-05-20 19:36:16.973
cmawwzywp00a94wt9lrsycrkc	Melba Kilback	Kamille.Lebsack@yahoo.com	$argon2id$v=19$m=65536,t=3,p=4$/K6GdpbGDM6Jt35sV/lyrw$nDd7wfTRyEVcMUMB7Hw+pI5tbgLZHW4UpsFydOcI9K8	d319f59d-0124-40fe-b18b-579d2b505945	2025-05-20 19:36:17.018	2025-05-20 19:36:17.018
cmawwzyxt00ac4wt95qq8v6lp	Lana Kshlerin	Reilly_Bergstrom@gmail.com	$argon2id$v=19$m=65536,t=3,p=4$uU4StzSM/+2wdnk2NlwkUg$89CTSzTDvFLFJRBB4kMPAwwkkk9JWijw2ItXcSeqE0Y	aad688fd-7d99-4556-9e4b-ccd331886957	2025-05-20 19:36:17.057	2025-05-20 19:36:17.057
cmawwzyyw00af4wt9d1uahh8z	Brad Senger	Eudora1@gmail.com	$argon2id$v=19$m=65536,t=3,p=4$lgOKGIrZZ2cGrJd6aR0vFw$yhEnVNmDMEOvTSuXIJQ7AQ02UXW2kdEXRdzJTvzCDZI	f76384d1-8bd4-45d9-affa-f0e7442d4b40	2025-05-20 19:36:17.096	2025-05-20 19:36:17.096
cmawwzyzz00ai4wt9sp2hzry1	Jacob Cole III	Quinten.Becker89@gmail.com	$argon2id$v=19$m=65536,t=3,p=4$1PAyhU5qqZPcg9+67ZjyiA$e5inIo7JYanCmR4TJgF4OlCaDMqLOkyfCLzZBlSM16I	d08df6f1-6147-4ed4-b991-49dee8beb29b	2025-05-20 19:36:17.135	2025-05-20 19:36:17.135
cmawwzz1200al4wt9ljxtcfxb	Benny Rogahn	Karl_Tromp@gmail.com	$argon2id$v=19$m=65536,t=3,p=4$AyNGJFP2OYoogmcPkh3nOA$bp+vOaND9Nh1Xc2S3ula9TCM4Fauh9Xdqq+IqEJr3WE	20f1393b-84b5-40bb-98e3-95bda4e58c5d	2025-05-20 19:36:17.174	2025-05-20 19:36:17.174
cmawwzz2500ao4wt9h6atvyzz	Leona Becker	Priscilla41@gmail.com	$argon2id$v=19$m=65536,t=3,p=4$k9gJLZBFikke1ckFOpC8Fg$p8YhBpwyPcGTU2mIyiulC0ZM7qUwB+Enk9XOh12UMyI	827218a5-127e-4f32-b297-0971030b3ba0	2025-05-20 19:36:17.214	2025-05-20 19:36:17.214
cmawwzz3900ar4wt9iakvoifa	Monica Upton	Dejon_Bogisich@yahoo.com	$argon2id$v=19$m=65536,t=3,p=4$2SEcT1osPC8IQHWdqnmKqw$ZVU+6+w93HBeY4Kd6c6j7AI7Me00jPsQTlTBf3QU+rY	df6901ab-86bf-46f8-b1bc-61f511889399	2025-05-20 19:36:17.253	2025-05-20 19:36:17.253
cmawwzz4c00au4wt9eblk8nnl	Ruth Kiehn	Adrian43@hotmail.com	$argon2id$v=19$m=65536,t=3,p=4$ifg3wPrYnO1u2lvzaFE6CA$46cHwT1PQ9lXbwgHUAnZriEi77tO04Ze0wqnviyFrps	b590d3d2-01eb-442b-834a-cc8ffdef0397	2025-05-20 19:36:17.293	2025-05-20 19:36:17.293
cmawwzz5h00ax4wt9b6bbw8wr	Sheldon Emard II	Felicity_Mayert@yahoo.com	$argon2id$v=19$m=65536,t=3,p=4$Xdn3h+J+BjM8tmm/z863cg$tNdINY3g1HDuY0JouIpusy0nHvbZLaY95FGg+2H5SmQ	237ca313-91ec-4e06-b022-19ce84e38bf7	2025-05-20 19:36:17.333	2025-05-20 19:36:17.333
cmawwzz6r00b04wt9s7xbqrjs	Jon Kuhlman	Macy10@gmail.com	$argon2id$v=19$m=65536,t=3,p=4$7rx7rs5itOnh5AHo+uDUTw$PxBIKyQHXw5hLbs6SUFLmWG1JIR+Jlr0GeIM0hcKxOs	a02d7e55-e277-48f5-9f9c-b41944d36266	2025-05-20 19:36:17.38	2025-05-20 19:36:17.38
cmawwzz8200bc4wt9aobn915v	Dr. Gerard Bailey	Carlo_Blanda8@hotmail.com	$argon2id$v=19$m=65536,t=3,p=4$jnAXUT2HzniLSGJ1cN1mRw$IqQ5U4pRE3dpc5pdWkSMIPn62JiHAVutkizFcTsJFog	83e64797-eb54-4b04-a843-e1239e77f057	2025-05-20 19:36:17.427	2025-05-20 19:36:17.427
cmawwzz9700bf4wt9dcpv2z0l	Sherry Raynor	Frederick55@yahoo.com	$argon2id$v=19$m=65536,t=3,p=4$tQWlrlhFor2A3Js/k0FTyg$nhA2izIUhV/6A+8ea7EutXOfvMm7D1vOASsTRhoaqTI	64621499-be5a-433d-94b0-5821c914d8fb	2025-05-20 19:36:17.468	2025-05-20 19:36:17.468
cmawwzzac00bi4wt9xi9n0rey	Herman Cartwright	Adella.Conroy@hotmail.com	$argon2id$v=19$m=65536,t=3,p=4$6Ul4Fx3aaLqhMCJLKepWgA$094FqixJtucNCB+ZuWEhHDpxJfkkas3MnmT091S9qd8	fc3633a0-aadf-48b8-a1b8-0665e116d7d7	2025-05-20 19:36:17.509	2025-05-20 19:36:17.509
cmawwzzbf00bl4wt90jqplveo	Lillie Hansen	Cristobal72@gmail.com	$argon2id$v=19$m=65536,t=3,p=4$zJdwIx13ie4NieO7khqyUw$9QpO+jTFaCjy+RdZBe5+i2VE10OAQFccqT1KXnJ0arM	d763dab3-bd98-413a-a67f-dca120c09565	2025-05-20 19:36:17.548	2025-05-20 19:36:17.548
cmawwzzci00bo4wt9xcxya2oi	Gladys Kemmer	Aidan18@yahoo.com	$argon2id$v=19$m=65536,t=3,p=4$xBtPqn7YnXz6aq2vY6wx/A$DgK030HOrZZ3Hjs+l5UOeva/DrIowTEi9Qi7bvNMdTY	eea46e32-8060-49ed-80e4-d0e10269bae2	2025-05-20 19:36:17.587	2025-05-20 19:36:17.587
cmawwzzdl00br4wt9nwdjsp3g	Gwen Harris Jr.	Lorenza.Harber@yahoo.com	$argon2id$v=19$m=65536,t=3,p=4$CV5KFZ6ospD9ViVMpBa+1g$5bPwV0Jcp/s7t6uhPah0pe9ZcBZQm1sRj4/W2Y/NP7k	bca8e844-5bd3-49e0-b9ec-4eff6ed2d2b7	2025-05-20 19:36:17.625	2025-05-20 19:36:17.625
cmawwzzet00bu4wt9vc6ngyae	Harry Kshlerin	Thurman31@yahoo.com	$argon2id$v=19$m=65536,t=3,p=4$b51FqhUFTq46SUZiskRqKw$hNJTFFDCqsbaUrOPt95Ch59/aqr/DA2bOFScqvDm7BY	a876981e-82ad-4ddf-ab0c-5fe7f33f411b	2025-05-20 19:36:17.669	2025-05-20 19:36:17.669
cmawwzzhk00bx4wt90ek5vhnz	Nicholas Crist	Claudia.Schoen86@yahoo.com	$argon2id$v=19$m=65536,t=3,p=4$0lgHVZl0Crk9+4zgZoTsAA$c5vIq7lqZdKfHhqoZzzXWSvrD3uwTCC2bTrbgnBOQmk	39af6dc0-9689-41c9-b5a0-c2008cd82e4b	2025-05-20 19:36:17.769	2025-05-20 19:36:17.769
cmawwzzj600c04wt9mvw0lafi	Delia Larkin PhD	Brooks24@yahoo.com	$argon2id$v=19$m=65536,t=3,p=4$4udEnpqUOJIPG5peHIgSUg$VmqasI7It4IYxkP6HhxOK1EYNpebAdmfigHMTOqscu4	472d830a-eaa5-4814-9d4d-2564d527b54b	2025-05-20 19:36:17.826	2025-05-20 19:36:17.826
cmawwzzkp00c34wt9fm494xkg	Dan Cronin	Marvin.Shanahan56@gmail.com	$argon2id$v=19$m=65536,t=3,p=4$Y8nx9Y6vOVhMMMOmDpxqUA$jgseK5zEOG0NLS+zIw7RL/N5od4P2FsJcDcopkFNGUo	ef00c153-20d4-48dd-b757-77390e9160ba	2025-05-20 19:36:17.882	2025-05-20 19:36:17.882
cmawwzzm700c64wt98f1z4158	Jane Bechtelar-Welch	Hayley.Bogan63@hotmail.com	$argon2id$v=19$m=65536,t=3,p=4$SqXkqsDLvq23gp3ojFPPUA$tp+EwFkLQLWsmk49FUFnvBjsQKemoZ5IouAu2f4Ozpg	6e4a82d0-99aa-41c7-98d4-27be3ee36347	2025-05-20 19:36:17.936	2025-05-20 19:36:17.936
cmawwzznp00ci4wt9830ztf3e	Larry Hartmann MD	Andy_Boyle@gmail.com	$argon2id$v=19$m=65536,t=3,p=4$2EEW2k1ErHBLe/T1XV+BEQ$ZXWoDvh2q3ZzQcX+1QzFF2lziRvpdI340mJ057RJsqM	5547fc4a-9077-4c37-9f3c-f680164e1039	2025-05-20 19:36:17.99	2025-05-20 19:36:17.99
cmawwzzoy00cl4wt944itdt07	Andrew Steuber	Lawson.Herman88@hotmail.com	$argon2id$v=19$m=65536,t=3,p=4$SGWXIr07A2jvPMXlqaJMsg$542rMqLjsLY9o6OJDDACKKuKsh1Ejtp4n++7IrK80aU	34690baf-1e4b-4aeb-8bdb-83fe3f6395ff	2025-05-20 19:36:18.034	2025-05-20 19:36:18.034
cmawwzzq600co4wt9rzxsthxb	Cathy Blick	Jaydon40@gmail.com	$argon2id$v=19$m=65536,t=3,p=4$Wm7/2JzCBYDcLOPDcRWtRQ$LqVV4+Ote0MpOca0MqXVI30ewtoP1ROcTEO9CWxhCcM	5e2afc32-b728-4148-9e83-18a3aef732f5	2025-05-20 19:36:18.079	2025-05-20 19:36:18.079
cmawwzzri00cr4wt9o5lwk497	Johnny Stark	Isabell21@hotmail.com	$argon2id$v=19$m=65536,t=3,p=4$4+se3s6uy1yv/H4ZaIU83w$dyjT8Awg8j4XWLBQbdcBcFkLRoILm6FNNkb+rYnjg/8	79baebae-0ded-48b9-a313-e9297c7a5295	2025-05-20 19:36:18.126	2025-05-20 19:36:18.126
cmawwzzsn00cu4wt9kg4a3iju	Jeanette Schneider MD	Domingo.Kuhn-Kertzmann@gmail.com	$argon2id$v=19$m=65536,t=3,p=4$NVvSkuDTs42wli+lpZvWcw$FlTNYKUexQOo5Cvc+xXYjvt59LU7j8xvPJm0N2tVHVE	7da45594-853a-4fe1-975a-9a3e0181f2db	2025-05-20 19:36:18.168	2025-05-20 19:36:18.168
cmawwzztr00cx4wt9qq5rw4um	Bonnie Brekke	Lysanne.Schmeler88@yahoo.com	$argon2id$v=19$m=65536,t=3,p=4$NDPk4mhJVB+Eao0fBD30BA$pUuY0JyrZslCqIQbBsVC9DgnQDjA2+ULgemh2WoQQ70	7159d8fd-b80c-40c9-87b1-35fe4be66347	2025-05-20 19:36:18.207	2025-05-20 19:36:18.207
cmawwzzuw00d04wt94yijxys7	Ronnie Feeney	Sunny_Williamson44@hotmail.com	$argon2id$v=19$m=65536,t=3,p=4$GME5tQvXy5QQC3bO3AfZgQ$iNu3hKnKVXn0CFFe/oVqdpsgW4PJIrPvfm1+ayIL2sc	c4edd48d-a9a7-4dea-978f-e1d6fea43e86	2025-05-20 19:36:18.249	2025-05-20 19:36:18.249
cmawwzzw400d34wt95jlmrxpt	Dominick Bechtelar V	Eusebio97@hotmail.com	$argon2id$v=19$m=65536,t=3,p=4$EXxNnQBWlDCqawsfrnHmSg$kQyeLsu2uTOC/rnWsFO9+Vw4zY3emI7gov2Kx7yFd0Y	a2ee0bf5-5bec-46b2-a497-e3cc27d00a79	2025-05-20 19:36:18.293	2025-05-20 19:36:18.293
cmawwzzxd00d64wt9mqe1ybj5	Leo Runte	Nicholas66@yahoo.com	$argon2id$v=19$m=65536,t=3,p=4$/4e1bsmaSxdbFBrqUcaKEw$6nHnI9/pDbwKwDV9wlnnbKKMQddcGwbiukW1Jy2ypg8	c98e506e-51fc-46f8-b89e-dbfd8c2ece09	2025-05-20 19:36:18.338	2025-05-20 19:36:18.338
cmawwzzym00d94wt9k2ttvs4u	Monica Gleichner-Witting	Luigi.Green71@gmail.com	$argon2id$v=19$m=65536,t=3,p=4$2+YM/uKAdnXEA1ueEuDsJQ$fx3jUussUONv6cYx5CY7zlDBcvsJZVWytlFVfXx6yZ0	3c5535e1-a7b7-44ad-b793-0288e08007fe	2025-05-20 19:36:18.383	2025-05-20 19:36:18.383
cmawwzzzr00dc4wt907pi1pde	Patrick Ortiz	Keyshawn_Feest@yahoo.com	$argon2id$v=19$m=65536,t=3,p=4$hE8ejQSyIrMEIugVZvvU5g$XgCOFcxwi0HzgUkctdk9d4j9PsYxthFLAYvm/B+oojA	5026aba7-b599-4be2-a4e7-719d118cecd7	2025-05-20 19:36:18.423	2025-05-20 19:36:18.423
cmawx000v00df4wt9ugxzc8cp	Emma Beatty	Anjali.DAmore5@yahoo.com	$argon2id$v=19$m=65536,t=3,p=4$PICf/kt8prJda8dzzN7CTw$NvCjXD3RhP0tY/auCdlDwQbF8aOS1pNAADOnjEcX4g4	4e573a8e-04d5-4eb1-b2ff-80f4e93cb728	2025-05-20 19:36:18.463	2025-05-20 19:36:18.463
cmawx001y00di4wt92p5825qz	Phillip Hilll	Aidan15@gmail.com	$argon2id$v=19$m=65536,t=3,p=4$2Lg4qyAQKVXT4aI1Y0bpJQ$49Frkv0kSCKPYnkuTf5jsJM4rsfIIUh5orVQPmbtIBk	f178ea3b-a834-4dbe-a7c8-8a47159f2b2f	2025-05-20 19:36:18.503	2025-05-20 19:36:18.503
cmawx003200dl4wt9d1sbec2s	Caroline Ward	Barton29@yahoo.com	$argon2id$v=19$m=65536,t=3,p=4$DN3WvuUAIsxEcc2Yy5OvlQ$9Oq3Jha8qEYjFrg7K+JsLwqHo9Q8Ti398VzL4TcyO2w	18977c69-0b78-432b-a38b-a2a84abb1bca	2025-05-20 19:36:18.542	2025-05-20 19:36:18.542
cmawx004700do4wt9s8rdhh70	Priscilla Hessel	Lonny_Klein@gmail.com	$argon2id$v=19$m=65536,t=3,p=4$s6CQnhn5pQK7lFK2yvwwgQ$sHLnMm/+SkVr25V5LacPMk2xyVtK3Y5/TTY3RKa5uHE	7c876004-03c5-4bb2-b985-b0e03eb37ec6	2025-05-20 19:36:18.584	2025-05-20 19:36:18.584
cmawx005d00dr4wt9auazbdxc	Margie Hauck	Frederik.Keebler@gmail.com	$argon2id$v=19$m=65536,t=3,p=4$wEEJTy6vN7dYiUoythMyqA$ZFW+K/5AF/PLygx2LJPihYsfZz34C3XFtcr+Hwp7dWg	5e4b82af-0d6a-4129-9751-4d09e78e4271	2025-05-20 19:36:18.626	2025-05-20 19:36:18.626
cmawx006j00du4wt94rj98ymh	Vera Thompson	Alexys37@yahoo.com	$argon2id$v=19$m=65536,t=3,p=4$WdoFjZRvSdxZvFVsU+w0sQ$kzrr8KoDPR32iL+M9vaoqI8sCuZq0OY+iVMw672VN0Q	dcba3f60-5893-4f51-9c22-c5eb50c86dfe	2025-05-20 19:36:18.668	2025-05-20 19:36:18.668
cmawx007w00e64wt9kgxvro8y	Kay Paucek	Hilda.Metz@hotmail.com	$argon2id$v=19$m=65536,t=3,p=4$g3sjcz2l3jpow3GfKMFPVw$PCJoZ3KZIAQIH9EM0P/HudxLstEpB7qyOf0iRgQ8TrQ	b1405346-97ab-4ce6-97be-928b470ca2a0	2025-05-20 19:36:18.717	2025-05-20 19:36:18.717
cmawx009100e94wt9p5dc9idx	Mr. Gene Howe-Fritsch	Tara27@hotmail.com	$argon2id$v=19$m=65536,t=3,p=4$8ou3l9Tenpr5yp2Uhtbewg$BLldOGlg4xthM4ILlXlKqhnnc9fx8ELZgRxGOteHVEs	bf5246e2-fc90-44ed-880a-c0fc18dbb2cd	2025-05-20 19:36:18.758	2025-05-20 19:36:18.758
cmawx00a600ec4wt9inlayf7u	Ella Prosacco	Lavinia_Welch@gmail.com	$argon2id$v=19$m=65536,t=3,p=4$SKOCS+q9+tfcLiyrmDigyA$JOeLre5WJYaUf64HnvXdDyyBEIdOViVsikASzvxMCoE	63c013e5-343b-48cb-8b89-c3420ecb51a3	2025-05-20 19:36:18.798	2025-05-20 19:36:18.798
cmawx00ba00ef4wt9hwqze0os	Spencer Lockman	Lance87@gmail.com	$argon2id$v=19$m=65536,t=3,p=4$+JXLD+iA3zAg80FlPi0cAw$FM54BC/rtL2EUiqr3Q78rQEkP1fz9zumdGRNUVbDHGU	8e273da4-577e-4de1-9aba-95d76be7164b	2025-05-20 19:36:18.838	2025-05-20 19:36:18.838
cmawx00cd00ei4wt989viqgew	Jamie Williamson	Maggie.Wolf48@hotmail.com	$argon2id$v=19$m=65536,t=3,p=4$nXIy8FyU+TxIc2r0P+uvoQ$6vF+ey5LJdELpZEomZvSNYPQ78lYchHH+XxdpYE3/0M	e28c6ba1-4c3d-4658-9e25-fb108e92f1ae	2025-05-20 19:36:18.877	2025-05-20 19:36:18.877
cmawx00dh00el4wt9jwsmh83z	Kim Stamm	Andrew.Schamberger-Hamill@gmail.com	$argon2id$v=19$m=65536,t=3,p=4$iad6asUTFPBmQ9lThKlepQ$4eSmbDO8QhuKs0/RG2K2axOAFhL2nQ9/YCqMUqAHrSI	05370474-5b39-47aa-b2bb-52d724e368f4	2025-05-20 19:36:18.917	2025-05-20 19:36:18.917
cmawx00el00eo4wt9n6yeeua7	Daryl Jaskolski	Melvina99@gmail.com	$argon2id$v=19$m=65536,t=3,p=4$1qfs64XhNjkHEUVFWQZDoQ$PEfYAQi+KyhbNNyZWmRfch50AH4C/Mlm1KBNCAyGn6U	a0753f21-6e12-46f1-9a11-8db3d6c33129	2025-05-20 19:36:18.957	2025-05-20 19:36:18.957
cmawx00fq00er4wt9gxcv9k62	Samuel Boyle	Branson.Weber0@yahoo.com	$argon2id$v=19$m=65536,t=3,p=4$mrnPrqpyDuCYnrTJ6+bT8A$L1fJfeot+5nSDuEV44/I8THm7YIMuxR1B29JXepm5B8	07a8461b-ba82-46a9-97bd-36ba547021c8	2025-05-20 19:36:18.998	2025-05-20 19:36:18.998
cmawx00gv00eu4wt9vqhnpuvx	Brittany Homenick	Jaden_Trantow41@gmail.com	$argon2id$v=19$m=65536,t=3,p=4$4m1DJEBMh4h1fdZNyIDZZw$D1zUubkFkdCDYPUba2/Lb1tUdbDc9AFoiHjk7dhFsqk	cd8c678f-1758-42a5-93f7-12441446e172	2025-05-20 19:36:19.039	2025-05-20 19:36:19.039
cmawx00hy00ex4wt9mvqny8yo	Hilda Boehm	Reed_Dicki12@hotmail.com	$argon2id$v=19$m=65536,t=3,p=4$6dtBtLRpMmf8uIgnGkyLpg$cf4Mo8nzzf1F6tSwfhGtPOm3jK36jyInMlnblm/B5sg	250d59b5-f632-47e7-b277-df3e3f404bde	2025-05-20 19:36:19.079	2025-05-20 19:36:19.079
cmawx00j100f04wt9f3wbx135	Nathaniel Goyette	Samson_Hayes@yahoo.com	$argon2id$v=19$m=65536,t=3,p=4$W3ptIhG8NZMzr++1yseCkw$3yu2ovKPflg3nhdcMiTpDC23DSqBj1pEIwbB03xBwUM	5a502807-97c7-4258-9f39-441858c04aff	2025-05-20 19:36:19.118	2025-05-20 19:36:19.118
cmawx00k500f34wt9o9kl700o	Dr. Gwen Keebler	Anne_Kuhn@hotmail.com	$argon2id$v=19$m=65536,t=3,p=4$y+wkzUbfCybvi9qBRStxsA$eWGMAedaGmhxK8scvrDqgCkmJdEbgquPcf/PBdAQDRA	678623f9-49d8-4806-914f-a84dda414ed9	2025-05-20 19:36:19.157	2025-05-20 19:36:19.157
cmawx00l900f64wt9xn3k31kg	Herman Luettgen	Nona59@yahoo.com	$argon2id$v=19$m=65536,t=3,p=4$tT6JWbiWvVo5afmQZEOYaA$KrWL8FFKSdYn4JOYEWaZZaBK41dsc4sCdytEL3pU0PY	1735f346-8a7a-4964-ac1e-319d39e52c06	2025-05-20 19:36:19.197	2025-05-20 19:36:19.197
cmawx00me00f94wt9xx7llljg	Travis Hamill	Erika65@gmail.com	$argon2id$v=19$m=65536,t=3,p=4$zq6Wl/rDwqnqwd/PwrGP0Q$I+JoECwU9k1ELDEPnc1G5+YdGARJvd4NxXCIZSYuRn4	2320afcf-606b-41e3-aced-b26ce31f2898	2025-05-20 19:36:19.239	2025-05-20 19:36:19.239
cmawx00nk00fc4wt9ep2bl537	Nellie O'Connell	Ewald.Hilll@yahoo.com	$argon2id$v=19$m=65536,t=3,p=4$2ULXw+LAZWe8wuKZEguy7A$CNixibnYAVQQ1iXU4ulAdKdtM257+qZ0U9glQ6WfXtk	d4ddceff-35b6-45af-b0f1-6e9490d1c5ab	2025-05-20 19:36:19.281	2025-05-20 19:36:19.281
cmawx00oq00ff4wt9bxdsegik	Leah Hessel	Lisandro_Reilly@hotmail.com	$argon2id$v=19$m=65536,t=3,p=4$ZbORm2yZaXhvZwjCbF03CQ$GnfhsgOFo1SVVDrHi9KbCqFAKTRaqoC4NLzrg9vgX+0	e4e498d0-14eb-4a47-a7c0-90d3d2faca6e	2025-05-20 19:36:19.322	2025-05-20 19:36:19.322
cmawx00q200fr4wt9sc6npexh	Lillian Christiansen	Finn_Larson@yahoo.com	$argon2id$v=19$m=65536,t=3,p=4$kVeYcdCHoOqozifleiVlag$6izbdnbWaKujgT9fhIUTdR0W7uwP958DxxqReOkTuAk	0f1e3cab-32cc-49c0-9049-4ce631f52664	2025-05-20 19:36:19.37	2025-05-20 19:36:19.37
cmawx00r600fu4wt9qitkwgx5	Dr. Sherry Hodkiewicz PhD	Fermin79@yahoo.com	$argon2id$v=19$m=65536,t=3,p=4$UGfsx4fzeYwlPTbsVP9FmQ$iiBdqw9ilJLVNi3OKuSJyxDaNAWuMVohUcGzndjQzPs	a240bf16-4b71-46da-838b-48ca4bbc8043	2025-05-20 19:36:19.411	2025-05-20 19:36:19.411
cmawx00sa00fx4wt9p4ejnyu7	Henry Dibbert III	Verona_Macejkovic@hotmail.com	$argon2id$v=19$m=65536,t=3,p=4$XBh6w5X6v5Pe0NaHiRb7yQ$05aOruDc6f/ojC4qQgtepxe9OUXF79LJjV3oBVa2g2Y	423872f7-b43b-49d5-a6f7-bcb6e3bcc941	2025-05-20 19:36:19.451	2025-05-20 19:36:19.451
cmawx00te00g04wt9lkkndr7l	Chester O'Conner DVM	Lesly_Bartell-Schmitt97@gmail.com	$argon2id$v=19$m=65536,t=3,p=4$UByCcUjYdnaIdpibtpjeXw$h0E1CP9SV53JBOvt++8nOdcCRkes8/axgJ3SAtsQcAY	3b10baff-5a5e-4cc9-bc6c-6676f52196ad	2025-05-20 19:36:19.49	2025-05-20 19:36:19.49
cmawx00uk00g34wt9p1sorixj	Mr. Ramon Bosco	Nat99@hotmail.com	$argon2id$v=19$m=65536,t=3,p=4$jdZdDEt07ZiUYwLYTbsYXA$EFF0NEYgOcgpoRWZnEo6uepV8x+ca+sDkMa4/+fEBhc	ef0eda3e-7139-4d31-a3fa-eedafb8a7217	2025-05-20 19:36:19.533	2025-05-20 19:36:19.533
cmawx00we00g64wt9asgbv2ea	Dr. Lester Daniel	Whitney_Ebert31@yahoo.com	$argon2id$v=19$m=65536,t=3,p=4$+Oaz5R10tC/RGmhub2a/+A$hX+sYjt7bSobBrxeBt3ou/Ezr+6eckj3Tvx5iByy6/M	2bbdbad2-3cd9-4288-bfc6-94405173341e	2025-05-20 19:36:19.598	2025-05-20 19:36:19.598
cmawx00xr00g94wt9muhxlxht	Darlene Steuber	Cesar.Bernier19@gmail.com	$argon2id$v=19$m=65536,t=3,p=4$2xdvnfe0+pAEmM/CZbUl9A$EdYrBXq5js2GcPlrNY7BRT8iseq6B5cQW7UXqpQtY6o	e67dc41b-66a4-4399-8175-b89a8c167fcf	2025-05-20 19:36:19.648	2025-05-20 19:36:19.648
cmawx00zx00gc4wt9txem89gr	Cary Toy	June42@hotmail.com	$argon2id$v=19$m=65536,t=3,p=4$w8a/JxV9KXNhn3u1hjmE5g$4HRbGKk7dstOgJ2Vfgsn9Qsgc17kg4SkXHphM1+onTI	64c91256-6448-4b74-a8ac-d6bc309638f3	2025-05-20 19:36:19.725	2025-05-20 19:36:19.725
cmawx011c00gf4wt9yaukhko5	Derek Price	Verla.Greenfelder0@gmail.com	$argon2id$v=19$m=65536,t=3,p=4$b0DEhh5FEXHVKYd5wFBCMg$/Z4W+q3XcNdqB76SNa1PoM8vzuk5aArQCi5LJjTWP2U	67f8618c-6b3d-422f-8f89-6ac7961c0d78	2025-05-20 19:36:19.777	2025-05-20 19:36:19.777
cmawx012w00gi4wt9mal9fowl	Beverly Wunsch III	Reinhold.Medhurst73@gmail.com	$argon2id$v=19$m=65536,t=3,p=4$F/mfLfQpqCmPOnOlleYedw$n+qeencnxBgv5CnpwhvG5+E1u3p+AtmTWAcAPQm6mJY	1ce66b57-fded-4225-8fef-8526f68da945	2025-05-20 19:36:19.832	2025-05-20 19:36:19.832
cmawx014e00gu4wt9dlkf0jl8	Mrs. Christine Schuppe	Lennie_Schoen6@yahoo.com	$argon2id$v=19$m=65536,t=3,p=4$J7pPHDdzs4eUV19rkSg9XQ$iCjHG+s7qw9B0zAJPXB8PVkrL6XVELuJYWTk7Cnrkpc	6341e15a-fd0f-4748-8ffd-18a569223533	2025-05-20 19:36:19.886	2025-05-20 19:36:19.886
cmawx015n00gx4wt90748rtdq	Joe O'Keefe	Jo_Cormier@hotmail.com	$argon2id$v=19$m=65536,t=3,p=4$M8ZcrFxWJ98o2SZCWtrk8g$E6N1Vp4UeES5M6lQF6dM6IgnnOL1wSfexBeXTBmXS9I	b1ea968f-3dc8-402b-9557-fd27ef6628f5	2025-05-20 19:36:19.931	2025-05-20 19:36:19.931
cmawx017900h04wt95t94jzbu	Daryl Legros	Loyce.Roob@yahoo.com	$argon2id$v=19$m=65536,t=3,p=4$WNLJu12+TBK4Yt7DWSWtyQ$AIt0Fw+LrQQXjBgUFwdqoXc+H8533oDlCFSIgGAoR5M	7a0d63ee-b2c5-4a50-b316-da523b98a414	2025-05-20 19:36:19.99	2025-05-20 19:36:19.99
cmawx018r00h34wt948uyy5js	Estelle Koepp	Rickie_Schaden@yahoo.com	$argon2id$v=19$m=65536,t=3,p=4$wDaMsWyW5NhGRUALtEjjIA$9aQuKT5VnIjgpnTiaFkxf8lhCCA7LXMu/DDVO/mivbk	83df145f-9e5c-4840-bae3-6e6a7e396352	2025-05-20 19:36:20.044	2025-05-20 19:36:20.044
cmawx01a400h64wt9sfovsfxd	Dr. Sherman Howe	Hilma75@gmail.com	$argon2id$v=19$m=65536,t=3,p=4$UiZTs+OGi3tOTG2ITAxJlg$yLpr3ta2YFqmN9imfObTbBL3eo2VC6tYrA8y/8GF5qY	8966b2b4-552f-4dcb-8872-fe4b0e7822de	2025-05-20 19:36:20.092	2025-05-20 19:36:20.092
cmawx01b900h94wt99bpz2usi	Alberta Murazik	Darrell_Dickinson21@gmail.com	$argon2id$v=19$m=65536,t=3,p=4$gHS2v+eP2Syd6//mutbYEw$3yXF4CfQGBy59gb7uXt5O0WCmD2KgHnOuemBHfyTo9A	5a4350b6-50e2-4749-9df8-31a2b334e6f3	2025-05-20 19:36:20.133	2025-05-20 19:36:20.133
cmawx01cj00hc4wt9z1hfo0rs	Luis Ritchie	Moshe_Nikolaus79@yahoo.com	$argon2id$v=19$m=65536,t=3,p=4$NJk/2QH5uLls/7gbmUuC1g$k4aHps33RzKUA/Ody5mbwED2QFOcMQkreca2B8krlug	51f8377f-dc0e-4cc2-965c-eb62596b862f	2025-05-20 19:36:20.18	2025-05-20 19:36:20.18
cmawx01du00hf4wt9zz1xga5p	Dexter Dach	Carlo_Roberts@yahoo.com	$argon2id$v=19$m=65536,t=3,p=4$G6YOduT7PAhlVYhzwyLodg$yVYxC5l8BP4/fzE8k/W/ZfhJvuwpEDSgsrMvLRmlULk	f52e7fbf-1f67-4a0b-a70b-9cfb5c420755	2025-05-20 19:36:20.226	2025-05-20 19:36:20.226
cmawx01ey00hi4wt9zd40vdy8	Miss Emily Kuhn MD	Melany.Zemlak@hotmail.com	$argon2id$v=19$m=65536,t=3,p=4$N2hJAV4pzsATEk4QSb2Kfw$K/POzpGbL7tvefdhckELLDqjSeNP14//xuCteZtT/eQ	493698bd-d185-4c8a-9b68-c5683078abb0	2025-05-20 19:36:20.266	2025-05-20 19:36:20.266
cmawx01g100hl4wt9beu7igxv	Elaine Huels	Della.Nikolaus@gmail.com	$argon2id$v=19$m=65536,t=3,p=4$soJuOLeChz0iV53DLZeJLA$p2x1/Na8MtKz3hXqqg/Gwy2rC72BB9Fbuv69u0FNBJY	38de212a-2650-4057-98c8-3e76133de577	2025-05-20 19:36:20.306	2025-05-20 19:36:20.306
cmawx01hg00ho4wt9b62c59tq	Florence Reichert	Urban_Hermann@hotmail.com	$argon2id$v=19$m=65536,t=3,p=4$JmoCWmEbr2XhBh1dBhh0Yg$sTjV7DEv8YKLTGS4h9EyNRRkAVUEUQEc90K1mXkkJ2s	2edfdd61-c439-4d7f-b76f-30d27a8e20cb	2025-05-20 19:36:20.357	2025-05-20 19:36:20.357
cmawx01j700hr4wt9ya769qtu	Seth Bernier	Darien_Kreiger15@hotmail.com	$argon2id$v=19$m=65536,t=3,p=4$v456+18T0lJVABGawCIUIw$LI2nhxyo03rp1hCXmU1BLLZWCTyCksPx+/AwxZTdYj8	477387bd-d4b4-4801-9e5a-a0b8fe83c009	2025-05-20 19:36:20.419	2025-05-20 19:36:20.419
cmawx01km00hu4wt9ofef7p8c	Kelli Langosh IV	Claudia.Funk@yahoo.com	$argon2id$v=19$m=65536,t=3,p=4$flE7VLrb4xJSPyeRhn059g$N77Y8gzTi2t764rENmVUjm+ph6m4D0oKIHbpe9Jp3fc	8a9acb6a-1936-4795-bd47-baf34e32d680	2025-05-20 19:36:20.47	2025-05-20 19:36:20.47
cmawx01m100hx4wt9dt8jpd17	Leland Lind	Ernest45@gmail.com	$argon2id$v=19$m=65536,t=3,p=4$92KBY6CTCkY+8dwfQlKbcg$xiwb4+XfHDEXadbFeNc7RwiGD4qszdq1rYlnmOlCzgk	92a1519a-c87e-464d-a6ea-c0700c537880	2025-05-20 19:36:20.521	2025-05-20 19:36:20.521
cmawx01n600i04wt9jq2de9fo	Mr. Anthony Gibson	Ariel_Flatley59@yahoo.com	$argon2id$v=19$m=65536,t=3,p=4$RHyWWQe+aEqa6eEInhXg/g$Hc2fYCSOz+/NWZ7Q4TKINTxV5ISCvU5x/un7U9wmy6I	1df38c91-1ed9-4463-8d82-941b6d044463	2025-05-20 19:36:20.563	2025-05-20 19:36:20.563
cmawx01ob00i34wt98ubjbyit	Dr. Zachary McClure	Alvis.Bednar38@hotmail.com	$argon2id$v=19$m=65536,t=3,p=4$4HArLnb2l88rz9FfJkVlYQ$s0LNC6gssmWwS2tNFSBHJ7MU5QK9RhoMzgm1o4zR39c	d6bda7d2-30e3-416d-a9dd-727c731756e5	2025-05-20 19:36:20.603	2025-05-20 19:36:20.603
cmawx01pf00i64wt9vxwto9ug	Dana Metz	Willie65@gmail.com	$argon2id$v=19$m=65536,t=3,p=4$I7bHe43a0akPlCOzFCKlYA$E5AGUIXEYq+1UNsgKyc6+8faUhOkIERcDKVpbEtaixM	9c50a549-fbf4-4840-a6c9-0102c5ae8c82	2025-05-20 19:36:20.643	2025-05-20 19:36:20.643
cmawx01qr00ii4wt95tl50s6n	Rachael Braun	Anastacio_McDermott74@gmail.com	$argon2id$v=19$m=65536,t=3,p=4$WBXde4zzyo3N6ao/yJh8Eg$Ivr83dc1mJtPF7mxOJkhKxXGGBOHOKYd4+GceOJ79Kw	3230e781-2762-4501-80a7-958814104491	2025-05-20 19:36:20.692	2025-05-20 19:36:20.692
cmawx01rx00il4wt99scxm9gf	Kelvin Satterfield	Jevon_Schaden@hotmail.com	$argon2id$v=19$m=65536,t=3,p=4$oApNpLTL3h20qujVM4Ba7w$VFw48TDQD6qtAXNQRnXKnUCL4Npjq/woYwzvbAB13YQ	3575484c-b5e2-4893-a88e-f480b16c7ed6	2025-05-20 19:36:20.734	2025-05-20 19:36:20.734
cmawx01t400io4wt9t8d89kfq	Francis Rodriguez	Nels_Harber@gmail.com	$argon2id$v=19$m=65536,t=3,p=4$PgdSrV5S4B+VOkZT/9RLZA$o8aSQ5Ev/MUbqJtMOegqQAL7+4XtkquxO9ppIitLfW4	4df8dafb-a85b-419a-b707-49f2e3dd146f	2025-05-20 19:36:20.776	2025-05-20 19:36:20.776
cmawx01u700ir4wt9y5fq1mkb	Shawna Hilpert	Kameron15@gmail.com	$argon2id$v=19$m=65536,t=3,p=4$VE6D8UIPVNwyO/eXqB0M3A$+Kfsg0jPrkCkecveRZKFufacqUL4L9euzoqSBfdQ+C4	d369b4ed-8028-426c-b284-e6a27a090180	2025-05-20 19:36:20.815	2025-05-20 19:36:20.815
cmawx01vb00iu4wt9891it6b7	Abel Gibson	Leann_Feeney@gmail.com	$argon2id$v=19$m=65536,t=3,p=4$6prC55iyKJxNg4Bc1F1gcw$WKPiR3UlvJL5HU9174B83xt+BiXUjZRMK+LiCa6QQyc	27fd0c1f-0fe6-44a4-8760-5a63190335f8	2025-05-20 19:36:20.855	2025-05-20 19:36:20.855
cmawx01wf00ix4wt9531zup6j	Miss Colleen White	Herbert54@yahoo.com	$argon2id$v=19$m=65536,t=3,p=4$lh4Pgr4TPlQBqEG3/oty4A$VDm4r4TTUDcKiEJMeS5DVoCa/JLf/4k9JvujkFSYHps	bae5186d-8186-454d-8e55-349d58d005b8	2025-05-20 19:36:20.895	2025-05-20 19:36:20.895
cmawx01xi00j04wt9n7chcyoo	Van Nicolas	Karl65@hotmail.com	$argon2id$v=19$m=65536,t=3,p=4$RsxHBzqFRhC6yhebBk8NVg$gGjHyY++b3358eEqHVLnX4bAbcnEvlQ1M4BMVCdD96k	ebaa618d-7b12-468d-bd2a-7edf3cde27a4	2025-05-20 19:36:20.934	2025-05-20 19:36:20.934
cmawx01yl00j34wt9cetl2ns8	Dr. Tara Greenfelder-Cole	Theresa71@yahoo.com	$argon2id$v=19$m=65536,t=3,p=4$0FDpUlnzG1p+TayBC40acw$TgE+d/8XzTdRcIDNLSiIKbLPDBlOsACbvxvbQMtkGLE	c2d5f392-916e-4126-ad10-3801d65a4c1d	2025-05-20 19:36:20.973	2025-05-20 19:36:20.973
cmawx01zp00j64wt9tlnmkq1t	Jan Olson	Gaston_Rolfson-Crona@hotmail.com	$argon2id$v=19$m=65536,t=3,p=4$dyYmGUQIgRSGZMcZDYbLtQ$WQeU6ukYtd/4c0pZXkfchDKXsa+g3TAp1O2IXNpJ6Y4	731ccfa9-fcd5-43d6-96ae-a5493f922a76	2025-05-20 19:36:21.014	2025-05-20 19:36:21.014
cmawx020s00j94wt956qngpka	Rogelio Hyatt	Salvatore85@hotmail.com	$argon2id$v=19$m=65536,t=3,p=4$faf51081bio18wgYERDzgw$/qAZ2mcE21jN6KeH4ewa4bMxV8jWb/FXfnvrHb4mcus	1d82f432-4c29-45e0-8e30-116015ce58cc	2025-05-20 19:36:21.052	2025-05-20 19:36:21.052
cmawx021u00jc4wt9yxpkqmna	Roy Boyer IV	Angelica39@hotmail.com	$argon2id$v=19$m=65536,t=3,p=4$guDtvoIu81XJ5QbBdUsyyg$qZrYO0I+TFZ5e1lo5F1q2DLFrjD2ZayO7kpHb7idn44	a1cc887a-03e9-4f95-bcd1-b35446551c66	2025-05-20 19:36:21.09	2025-05-20 19:36:21.09
cmawx022w00jf4wt90ei3poou	Kathy Bins PhD	Martine_Gulgowski@hotmail.com	$argon2id$v=19$m=65536,t=3,p=4$0qBa/BvA1kcX8M47/CaipA$vcj25TSAWKDtMi3+y44AW1H8Sgs1ubyjyiEBGn0/UDI	ddae28a4-2483-4927-b864-44d26fbeafb2	2025-05-20 19:36:21.129	2025-05-20 19:36:21.129
cmawx024100ji4wt9y7x51tm7	Latoya Bradtke	Jamil_Waters@yahoo.com	$argon2id$v=19$m=65536,t=3,p=4$+yt1w098PQlv+sraQDL+pw$AzMuqrskm6IzI+cOUKcw9c0ouPztMP6mma4+T5GTNqU	9bd3337b-5f83-45c8-868f-26ba27b32090	2025-05-20 19:36:21.17	2025-05-20 19:36:21.17
cmawx025700jl4wt9z1gemvum	Alberto Bartoletti-Lakin	Fred_Jerde@yahoo.com	$argon2id$v=19$m=65536,t=3,p=4$eLxRoRbhuK2B6nhgcHpPIw$ycNfnfVVPdNc7cUmtKIkx0MQKA6gP8jlR/XF6A05SQ4	dba709bf-1fae-404b-839b-014f1342c479	2025-05-20 19:36:21.211	2025-05-20 19:36:21.211
cmawx026b00jo4wt9huyl5p3a	Faith O'Kon	Gene55@yahoo.com	$argon2id$v=19$m=65536,t=3,p=4$z5MQN3ZGNJuQC4iQRysmbA$FBbuBNLtOCQR+Lj/Ds3DFfSQnB0svTC1E1P4ZN59ZKo	43dda8a3-3014-41e3-b139-ca531ee3dfb7	2025-05-20 19:36:21.251	2025-05-20 19:36:21.251
cmawx027k00jz4wt9nq09cua6	Joan Veum	Monica_Runte19@gmail.com	$argon2id$v=19$m=65536,t=3,p=4$bz+p19cxPgW0TktPtbxWWg$7Ai5maF8hWSTnqD5/PFJfe/go80wpYqwHKF8uB2FNg0	8707978c-e19c-48a6-8415-08da53d966f3	2025-05-20 19:36:21.297	2025-05-20 19:36:21.297
cmawx028o00k24wt90cvmvnrh	Angel Prosacco MD	Evans3@yahoo.com	$argon2id$v=19$m=65536,t=3,p=4$0Cxc/IdWPY1mjZ/r0ZBl5g$fm5WRQZ4YfhsGz1muPZ1HmT4cC8U3UQH7l2rvCo3ypE	20cddf8d-42c2-415a-9f4c-8c1f2309e035	2025-05-20 19:36:21.337	2025-05-20 19:36:21.337
cmawx02a000kc4wt9auc6lspx	Iris Lockman	Schuyler_Windler@yahoo.com	$argon2id$v=19$m=65536,t=3,p=4$NufvX7BrJ/laXqjw9d007w$YfACI9zZ5mJaZIfc1wEnxzUDli4kNVyyco/m0hes6BE	0646a981-ceed-4aee-adcb-ac61c48f2bf4	2025-05-20 19:36:21.384	2025-05-20 19:36:21.384
cmawx02b300kf4wt9w5e000xf	Lola Schuppe	Damaris34@hotmail.com	$argon2id$v=19$m=65536,t=3,p=4$Odu45MIVd9LhNepLGReCqg$e+WfLsFMNMAQb/H2Pujb5uanyfawUOIrHgicqYngfb4	42ff9959-1d53-4fd5-b7a8-50de03be4692	2025-05-20 19:36:21.423	2025-05-20 19:36:21.423
cmawx02c600ki4wt9up7ucp0c	Mr. Carlton Sauer	Kenyatta_Orn25@yahoo.com	$argon2id$v=19$m=65536,t=3,p=4$X6sWge1MlRJDy7mx/fhPQQ$vrD9EeHwzfC0HKoTTe7zVkc8nLEgmGxnz7fsO/jqzw0	6a5a7371-5c9e-4fbd-9909-a294da24deeb	2025-05-20 19:36:21.462	2025-05-20 19:36:21.462
cmawx02d900kl4wt92393kcrm	Corey Kautzer	Leila49@gmail.com	$argon2id$v=19$m=65536,t=3,p=4$IL6ZpSVmnGhj/ut/e4p3UA$cdv1yh+TeeSWX93fOM77LLDqO5Qd8d0DUQdCaZtooEA	0ffbf40e-56db-4b28-b6dc-83ec7ededb48	2025-05-20 19:36:21.501	2025-05-20 19:36:21.501
cmawx02ed00ko4wt92dgpr5o6	Dewey Kulas	Junius_Mertz16@hotmail.com	$argon2id$v=19$m=65536,t=3,p=4$HeK3tx5+e7kO5V81vyJXUg$JZWlrm09Uncd2g9lvkXkO0XjXpeq9pTkkv/DcFHMSPA	a8decd69-d4e1-4607-be77-1ce56e2e5342	2025-05-20 19:36:21.541	2025-05-20 19:36:21.541
cmawx02ff00kr4wt9dw490wev	Peggy McGlynn	Wilbert.Zulauf14@hotmail.com	$argon2id$v=19$m=65536,t=3,p=4$vuxoQbDOcRCjAjuUZlPcAA$CGalY1W1+5iu7ErVqb1f484yM1Le6/IJf7jHzu8ocSE	a8831c91-6714-47d7-b90b-51c8b6266f4d	2025-05-20 19:36:21.579	2025-05-20 19:36:21.579
cmawx02gj00ku4wt9y2os1vu3	Dwight Waters	Jacinto_Gerlach@yahoo.com	$argon2id$v=19$m=65536,t=3,p=4$TNC6C32EqgRWljxfs5KfAQ$/bGesH00jCkgY+8N078Z2OA6k2N3e1Q3CuC1pmSaAlo	7a4e6659-8206-427f-98f7-8091a20a69b2	2025-05-20 19:36:21.619	2025-05-20 19:36:21.619
cmawx02hm00kx4wt9zeuirv6y	Mrs. Rosalie Bartell	Hellen_Hodkiewicz25@gmail.com	$argon2id$v=19$m=65536,t=3,p=4$TTlm49ieKsjfV+KbE7aenw$4Tykx9f3/3mskJ0dS70ZYeWoP8zggAQPqE0jTMr3+jA	1fe5084f-7a67-4276-90b1-c81839fe1847	2025-05-20 19:36:21.658	2025-05-20 19:36:21.658
cmawx02ip00l04wt90901k8kh	Nicolas Ankunding	Jessyca.Mohr50@gmail.com	$argon2id$v=19$m=65536,t=3,p=4$CO+GxfB+rkAX5fnZA0Yagw$hR+6ekNYIezI1Xd3HAq63U/8ipY1bbBnoW9UfoKUNpw	521c2931-d5b0-4e79-bb7c-7f3546811b38	2025-05-20 19:36:21.697	2025-05-20 19:36:21.697
cmawx02jt00l34wt983i99buv	Cary Langworth	Mose.Boehm@hotmail.com	$argon2id$v=19$m=65536,t=3,p=4$74Pp44cuUyE70qv8vdgCrw$axTeN81+OIQCpvDrsWhq65i9+/7sDaa+vOM+azuPAgs	85f26297-50a1-4aa9-884e-1eebc4fab271	2025-05-20 19:36:21.738	2025-05-20 19:36:21.738
cmawx02ky00l64wt9jdwxqjjb	Dr. Wallace Mraz	Hiram42@gmail.com	$argon2id$v=19$m=65536,t=3,p=4$6GdD4FUMKrYrUUZyLVC4CA$rfyo8S/BYykhTZTn/woFg1qjA3xtViwW4pPr/w9/2+I	9de34239-07fd-46fa-89ef-990ca5163400	2025-05-20 19:36:21.779	2025-05-20 19:36:21.779
cmawx02m200l94wt9ne00mnrp	Angel MacGyver-Bailey	Carol_Hirthe@hotmail.com	$argon2id$v=19$m=65536,t=3,p=4$aPm70Z5POHGpRoSSRcLhMg$bb1TXtLKVxGwVx32+VSODimWml5js6Vrabs0WordTKw	33767663-d092-4220-b3ba-f61842be3eb4	2025-05-20 19:36:21.818	2025-05-20 19:36:21.818
cmawx02n500lc4wt98xsqx31n	Rudolph Hermann	Ray.Cummings10@yahoo.com	$argon2id$v=19$m=65536,t=3,p=4$8rIn9DiPps0lMElWmWlbrw$yqtS4NnfUQgfmO3/FW8kN5C2jD90zInx0bu7jn8FtXQ	25f2595c-91d7-4934-b1dd-e99e5d3b289e	2025-05-20 19:36:21.858	2025-05-20 19:36:21.858
cmawx02oa00lf4wt91stfj8v5	Marc McLaughlin	Ahmed4@hotmail.com	$argon2id$v=19$m=65536,t=3,p=4$/Pc+8XPycBpOVQkWvwOVvQ$VQaY/GrqIh8KsXK1gD4l2oLYH/ASIbFTKf/CRpq/upE	72724f35-530d-4381-8def-db1d2faf7771	2025-05-20 19:36:21.898	2025-05-20 19:36:21.898
cmawx02pk00ls4wt98izmx00g	Dr. Ramona Renner	Beau.Ebert43@yahoo.com	$argon2id$v=19$m=65536,t=3,p=4$D+rXltf1S7gdc/gRLo6a/Q$z5nMnecJjvOWNSGZdWbGCBu98oUVykjcbZDnnydonwI	67bd0085-b5fe-4e09-a4f6-00ff07723a13	2025-05-20 19:36:21.945	2025-05-20 19:36:21.945
cmawx02qo00lv4wt903hb8d1a	Vanessa Rohan	Beaulah_Mosciski@yahoo.com	$argon2id$v=19$m=65536,t=3,p=4$CfRdYlMykMSwUabM1zAc3w$+XiFKeDREGevzU1b8Iibr3gh/dzyvKJx3dGZp3j+9uE	d1c48c19-9906-4346-879c-0ba63480a02d	2025-05-20 19:36:21.985	2025-05-20 19:36:21.985
cmawx02rq00ly4wt93i3lx3br	Marta Becker III	Chet_Gorczany@gmail.com	$argon2id$v=19$m=65536,t=3,p=4$4dz62iIfWMhyjXGRJmxc/A$IVChp93gikjmDfTVsLYCJ1FNPquVgXZXMjJgvWboRBc	1924b942-3364-483d-b752-03ec9ed6e579	2025-05-20 19:36:22.022	2025-05-20 19:36:22.022
cmawx02ss00m14wt9bbk5ps3s	Ms. Courtney Blanda	Olen19@gmail.com	$argon2id$v=19$m=65536,t=3,p=4$3oUTn6Oa+C/5mbhDcaNx5Q$QhnMhV1SjTxs0LSh9Cg4ILxdJcgRmLPj1ZqNK/8DFJc	3b841be1-f468-4a11-9e7d-f6d6abf1a00a	2025-05-20 19:36:22.061	2025-05-20 19:36:22.061
cmawx02tw00m44wt9vwy611ca	Claude Steuber	Ima_Thompson56@gmail.com	$argon2id$v=19$m=65536,t=3,p=4$HLIKqC5XIVTC5a8jgUMwdA$QK7q/A0ywzNJK8hBfRIw/wmYey3sK/7oZ6htR5978/c	330734a5-a4a0-491a-a622-a78c1601a16f	2025-05-20 19:36:22.1	2025-05-20 19:36:22.1
cmawx02uz00m74wt9xrlzakgz	Ms. Lynda Gleichner MD	Camylle.Cassin36@gmail.com	$argon2id$v=19$m=65536,t=3,p=4$hKsp2OEHtjAcL6H0myY2vA$wDVqb/V3CcMC0N6sW/4v3LSQTJlEAi/lbYpEctYms58	34bec8fe-22da-4a26-8aa5-ebedb396396e	2025-05-20 19:36:22.14	2025-05-20 19:36:22.14
cmawx02w400ma4wt91j6z6t81	Vickie Blick	Liam.Erdman@hotmail.com	$argon2id$v=19$m=65536,t=3,p=4$kmWrF+/PA9A3A/HgAk5JpA$cu/2n5mSpJipb6uDcN/CwmnB2RhvwHzBw7y1juZDoi8	23a27899-5140-40d8-8303-dac7dcc85edb	2025-05-20 19:36:22.18	2025-05-20 19:36:22.18
cmawx02x800md4wt9les8cr94	Mr. Pablo Jones	Bernadine_Brown@yahoo.com	$argon2id$v=19$m=65536,t=3,p=4$7iVbqYPlZsVDg4QwTKWzWw$WY60ixLOD1PG6CJeJ12lLYMli5u43gIic3jgYUEjdDE	930835af-42e4-41cb-bd8a-e07b1687490b	2025-05-20 19:36:22.22	2025-05-20 19:36:22.22
cmawx02yb00mg4wt98c6j1ae5	Lois Lubowitz	Tad63@hotmail.com	$argon2id$v=19$m=65536,t=3,p=4$CNz32GeuJ8A0iLumwN3TKw$sUq/3Bzp2gIHYNHLPcVHvdVB+QQF5b2bWXDoeDoad3U	ec1c0ddd-7627-438f-8123-85a7db08a851	2025-05-20 19:36:22.259	2025-05-20 19:36:22.259
cmawx02ze00mj4wt9365xdo95	Dr. Felipe Veum	Scottie.Mills82@yahoo.com	$argon2id$v=19$m=65536,t=3,p=4$iq5T/tmTUEObXft8xQlbbA$udJlEz56n7jGx7xD45Ov+g1+U8cA6/O/4LFWjgY1mpY	92a4ac56-e872-454b-8c9c-bd556e68ee4a	2025-05-20 19:36:22.298	2025-05-20 19:36:22.298
cmawx030j00mm4wt91ibqh81e	Ramiro Feest	Tyrique.McGlynn@gmail.com	$argon2id$v=19$m=65536,t=3,p=4$HMSpG4WzHpjSGGZipv4FTA$oY1kQXtOGNZPNOur77AG/GOnQT/2viS0BMTj/VRkNXk	73b91022-bfa4-4f75-a83a-9ba582a29f13	2025-05-20 19:36:22.34	2025-05-20 19:36:22.34
cmawx031v00mp4wt984fzm03v	Jerome Runolfsson	Earline.Harber6@hotmail.com	$argon2id$v=19$m=65536,t=3,p=4$wkXN3M/F+mf8/EFspYxWTA$TBA/09mLDu382Cd88q/L3cgXHHsssAwa22fIsdvL5SE	4ba920b4-aaa7-4eec-9f79-e49665737da0	2025-05-20 19:36:22.387	2025-05-20 19:36:22.387
cmawx032z00ms4wt9qod3bdk1	Katrina Borer	Karley_Leannon18@gmail.com	$argon2id$v=19$m=65536,t=3,p=4$LCDK5uzRRPV4gB6eK9XB7Q$UD8lQREtraiCdVNFwC3gQA5WCIagL3rP2SRLIMEHeSY	0585d1c7-ea32-4aaa-b200-d9e5003d3ede	2025-05-20 19:36:22.428	2025-05-20 19:36:22.428
cmawx034300mv4wt9r1gaxyeu	Sabrina Berge	Merl.Kiehn-Grant56@gmail.com	$argon2id$v=19$m=65536,t=3,p=4$+1aBtW6JBW6uTFzimLHRQg$kKZm4RdqZW6uOmInuHeGehquExDjwF1wVxNcfdr/YC0	564ae7e2-7662-49dd-a2d4-bbb41e45d1a1	2025-05-20 19:36:22.468	2025-05-20 19:36:22.468
cmawx035600my4wt9r4le9zna	Sheri Graham	Retha.Tillman-Kassulke@hotmail.com	$argon2id$v=19$m=65536,t=3,p=4$GTXs3i9puTL1+BPDKbbhOg$+y415vZHhT0CvmfNem5+i7Saelpx10yhy5COz3CJCA0	c0e30327-1342-4d73-883f-0dedb8fd0004	2025-05-20 19:36:22.507	2025-05-20 19:36:22.507
cmawx036a00n14wt97jx9gmur	Sheryl Klein	Kristina.Hermann48@gmail.com	$argon2id$v=19$m=65536,t=3,p=4$6s+QgnNJ7CL3ygp+SNLBNA$GLtvpAPcxmoJXszn1BKtK0fiNiYfOeJ61JmjDDBtAmg	eaa1c348-bf73-4c53-b2ce-547edb69bfc1	2025-05-20 19:36:22.547	2025-05-20 19:36:22.547
cmawx037f00n44wt9fhip1xeo	Cynthia Schaden	Katelynn_Howe@hotmail.com	$argon2id$v=19$m=65536,t=3,p=4$TT0XoaUu9RLWnx4tIEIc8w$FijlhDSzA6sXBo+0a0UGtEsFDKsfH67YbaJkgNPSYdI	b0e8eae6-d8f6-4fb1-827a-1be4b2a30e8a	2025-05-20 19:36:22.587	2025-05-20 19:36:22.587
cmawx038i00n74wt9ncjbpjak	Miss Tracey Quitzon	Bridie.West@gmail.com	$argon2id$v=19$m=65536,t=3,p=4$WBBroxOqzN56kP1tcwm1Fg$F6S50ID8WGH4nWJfxmfDy7lC4foMjd7yT3R2udWLh+k	7f833b6b-6aa6-497c-8a7b-5a07b63e517c	2025-05-20 19:36:22.627	2025-05-20 19:36:22.627
cmawx039l00na4wt9emy2iq5y	Joseph Murray	Glennie54@gmail.com	$argon2id$v=19$m=65536,t=3,p=4$WID/9Kg+A54MLaaej7O44A$ENcY8A11ecTiWsCzKPw721r59pMyC6q39rtyZiCIY1o	333dadd6-6da5-4c68-b114-4031935b6ae5	2025-05-20 19:36:22.666	2025-05-20 19:36:22.666
cmawx03av00nk4wt9l36xdtfk	Rene Bogan	Rasheed_MacGyver49@yahoo.com	$argon2id$v=19$m=65536,t=3,p=4$a4y4BX3U+RkSaYLjhZJzFQ$NvswE+Y0t2zK7BjDjtGVIqPfAeC8xoOOsVDzL98MbI0	9ed1fbdc-1fce-44f6-b700-f625df98bdfe	2025-05-20 19:36:22.711	2025-05-20 19:36:22.711
cmawx03by00nn4wt9lxvdjad4	Miguel Nicolas	Shanel_Kozey89@gmail.com	$argon2id$v=19$m=65536,t=3,p=4$17dSwoZ7Dpo1gdZZf43low$AOrmiUNFQiaBVknJ8/q6GSGJI1MLMDIHROwUNVfA5zQ	e4ac17cf-be5a-452f-90af-07fea9666e6d	2025-05-20 19:36:22.751	2025-05-20 19:36:22.751
cmawx03d100nq4wt9nkexizxm	Fannie Wyman	Lester27@gmail.com	$argon2id$v=19$m=65536,t=3,p=4$ymCjve2xzbSz0GGk4YhCcQ$ez0VHwER6IC4ARMOd3Ohh+kBE8ZJsL6lQetox+UiXpg	59012268-beab-4f06-abea-544a0ddcd406	2025-05-20 19:36:22.79	2025-05-20 19:36:22.79
cmawx03e300nt4wt9fekzo88v	Toby Hermann	Frederik.Hoppe@gmail.com	$argon2id$v=19$m=65536,t=3,p=4$Mn+djXy7B0eD+w8AWEzgBA$68gHzhGHapdIb/oBF0V8x03eR0OHZfaP+HrjE9mkM+g	a375dcef-e0e6-4873-8982-c75aab7ce209	2025-05-20 19:36:22.828	2025-05-20 19:36:22.828
cmawx03f700nw4wt9ckw0430u	Deanna Konopelski	Laron.Prosacco67@gmail.com	$argon2id$v=19$m=65536,t=3,p=4$NpuZaFF6/qYHUFJ56jIIog$ISBeseJyib+WeGRzT8VjlvVoyCjHO+S+rVI1Ot4HTCc	b2d27135-2dd8-440b-90fb-1171dcecf729	2025-05-20 19:36:22.867	2025-05-20 19:36:22.867
cmawx03ga00nz4wt94g5jq6qx	Elmer Beatty	Andreanne40@hotmail.com	$argon2id$v=19$m=65536,t=3,p=4$Um/GyYZgx1Ho2+YTr+veSA$ZHiWDNvastTYdeX+cE35lZOgD3ZxmKNm7uJrr+uRLpM	a239bd3e-efe0-429e-ba24-91e90029b1fb	2025-05-20 19:36:22.907	2025-05-20 19:36:22.907
cmawx03hd00o24wt94ct694xa	Judith Lubowitz MD	Joana_Jakubowski@gmail.com	$argon2id$v=19$m=65536,t=3,p=4$URJQ5K6Nr7E90Kezqxwe4g$VEWfS+y+FDLeqiNjeF5ikNj9o4qyNdFmI8REvZ21tD8	b37b3293-4ae8-40a9-85df-2e60ad2fea81	2025-05-20 19:36:22.945	2025-05-20 19:36:22.945
cmawx03im00o54wt9x5ylcbnz	Dr. Mandy Larson	Marilie.Gislason@yahoo.com	$argon2id$v=19$m=65536,t=3,p=4$mCevWL4kT/0SbkbdH3EMgQ$rSMyibf/TxJipln5cBGQFIfr/3vumTS+Tx1RhuVC+Ts	bcfd0c36-008c-43a2-8de9-06e8389c68fc	2025-05-20 19:36:22.99	2025-05-20 19:36:22.99
cmawx03jp00o84wt95jo248a9	Blake Batz	Afton.Gorczany89@yahoo.com	$argon2id$v=19$m=65536,t=3,p=4$gk6HvFtoqbHsO/OiCmwnjQ$L/gBkUvegi3JUlxe2jwgcyxbwQz0bkQQahQBtA9Rois	22800374-48d7-4f2d-bf5e-64b7f009d34a	2025-05-20 19:36:23.03	2025-05-20 19:36:23.03
cmawx03kr00ob4wt9viy5lc0j	Gwen Nikolaus	Gerard.OConner@gmail.com	$argon2id$v=19$m=65536,t=3,p=4$V56PXJCUcIaDkn9zDDkrzQ$hJwHXNz3T8TFcNv4xBY3bSi1StQlBwAuBaQYazzrM80	17af245f-61db-4465-8d49-aa745720205b	2025-05-20 19:36:23.068	2025-05-20 19:36:23.068
cmawx03lt00oe4wt9e3li5p3f	Elijah Mante	Rollin_Skiles@hotmail.com	$argon2id$v=19$m=65536,t=3,p=4$KpvFaRLICF6pco5nvcn88g$mjmUgL1ghF7pyoytXYRazTIWpx2acVE3chnXsZwS8cE	3b4d41d0-173b-4adb-a151-236da382cf54	2025-05-20 19:36:23.106	2025-05-20 19:36:23.106
cmawx03mw00oh4wt9tqe186jx	Alton McCullough DDS	Eloise.Monahan95@yahoo.com	$argon2id$v=19$m=65536,t=3,p=4$13VBBTPry8JfMBMFc8dkNQ$q3gs08xZEvkVpEUy27ByHGzq3eLj1PY/iAOziLVXxNo	cc846bb8-7d62-44d2-afa3-f8ad5282ef25	2025-05-20 19:36:23.145	2025-05-20 19:36:23.145
cmawx03o000ok4wt9eqmxvgxq	Miriam Lueilwitz	Wayne_Wolff73@hotmail.com	$argon2id$v=19$m=65536,t=3,p=4$cPryGl41W+AJ5MUwwHnUDg$lpOihDfNwyIRdjWLO6Ma8OaF+G6IOkcHtk5wb9MPrHY	a33f020f-aba8-40fa-bfa7-9a0326d00520	2025-05-20 19:36:23.184	2025-05-20 19:36:23.184
cmawx03p400on4wt9d7p3zh88	Wilson Turner-Kertzmann	Lacey_Waelchi11@gmail.com	$argon2id$v=19$m=65536,t=3,p=4$zXo1bAV3zTQY9IwJmsl3tQ$3nNtVWXtMJBeqIo4MSU+RJbkDdgqs1Uuz+R7Pe4mvvk	a1de4a03-6e89-4a8d-8b00-f74994df7d74	2025-05-20 19:36:23.224	2025-05-20 19:36:23.224
cmawx03q800oq4wt9no8634uq	Rafael Runte	Alexandra_Crooks@yahoo.com	$argon2id$v=19$m=65536,t=3,p=4$DLYdbzMSBU5reAneGuqaXw$lTVgucGf3evqpFbV5xIYEEis72ILXKu/TlyKRjlxpzQ	41f78bb0-9c8b-4960-8c82-fab2d30f6107	2025-05-20 19:36:23.265	2025-05-20 19:36:23.265
cmawx03rc00ot4wt9qqavdmib	Mattie Ortiz	Dannie37@gmail.com	$argon2id$v=19$m=65536,t=3,p=4$cz93pfvt8m27DX10o7mKkQ$DcoH6wmAXBpw7z1dbd7vYfAX7dlXTRPptGnyEd9rYh4	988b63e4-ce47-44d1-9bcd-33e3d6730bd5	2025-05-20 19:36:23.304	2025-05-20 19:36:23.304
cmawx03sf00ow4wt9a4dr97y1	Maryann Koepp	Webster_Mayer@yahoo.com	$argon2id$v=19$m=65536,t=3,p=4$HAmPMqGYbUhsRo0o33oAlw$KqbNaXjRlBN3Ab+BRXQqxa4ooCcfPpKYln56D+5JWJM	d27736d9-c11f-42aa-9a0e-202fd4d86fa4	2025-05-20 19:36:23.343	2025-05-20 19:36:23.343
cmawx03to00p64wt97lkucc3v	Sonya Renner-Fay	Maybell11@hotmail.com	$argon2id$v=19$m=65536,t=3,p=4$uzqzLhIqEoyAx1Le25ixRA$HlIEEprNzo7c0EcQ7hxGwGzracpSr9mRJxUN5VbcCC0	77e48e1c-d7d8-4300-a734-e63fb1a4cb9a	2025-05-20 19:36:23.388	2025-05-20 19:36:23.388
cmawx03us00p94wt9kgus02sl	Dr. Joey Bartell	Emely_Orn@yahoo.com	$argon2id$v=19$m=65536,t=3,p=4$n/wjLoFCI+oWOFe48clbEQ$zsBefdlpL+DaQMxiY0kzhDJZbE0tV9W3P87JC/E1KhI	d015440e-fa2a-4777-8329-1ad9b4179f49	2025-05-20 19:36:23.429	2025-05-20 19:36:23.429
cmawx03vv00pc4wt9gqzcgsbs	Betty Cruickshank	Edyth_Schaden87@yahoo.com	$argon2id$v=19$m=65536,t=3,p=4$+gemHX4aPz8YNoabx0ykmw$tTok1Gw7L4AQWCuNp5gy1SgrGjCsfOYuNIDX97R/niY	74c94d3f-5ff3-4e01-bba0-6e205dc36b23	2025-05-20 19:36:23.468	2025-05-20 19:36:23.468
cmawx03wy00pf4wt94qrjgnou	Curtis Rempel	Anderson95@yahoo.com	$argon2id$v=19$m=65536,t=3,p=4$yCS+7q+L1kQ5IGIT1GhW4Q$3DFUaMw7D3tHJmpQbO01C0qCPRKyvADRvdoMaEZuLwc	7792cb98-b428-4cf4-bb3c-bb4d77559eaa	2025-05-20 19:36:23.506	2025-05-20 19:36:23.506
cmawx03y100pi4wt9jil2qgws	Mrs. Susie Koch	Kaley_Windler9@yahoo.com	$argon2id$v=19$m=65536,t=3,p=4$bCcXAQa1HNa1Fa719k+CBg$I9n8LHFQ1Ukg9lOkCrioyAx31YfHJmp+xvCFAbriHKE	826a2f81-cb02-40bf-be14-56b058e10e1e	2025-05-20 19:36:23.545	2025-05-20 19:36:23.545
cmawx03z400pl4wt9zomo904o	Dan Shanahan	Emma_Bashirian-Harber@hotmail.com	$argon2id$v=19$m=65536,t=3,p=4$6MFt8noBIEpvtmVt2bM5Gw$7IHjqRUbW3nFPzALLxMh1wuXa5IogkvI6Fhwo39ZLbs	243d5a6a-6131-4989-be98-4e1f96e28064	2025-05-20 19:36:23.584	2025-05-20 19:36:23.584
cmawx040600po4wt9ynefrl58	Patricia Wunsch	Saige63@hotmail.com	$argon2id$v=19$m=65536,t=3,p=4$sPyW7pVnyrmxHSBW9VRhMw$DvEqmTgiA/S4VuQBjo1b+2fKkErPIuxgtg79p0gjfd4	ac4c5ac5-db65-4e29-8a3e-ce7b90344fce	2025-05-20 19:36:23.623	2025-05-20 19:36:23.623
cmawx041800pr4wt9b7mri4rk	Sidney Willms	Melba17@yahoo.com	$argon2id$v=19$m=65536,t=3,p=4$1qIPkq9L0x+5ZfJSuC03Gw$bYxgR4KN8ZuDxSHFgXYQag/DVyKUPLXow0WJmtaXs/Y	3500d337-c8ba-49b0-b21a-a1f4c2f702d6	2025-05-20 19:36:23.661	2025-05-20 19:36:23.661
cmawx042c00pu4wt91mbbgoxg	Peggy Kuphal	Rossie_Glover@hotmail.com	$argon2id$v=19$m=65536,t=3,p=4$1EZWa54ihbhMyiFrd352tQ$/nudP9TyWQpGQWu34Dmk8yAiS05Ex3JcvgGGmQPGARA	034a6c65-07f0-4bab-bc58-05db9d54fdb3	2025-05-20 19:36:23.7	2025-05-20 19:36:23.7
cmawx043d00px4wt9tvdogb2c	Debbie McDermott DVM	Andreane_Jakubowski@hotmail.com	$argon2id$v=19$m=65536,t=3,p=4$b9P7ttUzfgZmZWOd5ZuxQg$YSoHgk6DWgKylag+QBLyBnjdlH7oqCbaWk2Hs1rVBfc	65967390-0f40-4de7-8490-d65f0c2ccbce	2025-05-20 19:36:23.738	2025-05-20 19:36:23.738
cmawx044g00q04wt9gkj0gc35	Warren Jones	Jailyn.Botsford6@gmail.com	$argon2id$v=19$m=65536,t=3,p=4$ccUxVB99zl885jYBNIuC+w$m9SuwratXP85wRPdu21i61LsUwpSqBxZingDMPzX16I	cdf14e96-5384-4326-9a84-6e26f79d21bd	2025-05-20 19:36:23.777	2025-05-20 19:36:23.777
cmawx045j00q34wt9sc9qavn4	Heather Wilderman	Kailyn_Wuckert35@hotmail.com	$argon2id$v=19$m=65536,t=3,p=4$7B8wuj/RGHPn2f0WcYdkIQ$apfpo517IMEK+9AKORkjSm0Bo2Vu6fJXTBdLrBqScPY	1ee720e7-b436-4e4b-b2ff-fbca6175e988	2025-05-20 19:36:23.816	2025-05-20 19:36:23.816
cmawx046r00qc4wt9rrth6gz2	Eva Leuschke	Carlo40@gmail.com	$argon2id$v=19$m=65536,t=3,p=4$7J6koKsC7TQSeY7vFPJHiw$eIThGdsgVna7HNNUfUr+rJ0WWVpeVD5KXu9JvCfFyOc	eb99bea8-dd13-49c4-a788-b73c9b865594	2025-05-20 19:36:23.86	2025-05-20 19:36:23.86
cmawx047w00qf4wt9u70jfqoj	Denise Kunde	Justine53@gmail.com	$argon2id$v=19$m=65536,t=3,p=4$LYkRzPgMxA8StLxGql1xrQ$zKJQ83yTjgpS5F1vFE3k1go3a5GcCqmpINSHxA38x/Y	fcb68cf5-e992-4989-b9a0-59fbf92d4ce8	2025-05-20 19:36:23.9	2025-05-20 19:36:23.9
cmawx049300qi4wt9230ekkyh	Bradford Parisian	Bennett99@yahoo.com	$argon2id$v=19$m=65536,t=3,p=4$rgeL5TOaOlg49zw99tXRoA$oC48POMnE2ZKkpKNfK1PL+xz3rcoVRbJHKr0kSCxVp0	270f051e-5eb3-4748-9309-f5d3e3a54d1a	2025-05-20 19:36:23.944	2025-05-20 19:36:23.944
cmawx04a900ql4wt9ga4cah7w	Lee Johns	Narciso.Rodriguez59@yahoo.com	$argon2id$v=19$m=65536,t=3,p=4$4sF4iYvs1h3q41JCV1bDlA$7PqEL9qNKIPq9LMiNShFyAPK3wHoy2VJbMJ7lBhRxNM	8d759306-b6f4-4ba2-8b41-c8e639fd7c5d	2025-05-20 19:36:23.985	2025-05-20 19:36:23.985
cmawx04bh00qo4wt9t5df4jyw	Lynette Bernhard	Tabitha96@gmail.com	$argon2id$v=19$m=65536,t=3,p=4$guFVdvI3bbzwBrCT+6tLVw$l+cPeDNPyxbxuyaucJox8D/geHyo7/hoOXj2qV+kSUY	1db2bf6b-d33b-46f9-b5a0-98ab92ae3083	2025-05-20 19:36:24.029	2025-05-20 19:36:24.029
cmawx04ck00qr4wt9iqqcu8xq	Miss Tiffany Abbott	Domingo.Parisian@yahoo.com	$argon2id$v=19$m=65536,t=3,p=4$Q9nTryK5qZdVNOeTSJhH/Q$BDLmDYYOqY4Ui4R9kaQysERKO3MQu9Io3EQfP6MQFq8	594c7b09-f8af-4747-8f07-c72dc9914921	2025-05-20 19:36:24.069	2025-05-20 19:36:24.069
cmawx04do00qu4wt95ooq595w	Raymond Walsh	Khalil_Huels@gmail.com	$argon2id$v=19$m=65536,t=3,p=4$7Y+tZddS5K1u/04RSf4xzg$KtM+uqyx7X2CQIoOJKt52WECDu9hCWI4wCESbdjRUAA	9aa37fbb-b7d1-4e94-95b3-7f6cbe8e42f0	2025-05-20 19:36:24.108	2025-05-20 19:36:24.108
cmawx04et00qx4wt92bhum7k1	Miss Joyce Kuphal	Kyle76@gmail.com	$argon2id$v=19$m=65536,t=3,p=4$7ldYgD05UOHMxAR11yRULQ$FiuZNvSBuC+tbFjesSP6HuPI4YXuHZ/hsoNjCjnF9GM	77d1fc7c-75c5-470d-acb5-ccdf288e5079	2025-05-20 19:36:24.149	2025-05-20 19:36:24.149
cmawx04fw00r04wt9fg9jh4jl	Saul Hyatt	Chad62@hotmail.com	$argon2id$v=19$m=65536,t=3,p=4$76kLMZU3cigeL0cLnOdITQ$q7/my1urste5GstTzz9WhYi6CQq4Uf8YTbnU6qy2oKU	8542bc31-f11f-47e4-b2da-fd4c2e8eba60	2025-05-20 19:36:24.188	2025-05-20 19:36:24.188
cmawx04gy00r34wt9b8nnqaf4	Alan Wintheiser	Sincere19@hotmail.com	$argon2id$v=19$m=65536,t=3,p=4$2YJEa5PDv/4Gsklkiixj2g$TmsubrJbV5Rd4aNTSy9ykuglyE7m3gIGYMpabe7wQ+I	263d69b9-f2a1-4a9b-bcd0-72c2650b43b4	2025-05-20 19:36:24.226	2025-05-20 19:36:24.226
cmawx04i200r64wt9x8htg37q	Tyler Mosciski	Selina43@yahoo.com	$argon2id$v=19$m=65536,t=3,p=4$MJD0A5lZ2wPviG9bKuCIGA$bZVKkXcfSDMLD8mxTk4qIh1HfoRAn44zHC12VjMlAzw	cf3bd9de-8f81-4074-9a34-31cdf1ba9eb7	2025-05-20 19:36:24.266	2025-05-20 19:36:24.266
cmawx04j700r94wt93sq8477a	Sammy Wolff II	Cameron81@yahoo.com	$argon2id$v=19$m=65536,t=3,p=4$QXTocKbxxuf+tt53T87iBQ$lLynGU6Rx4Bb7Otepr7Rer7lz38lgh/5SQmKfsVGFYw	e29dcccf-5a88-499a-8824-4a8dc36e1fa9	2025-05-20 19:36:24.307	2025-05-20 19:36:24.307
cmawx04kb00rc4wt9g05odpgn	Marcus Lueilwitz	Jarrett89@hotmail.com	$argon2id$v=19$m=65536,t=3,p=4$uZ+1K5gK8DLbhBBZWL+UkQ$JMuz38WsSDCAkjAab9G4co5oX+o8OMpZwGWtgTneDcE	18a080b5-6153-41f8-b6b6-4c15f38571cb	2025-05-20 19:36:24.347	2025-05-20 19:36:24.347
cmawx04le00rf4wt98hlgtqeh	Shane Gleichner	Enrique.Kautzer32@hotmail.com	$argon2id$v=19$m=65536,t=3,p=4$jqDwCHiEB3F2vwNCB4KlCQ$ncfSbhnjUWAwYuQdOkT6g3Y9GLV5lYxmbc0RblgSo5A	1f2cfb95-4458-42ed-a54a-e7b6c22713ff	2025-05-20 19:36:24.387	2025-05-20 19:36:24.387
cmawx04mj00ri4wt9m2m8vur7	Jordan Weimann	Ally38@gmail.com	$argon2id$v=19$m=65536,t=3,p=4$Hj5t/ol+Gncw0swWAp+slQ$zkcIbp9hz8iBSkRxDSvBd3IFlJYUzNp/rlkbhXXVMYI	c57d40c2-8036-4522-b00d-275c01412440	2025-05-20 19:36:24.427	2025-05-20 19:36:24.427
cmawx04nn00rl4wt9oimx3r9w	Dewey Renner	Mariane.Torphy4@yahoo.com	$argon2id$v=19$m=65536,t=3,p=4$qGrCp/4zrhQd1WhZORiyKA$fmwylVNJflIAExWK444GLQFJSpIMhS5XdHEc5WdtPgo	aab89211-e1c5-4d3c-a277-b679f8a56691	2025-05-20 19:36:24.467	2025-05-20 19:36:24.467
cmawx04or00ro4wt95v1b9okj	Alan McDermott	Amparo_Medhurst@gmail.com	$argon2id$v=19$m=65536,t=3,p=4$jCLSPOGMVxosCLyhcys+YA$fWLrCg0MPpkvqaCfAqmHw+deM6B1GJu2nGYfywwFOig	6a5e4a57-f59f-483e-86da-ef5baf535cb4	2025-05-20 19:36:24.507	2025-05-20 19:36:24.507
cmawx04q300rw4wt94d5nk6kx	Deborah Mueller-Johns	Rosalee_OConnell@yahoo.com	$argon2id$v=19$m=65536,t=3,p=4$YA9PYTY6z9PsQvLjiIIxYg$pxK91gDH6X1n2vJQQaUmYhEdQ6UtaE6LCNLB1FbdZhM	97282bf4-b6ed-431c-aa50-a23df9dc1e3f	2025-05-20 19:36:24.555	2025-05-20 19:36:24.555
cmawx04r800rz4wt9bdcyce8n	Olivia Davis	Elena.Hintz@gmail.com	$argon2id$v=19$m=65536,t=3,p=4$h/4JJ/HDkPwUvse9VrtJZQ$kzQcQmoQOdWh7WRPygG3zBioFl5Lk6sNrlrafVs4kgw	0045f284-858f-4144-a054-e07e04a0225b	2025-05-20 19:36:24.596	2025-05-20 19:36:24.596
cmawx04sb00s24wt9p13gxw6o	Stacy Mayer	Amalia_Goldner63@yahoo.com	$argon2id$v=19$m=65536,t=3,p=4$KSWEdkgKUSP4pj9eGw4oAA$1Ym8jpKnk7+AGNVo90YzPeZhjnbDfh+ABZMFow84DsA	4aaa9e03-3610-4592-bd75-64088dfff1bf	2025-05-20 19:36:24.635	2025-05-20 19:36:24.635
cmawx04te00s54wt9n42xbve9	Rick Williamson	Jeanette_Koch@yahoo.com	$argon2id$v=19$m=65536,t=3,p=4$oPTICZUvMG0o2+6k0FnG5Q$IlMH8GeF/cBWWYbQfTOvi4plyQe8D3qdO5rmg3WMHDU	d10b3ca2-f73b-4ecc-885e-6b00449dbbe8	2025-05-20 19:36:24.674	2025-05-20 19:36:24.674
cmawx04ug00s84wt9ku1xeq3c	Jasmine Moore	Timmothy_Runolfsdottir@hotmail.com	$argon2id$v=19$m=65536,t=3,p=4$Y1TXqK1YzUK+6ANn5rRlsw$xm9lgfOdZTvLgrMTdZFqBZOQPDHmaRHDXz6XUIAo9c4	b5aa6a7b-04cb-464c-8e67-62671310e17e	2025-05-20 19:36:24.713	2025-05-20 19:36:24.713
cmawx04vj00sb4wt93cvoe750	Hugo Bartoletti	Letitia.Walker67@hotmail.com	$argon2id$v=19$m=65536,t=3,p=4$HtoHGYD92VxNQJtl+IRRPg$0FToVV9sdMkBgYpQFcBCxUssLfcTV13Mbn/PVBnMoQs	f6964eb3-39bd-47f3-af8f-916008617fc3	2025-05-20 19:36:24.752	2025-05-20 19:36:24.752
cmawx04wm00se4wt9rrgob2mv	Marvin Lindgren DVM	Carmel.Bruen47@hotmail.com	$argon2id$v=19$m=65536,t=3,p=4$KlGjYhk/vtxD3Zz8j/Zotw$WNrHAUPsbGDqr8ctf8rmwyrWlvpdFzwpCDByuKUAGHM	8ec4509f-0c67-4736-af1f-97d2fcbfd987	2025-05-20 19:36:24.79	2025-05-20 19:36:24.79
cmawx04xo00sh4wt9vwwyjxu8	Horace Douglas	Brent_Lesch14@hotmail.com	$argon2id$v=19$m=65536,t=3,p=4$/wQ4AOuQgkIN/ZlrK/TWNg$GbedztDcmUV2eKcgHxwr5KfCuwffUrw7ZafuVbT2ubQ	1d21c888-066b-45e9-8ae9-348e2b8a805d	2025-05-20 19:36:24.829	2025-05-20 19:36:24.829
cmawx04yq00sk4wt9gdtjnjqm	Patty Crooks	Spencer.Monahan87@yahoo.com	$argon2id$v=19$m=65536,t=3,p=4$DZUioZ3azpIlRJvY0IXl4A$tyJ8WiNpRyNxKVbbeE7jj+bquKYzwbPD59w9Ojegrfk	1f269988-723f-48ab-8ae8-bcac8b605c29	2025-05-20 19:36:24.867	2025-05-20 19:36:24.867
cmawx04zt00sn4wt96inxyiss	Sean O'Kon	Peter_Wisozk35@gmail.com	$argon2id$v=19$m=65536,t=3,p=4$y5jpkj9uVRwhVKxBt6D7+A$81M3Zv5lR038nmcli/wj8bvekWdYZ7d4XL2YcWjxCtw	ef07e989-b142-4243-9a82-aeffc9d41787	2025-05-20 19:36:24.906	2025-05-20 19:36:24.906
cmawx051300sy4wt95ji90a35	Peter Gerlach	Emmalee66@hotmail.com	$argon2id$v=19$m=65536,t=3,p=4$dZBpdPPHVEbyrGDNsvfmVA$n600SHW/8NmCH147vVQUNsJqt5wKVg8fqgclyqLNPNM	27a895b9-2262-4b6e-a8b9-a4d129d27ee2	2025-05-20 19:36:24.952	2025-05-20 19:36:24.952
cmawx052700t14wt96bg857ib	Jesus Wilderman	Mya_Yundt@yahoo.com	$argon2id$v=19$m=65536,t=3,p=4$Iozl44sb0oeCs0mSaGj+ug$CxwrqpS5Yfj5GXPGquui8DLNPjSRAzygyapZEUbTvTs	657fc845-c394-4e54-9bdc-a7ff31385dfc	2025-05-20 19:36:24.991	2025-05-20 19:36:24.991
cmawx053900t44wt9yqo6qob7	Tammy Ritchie	Ramiro.Klocko@gmail.com	$argon2id$v=19$m=65536,t=3,p=4$JlguyLNkZFHXgDq8OcD+6A$eRQDny/WvZjW24wb4d/ncRk70pJ45YSxssm/WAe/tlQ	36c66190-d0f7-4e3a-9885-090b680b229f	2025-05-20 19:36:25.03	2025-05-20 19:36:25.03
cmawx054d00t74wt9uu16oc8g	Darrel Kris	Ken32@hotmail.com	$argon2id$v=19$m=65536,t=3,p=4$snasqvYiuG5tFOX3MTrl2Q$y8RN+PvPV1pnofNlgG1yxe5pdOvnTZABGtueeB1SX5A	c5f5df04-6673-41e3-920f-3eb7a3062cc8	2025-05-20 19:36:25.069	2025-05-20 19:36:25.069
cmawx055g00ta4wt9s8eacatg	Brandi Hagenes	Nestor72@yahoo.com	$argon2id$v=19$m=65536,t=3,p=4$4w2O4aDxs36J2EDisOCFow$AgNv2JcDt/bCX687zHWjGdC37D6T7xXmS4qEMuwdBQE	e6f5831d-b256-4e43-8afb-8125541331a0	2025-05-20 19:36:25.108	2025-05-20 19:36:25.108
cmawx056j00td4wt9lkmt4h12	Dewey Wisozk	Idella24@hotmail.com	$argon2id$v=19$m=65536,t=3,p=4$DExFTLfih9uuJFBvI/Sv6g$SSFLKlvqMLhgvRyCDjVRKu1AkPLlD5qHhb0Gn0g3D8g	b78ed63b-8b95-4685-962a-e76acb4be4b1	2025-05-20 19:36:25.147	2025-05-20 19:36:25.147
cmawx057m00tg4wt9mccjqfh7	Guadalupe Wisoky DDS	Wilber_Grady7@hotmail.com	$argon2id$v=19$m=65536,t=3,p=4$IXpaWWnzudhKk/mSfZzvBQ$yJF55mU05B5yxWoNmWcjp7VZ6PBRHmTT6QQL00y2cI4	e01d8863-67a3-4b39-a25c-abae16e0c945	2025-05-20 19:36:25.186	2025-05-20 19:36:25.186
cmawx058o00tj4wt977z4l0hm	Michael Quigley	Chelsie65@yahoo.com	$argon2id$v=19$m=65536,t=3,p=4$TM0m5GWYBl2UbpyDTJ9Dbw$3xtyOAV2njvWScCmVZBzJGae0W2OUTgGHKodZ+qmhQk	f19c9062-5da3-4f7c-bc17-d9f810e9c581	2025-05-20 19:36:25.225	2025-05-20 19:36:25.225
cmawx059y00tv4wt9c2ds6rfh	Johnnie Schamberger	Emil_Smith@gmail.com	$argon2id$v=19$m=65536,t=3,p=4$ORLstPlS10xRNh9vL6kNeA$cRVKoyIi3s9c98xZ/px7VzOknxLGQQhVymqp+lKV1EQ	57624dbc-fe37-40a6-9c9e-2531351a7a17	2025-05-20 19:36:25.271	2025-05-20 19:36:25.271
cmawx05b100ty4wt9tqvj836y	Greg Rosenbaum	Joey.Mayert11@hotmail.com	$argon2id$v=19$m=65536,t=3,p=4$kl86bOv23hx0KVtasLBK5Q$d8efAEwZNrmKHkIG1Ea6pAR5WgFx6o0uF4+F8+22dfo	50fa0641-574d-47df-ac84-0a6fe6227f2c	2025-05-20 19:36:25.31	2025-05-20 19:36:25.31
cmawx05c500u14wt9j69i9d0b	Dr. Andres Wuckert	Kayden.Larkin@hotmail.com	$argon2id$v=19$m=65536,t=3,p=4$Vf9ZfBIeWTWHwjHdx7eu6A$zWdQW/1NIF+ZJaweK29981y5SrZr8m6BpKZuaEf3Hrc	1a4c2fc5-454e-4daf-9772-21d14f404891	2025-05-20 19:36:25.349	2025-05-20 19:36:25.349
cmawx05dd00uc4wt9t6553z53	Dr. Clark Macejkovic	Alphonso.Conn@hotmail.com	$argon2id$v=19$m=65536,t=3,p=4$o/XScCZNT9TTv8rbGmKhqw$xAtsq8dOTR+iIkYdzDNrnbrScvslUAlevzYFKvAM0yk	a4c052ea-a808-4c06-ab5a-b88b122251a5	2025-05-20 19:36:25.393	2025-05-20 19:36:25.393
cmawx05ei00uf4wt9u3ordop4	Ms. Melanie Gibson	Cristopher.Steuber49@hotmail.com	$argon2id$v=19$m=65536,t=3,p=4$1mIqYzKeNgUyF8F7z/fUuA$otF5R7ysQIGlA+BQzN5oRHxa12hEuWGzp/dn/IwXC6Q	b3bb8e15-b984-4209-99d3-7bf047d27113	2025-05-20 19:36:25.435	2025-05-20 19:36:25.435
cmawx05fn00ui4wt9ntdx5003	Dr. Allen O'Kon	Preston_Botsford51@hotmail.com	$argon2id$v=19$m=65536,t=3,p=4$RakvUee6GQnxGzc225XSNw$z4g7vvVwOXFzAGtAxJp8CDS0mnAkfr3HjMtolJ+CcOM	ceb4b723-57d1-4c83-a2b0-e367cbc4b601	2025-05-20 19:36:25.475	2025-05-20 19:36:25.475
cmawx05gp00ul4wt95uyqv9bd	Gilbert Wolf Jr.	Carolyne_Pollich98@hotmail.com	$argon2id$v=19$m=65536,t=3,p=4$iHAsq1KuDeMr7W19e798Mw$aqPpeZfMsy2/0xKJTNNqU/G1mwpTW24Jnh3tzD8DEVY	ce475f91-e64b-4a84-a495-1ca9d0ab88f2	2025-05-20 19:36:25.514	2025-05-20 19:36:25.514
cmawx05ht00uo4wt9lm78lgf8	Patsy Windler	Victoria.Jenkins@yahoo.com	$argon2id$v=19$m=65536,t=3,p=4$t8oPuwpX/ri6QDh3YaIGDg$/wnDN6QcH4oHLL2DxtCi7zKzDIzHQEqfdI71DsR0e6I	543baca9-fb82-496c-84c3-d1df5cb1bf7a	2025-05-20 19:36:25.553	2025-05-20 19:36:25.553
cmawx05iv00ur4wt9jde3cpw1	Victor Wolff Jr.	Florida.Franey@yahoo.com	$argon2id$v=19$m=65536,t=3,p=4$xbvYGn09nhVwh0bMsAVl9w$9OVwo55TG2zW03Qa9RSBaZHbExZjTXHdinWC+MOgBbY	ad249dab-8519-4d32-bc7f-ef5b30936c19	2025-05-20 19:36:25.592	2025-05-20 19:36:25.592
cmawx05jx00uu4wt9167pjs66	Pat Schroeder	Raymundo84@hotmail.com	$argon2id$v=19$m=65536,t=3,p=4$uHq4olkgrwEVN5wICY19rQ$dikJw5TjC1z9I+RplMefiDyL1pCxnYs2/uCVNvYKK3o	84f6d12d-e084-4501-bc85-ed3758ae41ba	2025-05-20 19:36:25.63	2025-05-20 19:36:25.63
cmawx05l000ux4wt9jggtoajj	Alexandra Bartoletti	Tania52@hotmail.com	$argon2id$v=19$m=65536,t=3,p=4$/8AwGsuyqAPWs18bvFs6gw$fHUDl3fPnFCamSPBWE/f93z2AXmNv7uumNupzogU5Ng	c6686b1f-d414-43cf-865e-db7bf8c08e1a	2025-05-20 19:36:25.669	2025-05-20 19:36:25.669
cmawx05m400v04wt9s6dh57r2	Barbara Sanford	Maximillian47@yahoo.com	$argon2id$v=19$m=65536,t=3,p=4$SGmqxjSm4+Ef44NnInT6AQ$yPSNosi3Ij0opK7LTgEOrAtiVqbIi1kfJyr2UbBLPB8	a9e3b8e7-39ab-4f66-80b4-aeb02493ae5a	2025-05-20 19:36:25.708	2025-05-20 19:36:25.708
cmawx05n600v34wt9cc0k9fyv	Santiago Daugherty	Raul62@gmail.com	$argon2id$v=19$m=65536,t=3,p=4$9qH8ZENl1mPEpNvcJHYOmg$NUTjmKTirpCAuhGghWnPrxnAKFtWeBAZw6tUymeAnOA	f6afe405-ca8c-47ec-9ea9-af2d11a41454	2025-05-20 19:36:25.747	2025-05-20 19:36:25.747
cmawx05o900v64wt970ad8wrs	Jean Rau	Loraine_Bednar@hotmail.com	$argon2id$v=19$m=65536,t=3,p=4$r2E7EOerxtx723OYVI0o8w$IcVWfA82lDQPZAK6IW8JaSAPkpp0QSTOm77qH9ZlHrE	f31d9710-6905-40e4-9eef-ebd111fbbd78	2025-05-20 19:36:25.786	2025-05-20 19:36:25.786
cmawx05pd00v94wt94ly6d9ez	Dr. Guillermo Koch	Alfonzo.Hodkiewicz8@yahoo.com	$argon2id$v=19$m=65536,t=3,p=4$7o5XdF45Qy46Ng5gFv7jLw$KE2q9BqghF4/Sv97mEwnRQaxkzkbYS16BbNztn1dqX4	9ebdd724-3528-47bc-88ea-c50f3220245b	2025-05-20 19:36:25.826	2025-05-20 19:36:25.826
cmawx05qi00vc4wt95gshele6	Mr. Jeff Dach PhD	Mandy67@gmail.com	$argon2id$v=19$m=65536,t=3,p=4$jkKfAPbU4884aNZzfz0hMw$TerkiKbM8h12xyNyTS0CAyqVHgrzG8JtPXHY11e9dTQ	21af6c41-5e4a-405c-a88e-a4e3a98aaf03	2025-05-20 19:36:25.866	2025-05-20 19:36:25.866
cmawx05rm00vf4wt9x2aos7w4	Roberta Oberbrunner	Cathy_Wolf1@yahoo.com	$argon2id$v=19$m=65536,t=3,p=4$QUVe3tcxDg1aBW4jzfMJCA$dsUTtKc/eG3nSvxXEQ0yGQiHZuNdJBuIrLeQPVhQ/Oo	6c469190-1ab0-4bca-b246-80fb1aa41374	2025-05-20 19:36:25.907	2025-05-20 19:36:25.907
cmawx05sq00vi4wt9ohi2ce4n	Dianne McKenzie	Afton_Rippin@gmail.com	$argon2id$v=19$m=65536,t=3,p=4$kGRbyerH7sM7ArdPnLa2+w$GiCb/VpKmiLLiT2zmOSus+Ep9e5l8Csg3bTByALpRIc	ffce509c-9f96-46b4-8185-55ca75e55836	2025-05-20 19:36:25.947	2025-05-20 19:36:25.947
cmawx05tv00vl4wt9u2xkpi1m	Chester Dibbert MD	Augustus.Ruecker@gmail.com	$argon2id$v=19$m=65536,t=3,p=4$lE1O7kFUV4Hehy1bMg0WHw$9P8omAAMRCwfgw5cYcQTfLr8vP/i6JVYIkCqsWDaM44	bb9ba90c-2512-4f65-8604-41c5aceff340	2025-05-20 19:36:25.987	2025-05-20 19:36:25.987
cmawx05uz00vo4wt95dq1kf49	May Balistreri	Quincy6@yahoo.com	$argon2id$v=19$m=65536,t=3,p=4$K85B5aHgBbXoXo7feHSBiw$2vmXbzYfqYkjnEEm3YmO3im+I/AGANLHiuu8ITbRtoo	9e66780d-acd7-491c-8c6d-f6eed76d6414	2025-05-20 19:36:26.027	2025-05-20 19:36:26.027
cmawx05wb00w04wt9vpzkudy8	Diane Batz	Leonor42@yahoo.com	$argon2id$v=19$m=65536,t=3,p=4$3vBP/hljaZ5/VCz68ZAkOQ$Fb22rZ1jkIIF9cZ9Oj0A6M8Mpdwd/3smZy1xsxTZ8G8	8c0c6b44-ef07-46cf-ba69-0565f1de82aa	2025-05-20 19:36:26.076	2025-05-20 19:36:26.076
cmawx05xf00w34wt9rhyxt643	Dr. Ella Bogisich	Mckenna.Barrows@gmail.com	$argon2id$v=19$m=65536,t=3,p=4$YON6sK/sfPnaugEYFJLBaA$C2S2chbntwoeOA97oYBwR9kUQDCZ421nRTG5DpuJ7DA	15d0a708-e4a7-4afc-b258-3adaeb1109ab	2025-05-20 19:36:26.116	2025-05-20 19:36:26.116
cmawx05yj00w64wt932fcmtng	Tonya Corwin	Marian.Schoen@hotmail.com	$argon2id$v=19$m=65536,t=3,p=4$GbThNlswmb+xu+6S6/p8iA$scaYqV/AxMxZbfhN5EInmQrfHjG2q8JvLyxmuWNPjfI	39b6c9c0-8dd0-4f7d-bca3-458c8a0bb014	2025-05-20 19:36:26.155	2025-05-20 19:36:26.155
cmawx05zm00w94wt925die3zs	Ms. Jamie Braun Jr.	Sylvester80@yahoo.com	$argon2id$v=19$m=65536,t=3,p=4$hEboeJXpKFBlckYXUlbdaQ$BKgGeWKTURAhJH3MHYUXf3FKiqc3NbbB/tTiVDPO+Rw	f10485eb-c73d-45dd-8536-d615cb06b282	2025-05-20 19:36:26.195	2025-05-20 19:36:26.195
cmawx060p00wc4wt9oll0dsxm	Latoya Kunde	Edison38@hotmail.com	$argon2id$v=19$m=65536,t=3,p=4$PUIA1YA5QMX061+WF8aP6w$SXVkyCpmpO5jXjg7RP+zm2zUMQR1o3oKxKvVITCrDnM	2ece1441-14e5-4ea6-8a35-9b77928686c5	2025-05-20 19:36:26.234	2025-05-20 19:36:26.234
cmawx061s00wf4wt98mrzxula	Glen Conn	Dudley_Wyman72@yahoo.com	$argon2id$v=19$m=65536,t=3,p=4$LLwO/g4SrW6aB+wdTmL/ww$wbwf844ke7e6G6HaSSEa16LNUaGjuBOKsAzZBTna3nU	474102ad-75c1-4592-8c20-a3acf45316e5	2025-05-20 19:36:26.272	2025-05-20 19:36:26.272
cmawx062v00wi4wt9ewngfxpb	Wanda Gerhold	Birdie_Gulgowski-McLaughlin35@hotmail.com	$argon2id$v=19$m=65536,t=3,p=4$blroItkdJ3UR17SdsIkS6g$+CqYwSDZugtCXI+/M0E6kCUpvlAIvNYwGYiJst/JS1M	dfab5899-9f99-4467-ae93-a407a7721f3e	2025-05-20 19:36:26.312	2025-05-20 19:36:26.312
cmawx063y00wl4wt9jvyy7q13	Alyssa Mertz	Richie_Huels75@yahoo.com	$argon2id$v=19$m=65536,t=3,p=4$bYAxXppQabacAn64fSw8+w$B1LrrHTxQG5RzxyGxXHNrH/bMejqV+qAzmYh/8RF7x4	13f77a1c-e9eb-455c-9c41-3e028fff98d3	2025-05-20 19:36:26.35	2025-05-20 19:36:26.35
cmawx065000wo4wt9s5xeorcn	Tasha Rath	Holden_Cummerata@gmail.com	$argon2id$v=19$m=65536,t=3,p=4$B78yvJqr6tnmjx0fXBqzTA$tp6oJ5gFUTUJ8EKlqLzI1XyexbYV6cTXG2IH3Q7pVyA	87537b46-031e-4860-bb28-ddd0a1fecbfb	2025-05-20 19:36:26.389	2025-05-20 19:36:26.389
cmawx066300wr4wt9ap2wxmx2	Rex Waelchi	Melisa_Tromp@gmail.com	$argon2id$v=19$m=65536,t=3,p=4$lqCuXBJ1IkiMAPCtNhkiqA$A8ST1hRhx2qdIylGXpqQJHEzh4f/T3nAqpwQpwvAssc	22aab01b-da5d-45fd-acac-811e444140c3	2025-05-20 19:36:26.428	2025-05-20 19:36:26.428
cmawx067600wu4wt93e4kdpvm	Rosie Smitham	John.Kirlin38@gmail.com	$argon2id$v=19$m=65536,t=3,p=4$i2JUozUpKUjSBOpdTNdCgg$PhGQ3JNY9xt57+2KZ6kt8sFEJLFNCDexEdLpo8Wnfmk	e14deeef-9a9d-4c4f-8da5-fea2a40cb59d	2025-05-20 19:36:26.466	2025-05-20 19:36:26.466
cmawx068900wx4wt9p1lz4z2u	Kenny Stiedemann	Margaret73@hotmail.com	$argon2id$v=19$m=65536,t=3,p=4$tbAeW2uFL4bcp0x6lzGqJg$M1RjbuTJpvrcqrLKrLoDcQooYvk9tRTYyw29dOtFGLA	f7f49ff7-9f60-49ff-ae23-6346872c81d0	2025-05-20 19:36:26.505	2025-05-20 19:36:26.505
cmawx069c00x04wt9wlex1guq	Vicky Schiller	Arno_Graham@yahoo.com	$argon2id$v=19$m=65536,t=3,p=4$36lnVX4blOg0y7kqgeXemA$A3cq9ULC9CBpcebqhgwkdrjC23NhjK++SXOTKfhtlyU	3c51d33d-2c68-4d1e-98fb-ea860529b044	2025-05-20 19:36:26.544	2025-05-20 19:36:26.544
cmawx06ag00x34wt9jrnpbdae	Kerry Kuhn	Savion_Steuber@yahoo.com	$argon2id$v=19$m=65536,t=3,p=4$LDwqvDbYVWpbyurFMW3nAg$dtYbhn0VLv88p0cC0AnNh5+lcgs+0wr4846I+LEo804	a2380455-7cb4-45e7-bd28-b1b32405374d	2025-05-20 19:36:26.584	2025-05-20 19:36:26.584
cmawx06c500xe4wt9uuxtzqli	Ramiro Rutherford	Elbert88@gmail.com	$argon2id$v=19$m=65536,t=3,p=4$JEbZrFTQ4PYBMjbM7wt1dQ$0Ff0OHAmF0luU7uiXE94O0PVaxLdp1G2m0mOnqpRqCM	79678ab2-2c36-4de3-9bd7-62c1ee6886c9	2025-05-20 19:36:26.645	2025-05-20 19:36:26.645
cmawx06dv00xh4wt9y76wq40g	Julian Fisher	Dayne.Cummerata@yahoo.com	$argon2id$v=19$m=65536,t=3,p=4$WWIKEO/J9WuD3uYfUnLrSA$hfkJ98yZMDg6SQAeRbWP91t3kge3Zym9vO0MJt53HaY	dd991e18-4d11-477b-9937-08800ddb5054	2025-05-20 19:36:26.707	2025-05-20 19:36:26.707
cmawx06ff00xk4wt9wd7r8a4e	Ginger Schaden	Stanford_Koelpin-Purdy@gmail.com	$argon2id$v=19$m=65536,t=3,p=4$D3cfxlY5zbUBeETR0oBfFQ$E116aW3BpkPTDNWE+ZNqs3NJC3wK9/c8cYEXk9QnLfA	4c3ae171-ab26-4c45-9bb8-0fd9797475ed	2025-05-20 19:36:26.764	2025-05-20 19:36:26.764
cmawx06h100xn4wt9qfmjmd5m	Lillie Keeling	Finn82@hotmail.com	$argon2id$v=19$m=65536,t=3,p=4$m0swLLvBcYRtcknbh8Gt3w$HJs73xBZ9WWSjzMQWzwXO/H+zC1pKe41iOj9oUZhLBU	8e5983d6-a8dc-4680-8d6b-bfeef1ca3cfc	2025-05-20 19:36:26.821	2025-05-20 19:36:26.821
cmawx06i400xq4wt9lmjcotce	Bernard Armstrong	Jordon.Stroman93@yahoo.com	$argon2id$v=19$m=65536,t=3,p=4$9HiQ3Y8RI4WDg5A0S/tNkA$jUzgUC6JQ7wRELVM/P8Yjke5zdmq5WAAJebl/QDa0rQ	3831e843-0ca5-48ff-9f51-d6f0b0f657ce	2025-05-20 19:36:26.861	2025-05-20 19:36:26.861
cmawx06j800xt4wt9scae23p6	Mr. Joseph Connelly	Robb42@gmail.com	$argon2id$v=19$m=65536,t=3,p=4$DZmNPNOOV3k9CLKHLM/pnQ$H1OkBHdETXcdIf+T1d69vNq7C9ZT4b+Wd0kwFbqh/as	3006dbce-7959-496f-9ccb-c3e7dcfe674f	2025-05-20 19:36:26.9	2025-05-20 19:36:26.9
cmawx06ka00xw4wt9vm5iq68v	Leigh Hilll-Hodkiewicz	Luther_Padberg@gmail.com	$argon2id$v=19$m=65536,t=3,p=4$m2C0DIS7XGiB5Sa7ULNpSQ$eggZ4LDnVT3urwiTodrJnaIAYBUOwBQdXsan2G4XpHg	b4174c11-3bd4-4be3-91bd-3c67972e14bb	2025-05-20 19:36:26.939	2025-05-20 19:36:26.939
cmawx06lc00xz4wt9jlmzjyg3	Salvador Kovacek	Kayley46@hotmail.com	$argon2id$v=19$m=65536,t=3,p=4$mu4rZIkBP9J0grnjinHL+w$Wv8DIt1CCh4CzrkIM7eqe4pps2VD9IBTvYAW2t7NOUg	24754fe3-0472-4830-aff1-205312580b70	2025-05-20 19:36:26.977	2025-05-20 19:36:26.977
cmawx06mi00y24wt9posp68bs	Dallas Zieme	Jamey53@hotmail.com	$argon2id$v=19$m=65536,t=3,p=4$jCk59cVCJXoHD9PCDUKt+A$6dDWVwdfizREV4k3YPi2nsagX0QnQkjZXkvLTWJEy+s	50061a2f-4dde-48ff-9473-f6561dbef3c7	2025-05-20 19:36:27.019	2025-05-20 19:36:27.019
cmawx06nr00y54wt9dnoitjz0	Dwight Beer	Desmond.Bergnaum@gmail.com	$argon2id$v=19$m=65536,t=3,p=4$AmNoI/YjERwlYyLNDsxQNQ$VKixEF/IVoDcId3ddL+K6xBAhbXJK6PV0AAx3v95HNE	74f5c98f-f522-4c09-aa03-3684609125ca	2025-05-20 19:36:27.064	2025-05-20 19:36:27.064
cmawx06ou00y84wt9hwfeou64	Cecilia Mills	Nolan53@hotmail.com	$argon2id$v=19$m=65536,t=3,p=4$Fm8/0y1ptaqlAEUa6Dytkw$Vtxch3d0ho+52vsC352ZJJkW0O2CdyL+YsxufNIxSng	44723001-67f0-4075-8ef8-dc1550871243	2025-05-20 19:36:27.102	2025-05-20 19:36:27.102
cmawx06q700yb4wt9pu2xfv22	Joseph Schultz	Jessica35@gmail.com	$argon2id$v=19$m=65536,t=3,p=4$DNl039AJel30k+bAbY1+Uw$OtX6/4bL5rx/Y3xlFeKX0Iw0Mb/EcsC3K0PFb92KU4o	f54756b7-0c72-4f78-ae5e-e9f23b5243d6	2025-05-20 19:36:27.151	2025-05-20 19:36:27.151
cmawx06rc00ye4wt9nyn84hrz	Chelsea Nolan	Javon_Nitzsche56@hotmail.com	$argon2id$v=19$m=65536,t=3,p=4$bUgm6GI9pyr/qXmxJxE3bA$o/U3j74ZuGCdVMmUN0595lXtU9bHjnstNvfk4knXEsE	16d5f557-e69a-4109-960d-450d438d5c85	2025-05-20 19:36:27.193	2025-05-20 19:36:27.193
cmawx06sh00yh4wt950jaxj7p	Luke Reinger	Twila_Emmerich92@yahoo.com	$argon2id$v=19$m=65536,t=3,p=4$9qDc9Et9WzyAul6jjTWtmA$FDVc9FkMpbblVX4jffX/sox9yYOPfzO+eo1XeskQj/0	1f45c684-26fd-4501-83ee-5b643cf34bb9	2025-05-20 19:36:27.234	2025-05-20 19:36:27.234
cmawx06to00yk4wt9zbaa64fz	Cynthia White	Rhianna.Hoeger43@gmail.com	$argon2id$v=19$m=65536,t=3,p=4$62gWFrcSb/xKFqJfCKbAGw$xBJ79xK/e1Ji2CE9BXyhVfH9a51oOpfbaKFpLFJJGDc	1fe2d848-1637-4498-8d89-9e7da65caac0	2025-05-20 19:36:27.276	2025-05-20 19:36:27.276
cmawx06ur00yn4wt925tnwy6b	Kerry White	Thad.Crist0@yahoo.com	$argon2id$v=19$m=65536,t=3,p=4$sq/SXjTf/nsC3GkzyaeAoQ$QKZKivdV+YbdGrAG8ujkELncBHlB+5idPGS3qxPRpBs	ef95f02b-7f43-4ddb-8bf5-e97016a3896d	2025-05-20 19:36:27.316	2025-05-20 19:36:27.316
cmawx06vx00yq4wt99szi34yr	Gilberto Homenick PhD	Marlin_Ratke9@yahoo.com	$argon2id$v=19$m=65536,t=3,p=4$g2QL1TbYJokaP5Rrao83zA$f6mu6NhoMPMqNF3UQq2kCvZubxh4Rz8ehSUUNH9kFEQ	fb8516cf-e9ca-4177-8df0-541f1e73bbac	2025-05-20 19:36:27.358	2025-05-20 19:36:27.358
cmawx06xc00z04wt9gyfr2rsn	Dianne Dicki	Lizzie.Yost@gmail.com	$argon2id$v=19$m=65536,t=3,p=4$Dh5sb0UsnkTCJ9M4QU5nZQ$unUNo6I5Hu8FnRvBPTg+8Y9tWF3OhCC5BVgOww0uTP8	5a27fe6c-19f3-4e4f-b213-9bca427bcafc	2025-05-20 19:36:27.409	2025-05-20 19:36:27.409
cmawx06yh00z34wt974zrlh1k	Dr. Verna Runolfsson	Myrtie.Howe2@gmail.com	$argon2id$v=19$m=65536,t=3,p=4$tDfamGmSoDptBYjPZ9lqaA$bWr45E4UGWPF1Evfs1mpb2uJnrfyRpfGjxt+gJYomLI	2ef6d00a-279f-45f9-bb2b-d154ef7b1ea9	2025-05-20 19:36:27.449	2025-05-20 19:36:27.449
cmawx06zo00z64wt9ycnj74be	Lora Bauch	Jacinthe69@gmail.com	$argon2id$v=19$m=65536,t=3,p=4$hmGieiWvu9yQT6vATXPozw$pQgKCxPrTGzTR1JFZMmZYI2/PL1+CXZ5LkdA7yfpWU4	889da120-c11b-43de-93e2-521da092cecb	2025-05-20 19:36:27.492	2025-05-20 19:36:27.492
cmawx070s00z94wt9sc9bzaeq	Dennis Fahey	Adela.Harvey13@yahoo.com	$argon2id$v=19$m=65536,t=3,p=4$vlbgrh1AT0bSMN7pfKMcWQ$Z2I7KtDi3VhveMUGdZWgveFOgkIhhadRFVNTaDk+tzU	0e5c3647-851a-4fc6-9dd0-01a72b12c5a3	2025-05-20 19:36:27.532	2025-05-20 19:36:27.532
cmawx071u00zc4wt9zoz77xv2	Mr. Randolph Oberbrunner Jr.	Effie78@gmail.com	$argon2id$v=19$m=65536,t=3,p=4$npGI99D4M7NzOuUrO1FEyw$b62x/3YeZBbxXF9td+b4dcqgWIKFEkz3dg8rV6Cjc+k	b72830ee-f802-456a-8ecd-b025baf76c3f	2025-05-20 19:36:27.571	2025-05-20 19:36:27.571
cmawx072y00zf4wt9iz8xkldm	Cristina Wyman	Carleton63@hotmail.com	$argon2id$v=19$m=65536,t=3,p=4$wzreVQCAvK7PwO3kFiM7cQ$o8DPZouxf6KB9wX04Y24Bkm9c/s+ElJ5QpVCgtPEv+I	41811408-faf8-4f1f-85e6-afa5fd3c8548	2025-05-20 19:36:27.61	2025-05-20 19:36:27.61
cmawx074100zi4wt96fblj3vo	Mr. Corey Cassin	Gilbert_Thiel@yahoo.com	$argon2id$v=19$m=65536,t=3,p=4$17kqKQdVP3tt+STkN6rVCw$gZdHQ4mtEvT8q7tAtJHUhNQkB6A+RdFlNFeJuPK6XNU	eb4939ec-a500-4068-bf32-7469920a2c8c	2025-05-20 19:36:27.649	2025-05-20 19:36:27.649
cmawx075300zl4wt9cu97sh97	Israel Koelpin	Aniyah_Collier@hotmail.com	$argon2id$v=19$m=65536,t=3,p=4$3bJ6+PYTweOrsAvh2EJs3Q$Y8lZr9XmfAqeN0rfvgTZTPrKUHYK4go+qcLIg0wO1Ws	9c6d7b4e-3da9-4290-a187-0a8c23aa3bca	2025-05-20 19:36:27.688	2025-05-20 19:36:27.688
cmawx076g00zw4wt9sb8jcc20	Kenneth Schmitt	Erna_Rohan@yahoo.com	$argon2id$v=19$m=65536,t=3,p=4$/x6F6Ur66AvMwJ/VrMPklA$vAyV2LjKHcne1eTdHXtjXrA/3YmuqYxYR9toQBflkvM	6baa257d-2966-4028-bf67-e0255ecd909c	2025-05-20 19:36:27.737	2025-05-20 19:36:27.737
cmawx077l00zz4wt93qnn2bdv	Don Kutch	Fannie_Fritsch33@yahoo.com	$argon2id$v=19$m=65536,t=3,p=4$HqebiYhtsebKk0+QlaZ+fg$mosnfhy+6HR//1wgHQ4DeW9rSPRR6FPcgx0fl9VMY7M	a56ca49f-463e-46dc-9cb3-1a5e1b2e4121	2025-05-20 19:36:27.778	2025-05-20 19:36:27.778
cmawx078o01024wt9oyqefots	Dwayne Skiles	Estel.Monahan31@gmail.com	$argon2id$v=19$m=65536,t=3,p=4$len2K4oTs9DaCQyKNgbPmw$I/bhqGsCTtRGROI8vswPnHfKJJK8NrZscRodtzs9NOE	5f1d2450-39aa-4d40-a6c5-c7b793be0b83	2025-05-20 19:36:27.817	2025-05-20 19:36:27.817
cmawx079s01054wt9xl08hp8d	Timothy Hyatt	Roman.Reynolds@hotmail.com	$argon2id$v=19$m=65536,t=3,p=4$tso3pDZfDO0ZiW1UkQej4A$Jmxoem0Ch4hqDmmXjJiZ4Tu2IVqrphX/N9pKnmgfvIQ	7eadf88a-f575-41e8-af46-4bf6aa27da9c	2025-05-20 19:36:27.856	2025-05-20 19:36:27.856
cmawx07ax01084wt98gbq4p2m	Freda Marks	Monica.Hayes34@yahoo.com	$argon2id$v=19$m=65536,t=3,p=4$4+oZ1FwGTvqxI4etQB7KvQ$GvOuH6pCtkcWqqpXaUfxqfvkKLHAl+PAG2LaIz+dRBU	d7d5fb20-560f-41b2-b1fa-18c30a85f477	2025-05-20 19:36:27.898	2025-05-20 19:36:27.898
cmawx07cc010b4wt9l62qtltp	Ernesto Gibson	Jedediah.Frami90@gmail.com	$argon2id$v=19$m=65536,t=3,p=4$WTRi2Rw3BBqP/C6dNZk17A$6P6QxzEXMb75xCIeVhIaXtvMyKYU7YBUgZ2DS7xdmM8	e72d5164-d0b0-4c7a-94c6-32d7e38a5d67	2025-05-20 19:36:27.948	2025-05-20 19:36:27.948
cmawx07dg010e4wt9o77mnqfc	Beverly Swift	Francisco.Yundt@yahoo.com	$argon2id$v=19$m=65536,t=3,p=4$lM9+39+PoSOlcKJEbRWD6g$9HUuS79Tdd+TWIEaHPwXW2K/NO0+yXBCUVOsmoLWHOE	98c03d39-b894-4b82-baee-5514c3f66737	2025-05-20 19:36:27.988	2025-05-20 19:36:27.988
cmawx07ek010h4wt97f0kpzdr	Emily White	Bud59@gmail.com	$argon2id$v=19$m=65536,t=3,p=4$xOELsIuh8cNwGLr//6jCww$vm1tuo+48wl8+KG3+D1tIxD3cZxTULtuwwXAMgqCk60	c29b7668-4b89-4dc3-ac45-2be42e9aa8ba	2025-05-20 19:36:28.028	2025-05-20 19:36:28.028
cmawx07fm010k4wt9rkutqy2c	Abraham Schroeder	Buck67@hotmail.com	$argon2id$v=19$m=65536,t=3,p=4$AYH1V6EgwdO3rOr2q1W4sQ$dTII5MDq7/br1s9hQynkLRQhUUvHFY4oJW3fGc+tuWA	10b521cb-e069-43a9-ae41-2acd4a16f8d5	2025-05-20 19:36:28.067	2025-05-20 19:36:28.067
cmawx07gp010n4wt92txez2a6	Grant Pfannerstill	Lukas_Hirthe-Ondricka36@yahoo.com	$argon2id$v=19$m=65536,t=3,p=4$iV528jA7rXYApMsBbZrQ6A$CfcwLR9/GhQjZjM5H4TLBBKFxXsdVnsNvx40EGYzbZM	90529f39-bc7b-4deb-9640-b69106a8b36e	2025-05-20 19:36:28.106	2025-05-20 19:36:28.106
cmawx07hs010q4wt9um6qjskw	Christopher Friesen-Kuhlman	Wanda47@hotmail.com	$argon2id$v=19$m=65536,t=3,p=4$/RVq/8iIf99E1FDxEWgywA$vkP2sVbWBMKJ/L+zOjhbVr4r7CgJW3R3ictevNfUKHs	0e96cb6c-fc14-4d8d-be9c-0ccaea2ef30c	2025-05-20 19:36:28.145	2025-05-20 19:36:28.145
cmawx07iw010t4wt934j083kl	Rosa Jacobson	Michael_Bode@gmail.com	$argon2id$v=19$m=65536,t=3,p=4$uQWxP9kEede/F764yoAv0g$2YsK4Di6A/nRyNnUiw1sJJptBWYiPNQekXuQy3HgO/k	90fcb11d-b501-4b59-be93-02b33466bc25	2025-05-20 19:36:28.184	2025-05-20 19:36:28.184
cmawx07k1010w4wt92040f2pe	Deanna Donnelly	Emmet.Johns92@hotmail.com	$argon2id$v=19$m=65536,t=3,p=4$JjQWG7FGit+msI2+r3cS6g$gvt1aGFYDWD0Sqy1x4lT6G8ax8mG78ux6dL4mihR5Hc	34aa6e8f-e3c8-4ba9-a3d4-073650ab599f	2025-05-20 19:36:28.225	2025-05-20 19:36:28.225
cmawx07l6010z4wt9swgh04b8	Ida Kutch	Meta54@gmail.com	$argon2id$v=19$m=65536,t=3,p=4$TSoyKQD5HNQfaUAbdDEhjQ$eSg5pgVSRI/apZYyEikqQyqUqwd2reS2IYc9a9Sx5to	a44f027c-226d-4c86-97c7-a28060f19dc8	2025-05-20 19:36:28.266	2025-05-20 19:36:28.266
cmawx07m901124wt93pzp00wt	Georgia Schimmel	Lottie.Padberg@gmail.com	$argon2id$v=19$m=65536,t=3,p=4$ABQpEDRZCDIjuWqgXS5Pvg$aHl/tLtoyaRfLyjSEWEUb2l3AJ+16u73HAx7P4IUMYc	56b47bed-9630-4206-8925-9b35d1ac628c	2025-05-20 19:36:28.306	2025-05-20 19:36:28.306
cmawx07nl011d4wt9djcdb48a	Beverly Terry	Elyssa.Veum@hotmail.com	$argon2id$v=19$m=65536,t=3,p=4$vipa5PjJFenJsE5VmV4PeQ$k7koiLhfd+Gpm0FIyjERBmXnKLBgIxUj0feAwnvkws4	b08ff296-3e54-4ffe-bfae-6b60a6025c30	2025-05-20 19:36:28.354	2025-05-20 19:36:28.354
cmawx07op011g4wt9wt7tktst	Fannie Kshlerin	Judge80@hotmail.com	$argon2id$v=19$m=65536,t=3,p=4$dFSycZujMJtxuW0mIsyWtw$j2sWEyIFpixkargPqlFkGy5QGDn9kEdYpHeaTj7eSpQ	39cad23a-2c6e-49d7-999a-5898b0e9a4d9	2025-05-20 19:36:28.394	2025-05-20 19:36:28.394
cmawx07ps011j4wt9g9zrb8x3	Carol Rutherford	Shemar_Murray-West37@yahoo.com	$argon2id$v=19$m=65536,t=3,p=4$hyMkpPc4Gr94HsUAKczcpw$xZ3zWU3bjO0mEPTgawKiXQN4b1xQ1LJzv82Xg+mZriQ	a87aa11c-d9b5-477e-9dd9-f984e324ac2e	2025-05-20 19:36:28.433	2025-05-20 19:36:28.433
cmawx07qv011m4wt9vpqmfvle	Hubert Baumbach	Jakob_Beier@hotmail.com	$argon2id$v=19$m=65536,t=3,p=4$h9qx9c0YMANoEVXE+FfFBA$HIIEHepyr8+RMyqFNdjmXqBB/gmI0W0zYpuuwPxC3AY	453b057a-85dd-4383-b316-e38d41fc5002	2025-05-20 19:36:28.472	2025-05-20 19:36:28.472
cmawx07sc011p4wt9rt9v777o	Ms. Essie Gibson-Blanda	Roxanne47@hotmail.com	$argon2id$v=19$m=65536,t=3,p=4$BnP+aPKxLTJomJIqg3Z7cQ$kqp6WDroMisBRl2ivErjuFT1Fg2OP3fP85SJvJSJ+o8	f6a6750d-515d-43d7-9488-15607a618e1f	2025-05-20 19:36:28.525	2025-05-20 19:36:28.525
cmawx07ts011s4wt9n5y2er8t	Ms. Minnie Koelpin MD	Michael.Bogisich@hotmail.com	$argon2id$v=19$m=65536,t=3,p=4$qTWNkFVhAm/lOpKOTt6GYw$Y0ZThF6IyWsTRu+EZE+vlcH5ATqpRsDQ1VzeCBy/sTk	de0b80fc-1bd8-46f3-84dd-932521fe9628	2025-05-20 19:36:28.577	2025-05-20 19:36:28.577
cmawx07w4011v4wt9jpgk96th	Mercedes Huels-Muller	Marlin.McLaughlin@gmail.com	$argon2id$v=19$m=65536,t=3,p=4$Eh5YDhjRdjOzHyQIFgI4EQ$164V++Xm9OaGPXBhpqVC/9l8hycODFzISS4vt2HACWs	5a217244-5df8-4bac-9dfd-c965a44d566a	2025-05-20 19:36:28.661	2025-05-20 19:36:28.661
cmawx07xe011y4wt9rnd12nfh	Lynette Grady	Mohamed_Conn56@yahoo.com	$argon2id$v=19$m=65536,t=3,p=4$3i3Dfu+eyYDTuWuHPwM+Aw$ZmRD/UdrW+pT5xycH1qHUlZ7jPLFXFUfnO2b6telOfI	b1ade85f-bb3e-438b-a825-59459369d943	2025-05-20 19:36:28.706	2025-05-20 19:36:28.706
cmawx07yj01214wt9v928mw33	Elsie Streich	Chadrick_Hauck@hotmail.com	$argon2id$v=19$m=65536,t=3,p=4$gJbfPZdrkp1807qoFOqZ2A$rqO5SCTKMLT/auglatzkq5R+rarbyn66lxuvaL77p6E	1173fa6e-ec66-4f37-ae66-654d1b4c589f	2025-05-20 19:36:28.747	2025-05-20 19:36:28.747
cmawx07zn01244wt96f9fxrhr	Miss Nellie Cremin	Gwen_Aufderhar58@yahoo.com	$argon2id$v=19$m=65536,t=3,p=4$L49bhUYc5zseUf+nqMFtgg$Vwt39iCu9Bzk+EC+y3MJjpo4HAzdPq9BbjpO0yIqJto	3d3c0764-96f4-4717-a3c4-42403b25d4d8	2025-05-20 19:36:28.787	2025-05-20 19:36:28.787
cmbhzh70200028ljx91rnqmnl	Test User	test@yopmail.com	$argon2id$v=19$m=65536,t=3,p=4$ETat7rFBnULxV0rqL5ZOTg$2GF//anqtWyHWmek74YU4yNgx51xR5oDULFMgXlANgM	53778f08-17cd-42aa-b652-b9094ab25a67	2025-06-04 13:28:49.587	2025-06-25 23:46:52.255
cmawwzvog00004wt9mwvejbx1	test	redgroup@test.com	$argon2id$v=19$m=65536,t=3,p=4$QfKZOfbaQNUvzOs3ev70rA$Pp+9ZAL7uWCHmMKNgkKvD43pTA8qq9yUwIooq5IqCQE	db729a48-a0f8-4d4f-95ef-c4fbc94497c0	2025-05-20 19:36:12.832	2025-06-27 19:07:04.237
\.


--
-- Data for Name: video; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.video (id, public_id, title, description, thumbnail_url, video_file_name, max_resolution, views_count, is_public, channel_id, created_at, updated_at) FROM stdin;
cmawwzvz4000l4wt9zrxi2iwe	KcrIzZe2dB	Как Помодоро 25/5 Изменил Мою Продуктивность: Почему Я Вернулся?	<p>💡 Личный ТГ канал - <a href="https://t.me/hardmaxchannel" target="_blank">https://t.me/hardmaxchannel</a></p><p>👍 Давайте наберем 200 лайков, и я пойму, что контент вам полезен.</p><p>В этом видео я расскажу, почему вернулся к технике Помодоро 25/5 и как она повлияла на мою продуктивность. Узнайте, как короткие перерывы между рабочими сессиями помогают фокусироваться, избегать выгорания и достигать большего за короткий срок. Делюсь своими личными наблюдениями, советами и опытом использования этой техники для улучшения эффективности в повседневной жизни.</p><p>🔥 Обучение веб разработке - <a href="https://htmllessons.io/premium" target="_blank">https://htmllessons.io/premium</a></p><p>👉 Все ссылки и информация обо мне - <a href="https://htmllessons.io/links" target="_blank">https://htmllessons.io/links</a></p><p>Подпишись на канал, для меня это важно!</p>	/uploads/thumbnails/OcKq7KqgL7g-MQ.jpg	f3d594a6af3f.mp4	1080p	1600	t	cmawwzvr500054wt9ahq5ovxu	2025-04-17 00:48:23.297	2025-05-20 19:36:13.216
cmawwzwjx00224wt9t8q7kpgp	zlWfAb74aa	В какие часы лучше работать? Уникальный метод расчета	<p>💡 Личный ТГ канал - <a href="https://t.me/hardmaxchannel" target="_blank">https://t.me/hardmaxchannel</a></p><p>👍 Давайте наберем 200 лайков, и я пойму, что контент вам полезен.</p><p>Узнайте, как определить свои оптимальные часы работы с помощью уникального метода расчета. Измеряйте температуру тела и пульс каждые 2 часа, чтобы создать график работоспособности. Планируйте важные задачи на периоды повышения температуры, а отдых - на спады. Учитывайте циркадные ритмы и распределяйте задачи в течение дня. Повысьте свою продуктивность, работая в гармонии с биологическими часами.</p><p>🔥 Обучение веб разработке - <a href="https://htmllessons.io/premium" target="_blank">https://htmllessons.io/premium</a></p><p>👉 Все ссылки и информация обо мне - <a href="https://htmllessons.io/links" target="_blank">https://htmllessons.io/links</a></p><p>Подпишись на канал, для меня это важно!</p>	/uploads/thumbnails/rYX5l8A5KyQ-MQ.jpg	f3d594a6af3f.mp4	1080p	801	t	cmawwzvr500054wt9ahq5ovxu	2025-04-12 10:02:04.864	2025-05-20 19:36:13.966
cmawwzwsu00324wt96rnd6hm0	6YqfRGUag8	Хобби vs. быстрый дофамин: путь к долгосрочному счастью	<p>💡 Личный ТГ канал - <a href="https://t.me/hardmaxchannel" target="_blank">https://t.me/hardmaxchannel</a></p><p>👍 Давайте наберем 200 лайков, и я пойму, что контент вам полезен.</p><p>В этом соло-подкасте разберем, почему глубокое увлечение важнее мимолетных удовольствий? Узнайте, как хобби влияет на качество жизни и помогает достичь истинного удовлетворения. Разберемся в механизмах работы дофамина и его влиянии на наше поведение. Научимся различать качественный и некачественный досуг. Откройте для себя путь к долгосрочному счастью через развитие настоящих интересов и талантов.</p><p>🔥 Обучение веб разработке - <a href="https://htmllessons.io/premium" target="_blank">https://htmllessons.io/premium</a></p><p>👉 Все ссылки и информация обо мне - <a href="https://htmllessons.io/links" target="_blank">https://htmllessons.io/links</a></p><p>Подпишись на канал, для меня это важно!</p>	/uploads/thumbnails/EA8d31RSX8g-MQ.jpg	f3d594a6af3f.mp4	1080p	1400	t	cmawwzvr500054wt9ahq5ovxu	2025-03-17 20:30:06.201	2025-05-20 19:36:14.286
cmawwzx55004a4wt9c8fsokbr	NZa3sx3zAA	Свежая НАСТРОЙКА VS CODE 2.0 [Расширения / Снипеты / Хоткеи]	<p>🔥 Оформить премиум подписку - <a href="https://htmllessons.io/premium?utm_so..." target="_blank">https://htmllessons.io/premium</a></p><p>❤️ Отзывы тут - <a href="https://t.me/htmllessons_reviews" target="_blank">https://t.me/htmllessons_reviews</a></p><p>🚀 МК Авторизация 3.0: Совершенство - <a href="https://t.me/pay_auth_perfection_bot" target="_blank">https://t.me/pay_auth_perfection_bot</a></p><p>Поддержи видео лайком, 1000 лайков 👍 и я делаю новое видео!</p><p>Добро пожаловать на свежую настройку Visual Studio Code 2024 2.0. В этом видео мы покажем, как настроить редактор, чтобы он соответствовал вашим потребностям, а также, как установить расширения, чтобы расширить функциональность редактора.</p>	/uploads/thumbnails/_oKVkJj6C6Y-MQ.jpg	0eb61a8131f0.mp4	4K	22000	t	cmawwzvok00014wt9uin2kpaw	2024-10-17 07:41:06.917	2025-05-20 19:36:14.73
cmawwzxqt00614wt9oeruk8dx	EKcfTzhn7H	WEBSTORM 2.0: РАЗГОНЯЕМ IDE до космических скоростей!	<p>🔥 Оформить премиум подписку - <a href="https://htmllessons.io/premium?utm_so..." target="_blank">https://htmllessons.io/premium</a></p><p>❤️ Отзывы тут - <a href="https://t.me/htmllessons_reviews" target="_blank">https://t.me/htmllessons_reviews</a></p><p>🚀 МК Авторизация 3.0: Совершенство - <a href="https://t.me/pay_auth_perfection_bot" target="_blank">https://t.me/pay_auth_perfection_bot</a></p><p>Готовы к космическому ускорению вашей разработки? WebStorm 2.0 здесь, чтобы ускорить вашу разработку! Узнайте, как превратить WebStorm в ракету для кодинга: оптимизация расширений, космические темы, продвинутые настройки редактора.</p>	/uploads/thumbnails/J4bJ118vWKo-MQ.jpg	0eb61a8131f0.mp4	4K	5862	t	cmawwzvok00014wt9uin2kpaw	2025-02-12 15:50:06.272	2025-05-20 19:36:15.51
cmawx02ob00lj4wt9rqrd4trk	h6IYpaw_P_	Maddix presents XTTC Radio 001	<p>Every first Friday of the month, XTTC Radio! An hour filled with my personal favorites that I’m playing around the world.</p><p>XTTC Radio Episode 001 includes tracks from Eli Brown, Lilly Palmer, Amelie Lens, John Summit, Hi-Lo and many more.</p><p><strong>NOTE:</strong> This is a modified version of XTTC Radio for YouTube.</p><p>For the full show, visit <a href="https://xttc.lnk.to/radio001" target="_blank">https://xttc.lnk.to/radio001</a></p>	/uploads/thumbnails/japaWd9Q0Lk-MQ.jpg	0e9f86b38cdb.mp4	1080p	29700	t	cmawwzvs800074wt9do12tffp	2025-05-10 10:36:07.994	2025-05-20 19:36:21.9
cmawwzyfi008c4wt9jtn3qcrs	cRL5lnmlOO	🚀 Full-stack разработка Trello 2.0 | RED PLANNER [Next.js 14 / React / Nest / TypeScript / Prisma]	<p>🔥 Оформить премиум подписку - <a href="https://htmllessons.ru/premium?utm_so..." target="_blank">https://htmllessons.ru/premium</a></p><p>❤️ Отзывы тут - <a href="https://t.me/htmllessons_reviews" target="_blank">https://t.me/htmllessons_reviews</a></p><p>🦋 Наш ТГ канал - <a href="https://t.me/redgroupchannel" target="_blank">https://t.me/redgroupchannel</a></p><p>В этом ролике мы создадим full-stack приложение Red Planner на популярном фреймворке React. Мы начнем с создания фронтенда, а затем перейдем к созданию бэкенда с использованием фреймворка Nest.</p>	/uploads/thumbnails/-7K_0NRLCu4-MQ.jpg	0eb61a8131f0.mp4	4K	63811	t	cmawwzvok00014wt9uin2kpaw	2025-03-11 07:10:48.867	2025-05-20 19:36:16.398
cmawwzyhv008s4wt9oma34pg0	raWzYp9qyg	Почему я закрыл веб студию?	<p>🔥 Оформить премиум подписку - <a href="https://htmllessons.io/premium?utm_so..." target="_blank">https://htmllessons.io/premium</a></p><p>❤️ Отзывы тут - <a href="https://t.me/htmllessons_reviews" target="_blank">https://t.me/htmllessons_reviews</a></p><p>🦋 Наш ТГ канал - <a href="https://t.me/redgroupchannel" target="_blank">https://t.me/redgroupchannel</a></p><p>Поддержи видео лайком, 1000 лайков 👍 и я делаю видео про разработку игры с нуля!</p><p>Почему я закрыл веб студию? В этом видео я делюсь опытом и рассказываю, что повлияло на мое решение.</p>	/uploads/thumbnails/DJQbLwcJBmI-MQ.jpg	0eb61a8131f0.mp4	4K	14112	t	cmawwzvok00014wt9uin2kpaw	2025-04-18 19:07:46.909	2025-05-20 19:36:16.484
cmawwzyvh00a14wt9cj7f36vb	FlYJEFihn1	СОЗДАЛ ИГРУ С НУЛЯ и исполнил мечту детства!	<p>🔥 Научись разрабатывать похожие проекты на нашей платформе - <a href="https://htmllessons.io/premium?utm_so..." target="_blank">https://htmllessons.io/premium</a></p><p>❤️ Отзывы тут - <a href="https://t.me/htmllessons_reviews" target="_blank">https://t.me/htmllessons_reviews</a></p><p>🦋 Наш ТГ канал - <a href="https://t.me/redgroupchannel" target="_blank">https://t.me/redgroupchannel</a></p><p>Создал игру с нуля и исполнил мечту детства! В этом видео я делюсь процессом разработки игры с использованием React, TypeScript, Zustand и других технологий.</p>	/uploads/thumbnails/pMPo_huyY4o-MQ.jpg	0eb61a8131f0.mp4	4K	7452	t	cmawwzvok00014wt9uin2kpaw	2025-03-29 14:42:03.746	2025-05-20 19:36:16.974
cmawwzzm900ca4wt93qtus3e5	r-VUVrJ8iQ	Анимированный сайдбар за 40 минут! React / Framer-motion / Jotai	<p>🔥 Оформить премиум подписку - <a href="https://htmllessons.io/premium?utm_so..." target="_blank">https://htmllessons.io/premium</a></p><p>❤️ Отзывы тут - <a href="https://t.me/htmllessons_reviews" target="_blank">https://t.me/htmllessons_reviews</a></p><p>🚀 МК "Реализация фильтров/пагинации/сортировки" Осталось 30% мест, успевай! - <a href="https://t.me/pay_mk_filters_bot" target="_blank">https://t.me/pay_mk_filters_bot</a></p><p>🦋 ТГ канал (Розыгрыш 6 годовых лицензий любого продукта компании Jetbrains) - <a href="https://t.me/redgroupchannel/1871" target="_blank">https://t.me/redgroupchannel/1871</a></p><p>Смотри нас в VK Видео - <a href="https://vk.com/video/@redgroup" target="_blank">https://vk.com/video/@redgroup</a></p><p>Поддержи видео лайком, 500 лайков 👍 и я делаю новое видео!</p><p>Готовы создать крутой анимированный сайдбар всего за 40 минут? Погружаемся в мир React и осваиваем мощь Framer-motion для плавных анимаций! Jotai станет нашим надежным помощником в управлении состоянием.</p>	/uploads/thumbnails/zAX6GWpG34s-MQ.jpg	496709250ca9.mp4	4K	7443	t	cmawwzvpy00034wt95y2nwftb	2025-03-23 21:03:33.262	2025-05-20 19:36:17.937
cmawx03sg00p04wt9vpd3ggrw	HwauBF6EXs	Day in the Life with iPhone 16 Pro Max | iOS 18 Setup, Camera Tips & MagSafe Must-Haves	Welcome to my channel! This is a Day In The Life with the iPhone 16 Pro Max in Desert Titanium. I really enjoyed setting up my iPhone 16 Pro Max with the new customization features in iOS 18. I share many iOS 18 shortcuts & tips, new iPhone MagSafe cases & neat accessories, as well as testing out the new Camera Control & camera.	/uploads/thumbnails/XKcyh0I0wXM-MQ.jpg	2ada0ace97d5.mp4	1080p	52354	t	cmawwzvtc00094wt92ot2cfpt	2025-02-15 11:40:53.875	2025-05-20 19:36:23.345
cmawx006l00dy4wt9j9hdbiaz	_gOO4Xec9B	ПОЛНЫЙ КУРС NODE JS / EXPRESS за 2 часа - С НУЛЯ до ПРОФИ!	<p>🔥 Оформить премиум подписку - <a href="https://htmllessons.io/premium?utm_so..." target="_blank">https://htmllessons.io/premium</a></p><p>❤️ Отзывы тут - <a href="https://t.me/htmllessons_reviews" target="_blank">https://t.me/htmllessons_reviews</a></p><p>🚀 МК "Реализация фильтров/пагинации/сортировки" Осталось 30% мест, успевай! - <a href="https://t.me/pay_mk_filters_bot" target="_blank">https://t.me/pay_mk_filters_bot</a></p><p>🦋 ТГ канал (Розыгрыш 6 годовых лицензий любого продукта компании Jetbrains) - <a href="https://t.me/redgroupchannel/1871" target="_blank">https://t.me/redgroupchannel/1871</a></p><p>Поддержи видео лайком, 500 лайков 👍 и я делаю новый полный курс!</p><p>Готовы стать профи в Node.js и Express за 2 часа? Этот курс - ваш билет в мир серверной разработки! Погрузимся в мир npm, научимся работать с TypeScript и Express, освоим валидацию с ZOD и подключение к базам данных через Prisma.</p>	/uploads/thumbnails/-k_59yF_5GA-MQ.jpg	496709250ca9.mp4	4K	12206	t	cmawwzvpy00034wt95y2nwftb	2025-05-20 11:44:34.737	2025-05-20 19:36:18.669
cmawx00or00fj4wt9wtc8azz4	0aWMIy9fhy	АДАПТАЦИЯ САЙТА на примере РЕАЛЬНОГО проекта | CSS, SCSS, Tailwind	<p>🔥 Оформить премиум подписку - <a href="https://htmllessons.io/premium?utm_so..." target="_blank">https://htmllessons.io/premium</a></p><p>❤️ Отзывы тут - <a href="https://t.me/htmllessons_reviews" target="_blank">https://t.me/htmllessons_reviews</a></p><p>🦋 Наш ТГ канал - <a href="https://t.me/redgroupchannel" target="_blank">https://t.me/redgroupchannel</a></p><p>Поддержи видео лайком, 500 лайков 👍 и я делаю новый полный курс!</p><p>В этом видео мы рассмотрим реальные примеры адаптации сайтов, используя CSS, SCSS и Tailwind. Узнаем, как эффективно адаптировать проекты под разные устройства и улучшить навыки в CSS, SCSS и Tailwind.</p>	/uploads/thumbnails/tfIwl9uJ8hY-MQ.jpg	496709250ca9.mp4	4K	4753	t	cmawwzvpy00034wt95y2nwftb	2024-07-18 22:41:34.999	2025-05-20 19:36:19.324
cmawx012x00gm4wt9bzlnwl97	kduYPAlRhr	ПОЛНЫЙ КУРС NEST JS за 3 часа - С НУЛЯ до ПРОФИ!	<p>🔥 Оформить премиум подписку - <a href="https://htmllessons.io/premium?utm_so..." target="_blank">https://htmllessons.io/premium</a></p><p>❤️ Отзывы тут - <a href="https://t.me/htmllessons_reviews" target="_blank">https://t.me/htmllessons_reviews</a></p><p>🚀 МК Авторизация 3.0: Совершенство - <a href="https://t.me/pay_auth_perfection_bot" target="_blank">https://t.me/pay_auth_perfection_bot</a></p><p>🦋 Наш ТГ канал - <a href="https://t.me/redgroupchannel" target="_blank">https://t.me/redgroupchannel</a></p><p>Поддержи видео лайком, 1000 лайков 👍 и я делаю следующий полный курс!</p><p>Добро пожаловать в полный курс по Nest.js! Узнаем, как работать с базами данных через Prisma, создавать микросервисы и тестировать контроллеры и сервисы.</p>	/uploads/thumbnails/gqC0IZVAlsk-MQ.jpg	496709250ca9.mp4	4K	21388	t	cmawwzvpy00034wt95y2nwftb	2025-02-04 07:35:42.421	2025-05-20 19:36:19.834
cmawx01ph00ia4wt9oj70r7v0	QssF24fWI5	🚀 РАЗРАБОТКА ИГРЫ с НУЛЯ за 10 часов! [React / TS / Zustand]	<p>🔥 Оформить премиум подписку - <a href="https://htmllessons.io/premium?utm_so..." target="_blank">https://htmllessons.io/premium</a></p><p>❤️ Отзывы тут - <a href="https://t.me/htmllessons_reviews" target="_blank">https://t.me/htmllessons_reviews</a></p><p>🦋 ТГ канал - <a href="https://t.me/redgroupchannel" target="_blank">https://t.me/redgroupchannel</a></p><p>Адаптация игры под смартфоны. 2000-3000 лайков, и я делаю следующий проект!</p><p>В этом видео мы создадим игру с нуля за 10 часов, используя стэк: React, TypeScript, Zustand, Framer-motion, Tailwind и Bun.</p>	/uploads/thumbnails/T-pA-wW8yJk-MQ.jpg	496709250ca9.mp4	4K	46329	t	cmawwzvpy00034wt95y2nwftb	2025-02-22 11:45:39.478	2025-05-20 19:36:20.645
cmawx026c00js4wt9t45otcch	KDGc4ZQC56	ПОЛНЫЙ КУРС TAILWIND CSS за 30 минут с нуля! RED Course	<p>🔥 Оформить премиум подписку - <a href="https://htmllessons.io/premium?utm_so..." target="_blank">https://htmllessons.io/premium</a></p><p>❤️ Отзывы тут - <a href="https://t.me/htmllessons_reviews" target="_blank">https://t.me/htmllessons_reviews</a></p><p>🌐 МК "SEO оптимизация REACT и NEXT.JS приложений" - <a href="https://t.me/redgroupchannel/1575" target="_blank">https://t.me/redgroupchannel/1575</a></p><p>Поддержи видео лайком, 500 лайков 👍 и я делаю полный курс по TypeScript!</p><p>Новый видеоурок на канале! Сегодня мы публикуем полный курс Tailwind CSS для начинающих. Это 20 уроков в одном видео для полного понимания работы с Tailwind CSS.</p>	/uploads/thumbnails/WJ9ycIyiBR4-MQ.jpg	496709250ca9.mp4	4K	17367	t	cmawwzvpy00034wt95y2nwftb	2025-05-16 02:34:18.399	2025-05-20 19:36:21.253
cmawx028p00k64wt9u1hmtoh4	3cr9BJ5Y8f	Frankyeffe & MOTVS - Fall Down	<p>Stream/Download "Fall Down" now: <a href="https://revr.ec/FALLDOWN" target="_blank">https://revr.ec/FALLDOWN</a></p><p>Our techno rave playlist: <a href="https://maddix.life/playlist" target="_blank">https://maddix.life/playlist</a></p><p>Follow @Maddix<br>Website: <a href="https://maddixmusic.com" target="_blank">https://maddixmusic.com</a><br>Instagram: <a href="https://instagram.com/maddixmusic" target="_blank">/ maddixmusic</a><br>Spotify: <a href="https://maddix.life/spotify" target="_blank">https://maddix.life/spotify</a><br>TikTok: <a href="https://tiktok.com/@maddixmusic" target="_blank">/ maddixmusic</a><br>Twitter: <a href="https://twitter.com/maddixmusic" target="_blank">/ maddixmusic</a><br>Facebook: <a href="https://facebook.com/maddixmusic" target="_blank">/ maddixmusic</a></p><p>Follow EXTATIC Records:<br>Website: <a href="https://www.extaticrecords.com" target="_blank">https://www.extaticrecords.com</a><br>Instagram: <a href="https://instagram.com/extaticrecords" target="_blank">/ extaticrecords</a><br>Facebook: <a href="https://facebook.com/extaticrecords" target="_blank">/ extaticrecords</a><br>Soundcloud: <a href="https://soundcloud.com/extaticrecords" target="_blank">/ extaticrecords</a></p>	/uploads/thumbnails/-2maTnnyfVc-MQ.jpg	0e9f86b38cdb.mp4	1080p	12992	t	cmawwzvs800074wt9do12tffp	2024-08-03 15:35:04.374	2025-05-20 19:36:21.338
cmawx04ot00rs4wt93cg994tl	BJk-NmleoH	НАСТАВНИК ПО БИЗНЕСУ #2 ПРОХОР ШАЛЯПИН НАКОРМИЛ ВЕСЬ РАЙОН	В этом выпуске я превратил мастера по заточке в миллионера, нашел ему бесплатную рабочую силу и сделал его самым успешным человеком в спальном районе. Моим помощником стал певец, актер, шоумен и любимец всех женщин Прохор Шаляпин.	/uploads/thumbnails/i5-Cw07kBtQ-MQ.jpg	7924f3132f0c.mp4	1080p	62938	t	cmawwzvuj000b4wt9me35pnha	2025-03-19 02:18:21.571	2025-05-20 19:36:24.509
cmawx04zu00sr4wt90ejbktsa	9Ryg3JYYLH	The 10 Best PS5 Accessories Worth Buying!	The best PS5 accessories to buy right now. Just bought a PlayStation 5 or want to upgrade your PS5 gaming setup with some new items? Here are my top, favourite and cheapest PS5 accessories I use.	/uploads/thumbnails/ibqj6xGdi3M-MQ.jpg	97cce9f49787.mp4	1080p	97212	t	cmawwzvvo000d4wt9vfirhc8a	2025-02-24 21:49:20.291	2025-05-20 19:36:24.907
cmawx06ah00x74wt9ydhtje39	5K5i_-TuU9	Above The Neon City - 12 Hours - 4K Ultra HD 60fps	A car flies over a futuristic Cyberpunk / Bladerunner style city at night, mixed to some synthwave music, 12 hours, enjoy!	/uploads/thumbnails/pwuFTsvJL34-MQ.jpg	a501e9639efa.mp4	720p	58181	t	cmawwzvxx000h4wt9m9pa0271	2025-04-30 11:58:16.183	2025-05-20 19:36:26.586
cmawx06vz00yu4wt9bc7s0gml	QKJujq6QPV	VISUALDON - Showreel 🌌	A showreel of my best work so far. Thanks for watching.	/uploads/thumbnails/-jj5yVFf9LY-MQ.jpg	a501e9639efa.mp4	720p	2303	t	cmawwzvxx000h4wt9m9pa0271	2025-03-21 21:55:48.012	2025-05-20 19:36:27.359
cmawx045k00q74wt9igaq26lw	MK5n5-onzb	НАСТАВНИК ПО БИЗНЕСУ #1 АВТОМОЙКА ПОПАЛА НА ТАЙМСКВЕР	В этом выпуске я отправился на окраину Петербурга и превратил обычную Автомойку в бизнес мирового масштаба. А лицо Стас Костюшкина впервые украсило ТаймСквер.	/uploads/thumbnails/4lwwwt4QXqE-MQ.jpg	7924f3132f0c.mp4	1080p	104061	t	cmawwzvuj000b4wt9me35pnha	2025-04-01 11:51:20.18	2025-06-20 20:44:23.844
cmawx05c600u54wt9mg02c50q	4iK9BXMzSI	John Summit Live @ Madison Square Garden	my set from madison square garden is now live! we put so much time & energy into bringing this show together in real life so we’re stoked to share this experience with u on youtube 🙌 <br /> massive thanks to the incredible team that brought the comfort in chaos vision to life	/uploads/thumbnails/M4aaRoLDWsc-MQ.jpg	0d9aaca6a564.mp4	1080p	575564	t	cmawwzvws000f4wt9yoogtf4r	2024-12-15 23:40:31.912	2025-06-27 16:27:12.986
cmawx058p00tn4wt980t6tgzf	uLOjyC6o3B	Top 10 MUST-PLAY Games Coming in October	The best games to play in October 2024 on PS5, Xbox Series, PC and Switch. There are also some games in here you’ve probably never heard of.	/uploads/thumbnails/-eSIGOeg0Pw-MQ.jpg	97cce9f49787.mp4	1080p	85431	t	cmawwzvvo000d4wt9vfirhc8a	2025-02-27 01:18:15.343	2025-06-25 15:53:21.927
cmawx039n00ne4wt96w5xleul	r8Tnc3zhRl	My 2024 Cozy Desk Setup | Standing Desk, Ergonomic Chair, 5K Monitor, Desk Accessories, Zen & Earthy	<p>Welcome to my 2024 desk setup tour, where I have been finding my zen, focusing on my daily rituals, and stressing less about goals.</p><p>Here is where I channel my creativity, and find inspiration. A clean space, leads to a clean mind.</p><p>Flow is positive. Flow is when you are focusing on something at hand, with zero distractions. Where the ideas & creativity flow naturally, and things are not stagnant.</p><p>So, what gives you flow? And what allows you to enter your flow?</p><p>I hope this video speaks to you, and inspires you to find your flow and reset your space.</p>	/uploads/thumbnails/nfJKsQNcZWo-MQ.jpg	2ada0ace97d5.mp4	1080p	174188	t	cmawwzvtc00094wt92ot2cfpt	2025-05-01 19:18:13.765	2025-06-27 16:12:32.104
cmawx075500zp4wt9vhrtayh9	k6jBqaRpqM	Anyma WE1 | Tomorrowland 2024	A story set in the mythical realm of Silvyra, it’s a world unto its own, filled with creatures, plant life, and people living in harmony.	/uploads/thumbnails/1eDyOdo0Lsc-MQ.jpg	8600fc2dbc9e.mp4	1080p	1155242	t	cmawwzvz1000j4wt9qrdl91ks	2025-02-09 22:36:18.333	2025-06-27 17:30:16.924
cmawx07mb01164wt9y44dhos0	l4KfQXrDbv	Swedish House Mafia WE2 | Tomorrowland 2024	A story set in the mythical realm of Silvyra, it’s a world unto its own, filled with creatures, plant life, and people living in harmony.	/uploads/thumbnails/dSK13X9oGi8-MQ.jpg	8600fc2dbc9e.mp4	1080p	2694498	t	cmawwzvz1000j4wt9qrdl91ks	2024-10-18 15:53:32.66	2025-06-27 19:27:28.041
cmawx05v000vs4wt9i59jkfuz	0Clv1hczxe	John Summit - Tears (with Paige Cavell) [Max Styler Remix]	John Summit - Tears (with Paige Cavell) [Max Styler Remix]	/uploads/thumbnails/bJlp0Pcn8BA-MQ.jpg	0d9aaca6a564.mp4	1080p	35619	t	cmawwzvws000f4wt9yoogtf4r	2025-05-14 00:16:19.817	2025-06-26 00:07:23.364
cmawwzy9q007o4wt9xhmlilnb	FfEEGmyKN4	ПОЛНЫЙ КУРС REACT JS для начинающих - Изучи Реакт за 2 часа с нуля!	<p>🔥 Оформить премиум подписку - <a href="https://htmllessons.ru/premium?utm_so..." target="_blank">https://htmllessons.ru/premium</a></p><p>❤️ Отзывы тут - <a href="https://t.me/htmllessons_reviews" target="_blank">https://t.me/htmllessons_reviews</a></p><p>Поддержи видео лайком, 2000 лайков 👍 и я делаю полный курс по Next.js 2024!</p><p>Новый большое видео на канале! Сегодня я публикую полный курс React JS для начинающих. Этот материал позволит тебе изучить Реакт за 2 часа с нуля.</p>	/uploads/thumbnails/Fbsusu0xfpY-MQ.jpg	0eb61a8131f0.mp4	4K	75605	t	cmawwzvok00014wt9uin2kpaw	2025-04-30 05:16:04.306	2025-06-22 00:10:49.785
cmawwzz6t00b44wt90h6ua44t	BEi5rIeRLe	Курс по Next js 14 - Без воды за 40 минут! RED Essence	<p>🔥 Оформить премиум подписку - <a href="https://htmllessons.io/premium?utm_so..." target="_blank">https://htmllessons.io/premium</a></p><p>🔐 МК "Реализация оплаты от А до Я" - <a href="https://t.me/pay_red_mk_3_bot" target="_blank">https://t.me/pay_red_mk_3_bot</a></p><p>🦋 Наш ТГ канал - <a href="https://t.me/redgroupchannel" target="_blank">https://t.me/redgroupchannel</a></p><p>В этом видео мы погрузимся в мир Next.js и разберем, когда лучше выбирать Next.js, а когда React. Освоите новый роутинг и его возможности, узнаете о хуках useRouter, usePathname, useSearchParams.</p>	/uploads/thumbnails/Tbu5oECgPI4-MQ.jpg	0eb61a8131f0.mp4	4K	50518	t	cmawwzvok00014wt9uin2kpaw	2025-05-18 21:27:12.982	2025-06-27 19:28:28.189
cmcf7ilp6001ct1amaoj4kh2m	aRZIICyDSZ	Test2	desc	/uploads/thumbnails/e38f11922c08.png	556908cc4009.mp4	1080p	0	t	cmcclfbz60016kovgwtkmg3so	2025-06-27 19:30:16.025	2025-06-27 19:30:16.025
cmcd9m4w0001cc7xfi6w9f09r	BSnm3wl-Wq	Nature	Mountaints	/uploads/thumbnails/9617785d4a49.png	9f8a0b5ab23b.mp4	720p	21	t	cmcclfbz60016kovgwtkmg3so	2025-06-26 10:53:27.679	2025-06-27 16:13:13.7
cmcdfac4c002gc7xfocmkpodv	qS_Xj-WcA4	Road	description	/uploads/thumbnails/9bf33999b726.png	cf1cc2a5b83b.mp4	720p	40	t	cmcclfbz60016kovgwtkmg3so	2025-06-26 13:32:14.875	2025-06-27 19:02:56.978
cmccnongc000wc7xfsyd8hr37	RdXNh5I8bc	Dance	without music !	/uploads/thumbnails/b61a020abf23.png	136be48a45f0.mp4	1080p	5	t	cmcclfbz60016kovgwtkmg3so	2025-06-26 00:39:33.563	2025-06-26 14:04:17.694
\.


--
-- Data for Name: video_comment; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.video_comment (id, text, user_id, video_id, created_at, updated_at) FROM stdin;
cmawwzw0p000x4wt9f36jujr6	Illo victus cultellus voluptatibus conatus. Tamdiu cattus causa.	cmawwzw0o000v4wt9ok2a006k	cmawwzvz4000l4wt9zrxi2iwe	2025-04-22 14:23:57.45	2025-05-20 19:36:13.274
cmawwzw2m00104wt95tqrws03	Campana tandem absum. Temperantia absorbeo aedificium solium vindico audio curis adsidue. Ademptio tantum adulescens toties validus. Tamquam soluta socius ustilo tenax victus taedium averto. Tondeo vinco et callide ultra catena.	cmawwzw2l000y4wt90j5gor81	cmawwzvz4000l4wt9zrxi2iwe	2025-05-04 04:50:03.1	2025-05-20 19:36:13.343
cmawwzw4j00134wt9alucbxsq	Absque numquam commodo. Totus id voco aequus pectus. Cuppedia cribro confugo. Aggredior acceptus officiis bis arma ulciscor audentia temperantia comitatus. Vulnero sapiente eum trans.	cmawwzw4h00114wt9577hsijm	cmawwzvz4000l4wt9zrxi2iwe	2025-05-08 07:10:57.476	2025-05-20 19:36:13.411
cmawwzw6n00164wt9i1m7dalg	Ante cribro textor quam tracto valens harum armarium. Amissio dapifer non statim deleo vomica. Bestia capitulus basium comes cubitum nemo. Catena demo bonus explicabo sub strues texo suppono sortitus. Sordeo cursim casso causa suppono corporis audacia. Vulnero subito comprehendo truculenter ullam depereo.	cmawwzw6m00144wt9220jqruw	cmawwzvz4000l4wt9zrxi2iwe	2025-05-15 16:06:10.024	2025-05-20 19:36:13.487
cmawwzw8o00194wt9aga8seht	Accedo celebrer vos cubitum capto. Villa delinquo denuncio aeternus curriculum versus nemo arto certus. Theca casus distinctio quidem animadverto thymum earum. Conduco admoveo fugiat sollers cupiditas amaritudo tabula deputo. Spero ustilo damnatio. Demergo laboriosam cinis ustilo repellendus aspernatur assentator.	cmawwzw8n00174wt9rjfajvwi	cmawwzvz4000l4wt9zrxi2iwe	2025-05-12 07:37:14.046	2025-05-20 19:36:13.56
cmawwzwlc002f4wt987x5jsb7	Conatus perferendis quidem. Volutabrum arto sopor coma vox veniam triumphus reiciendis vergo summa. Non absconditus clementia communis attero optio atque ipsum aedificium.	cmawwzwlb002d4wt9ed24xyya	cmawwzwjx00224wt9t8q7kpgp	2025-04-19 06:09:38.91	2025-05-20 19:36:14.016
cmawwzwu3003e4wt9xnbovp00	Demens absum abundans adversus subiungo deserunt contego convoco porro arbor. Amaritudo cubitum suus curriculum volutabrum deleo alias cohaero condico considero. Curiositas allatus chirographum odit.	cmawwzwu2003c4wt928qqtkul	cmawwzwsu00324wt96rnd6hm0	2025-04-06 08:40:22.732	2025-05-20 19:36:14.331
cmawwzwvc003h4wt9evj0xp2y	Socius adfectus crustulum ager. Amicitia volutabrum condico vomer arcesso culpa sequi stabilis. Aegre nam caput contego.	cmawwzwvb003f4wt9qjz18ez4	cmawwzwsu00324wt96rnd6hm0	2025-04-21 18:28:06.986	2025-05-20 19:36:14.377
cmawwzwwf003k4wt9vjzkwmgw	Tabgo talio aegrus alioqui. Eius adflicto tabula angustus valens libero anser somniculosus. Stabilis aeneus adeptio vulgo aestivus urbs custodia studio.	cmawwzwwe003i4wt9o697hm6b	cmawwzwsu00324wt96rnd6hm0	2025-04-25 03:50:54.026	2025-05-20 19:36:14.415
cmawwzwxj003n4wt90tvmg5qk	Maiores reprehenderit cubo advoco solio caute administratio. Rerum demum alias debitis terga suggero asper vorax tandem utpote. Cicuta amita appello animi asperiores capillus cubicularis tolero certus defessus. Spes accedo voluptatibus atrox nobis dicta convoco.	cmawwzwxi003l4wt9y0i3cpcc	cmawwzwsu00324wt96rnd6hm0	2025-05-14 15:30:13.419	2025-05-20 19:36:14.455
cmawwzwyo003q4wt9ue8h8xin	Cum adulescens stultus sophismata coruscus campana vesica. Colligo cinis conicio cicuta commemoro dicta vulgo angustus comes. Stillicidium aestivus demum concido vestigium cubitum eos facere arx. Tribuo ars colo aegrus altus administratio strues paens.	cmawwzwym003o4wt96frf8th0	cmawwzwsu00324wt96rnd6hm0	2025-04-25 22:16:27.575	2025-05-20 19:36:14.496
cmawwzwzq003t4wt9kig7oy8b	Armarium blandior sumo creo autus benevolentia distinctio defetiscor. Argumentum stillicidium damno audeo. Amplitudo dens delectatio quis credo aranea artificiose. Acidus repellat pecus suus vis talio. Quo civis creo vilitas sonitus cognatus aedificium spes callide demens. Conitor comptus est.	cmawwzwzq003r4wt9omsrjpfl	cmawwzwsu00324wt96rnd6hm0	2025-04-28 19:29:09.535	2025-05-20 19:36:14.535
cmawwzx0u003w4wt9t19et2cz	Abutor decens auctor curriculum appello atrocitas cupio alienus. Amplitudo repellendus taedium infit conor sapiente comptus. Spes consequuntur curatio admoneo ager facilis molestias administratio abbas tabula. Ciminatio balbus acerbitas vulpes officia vis sponte verecundia ulciscor volo.	cmawwzx0u003u4wt9247k9qmp	cmawwzwsu00324wt96rnd6hm0	2025-04-14 01:15:05.442	2025-05-20 19:36:14.575
cmawwzx6j004k4wt9p22yegf2	Pel vesper patrocinor animus. Video tamen casso acies tollo spiritus.	cmawwzx6i004i4wt9pl2nycaz	cmawwzx55004a4wt9c8fsokbr	2024-12-20 07:38:30.019	2025-05-20 19:36:14.779
cmawwzx7m004n4wt9xegh7f2d	Commodi supellex cogito nostrum pecto tot. Sumptus carus ventus. Ubi consequatur acerbitas amor culpa eius provident vulgo carbo. Adflicto versus deputo bellicus thesaurus.	cmawwzx7m004l4wt9oh5kk86c	cmawwzx55004a4wt9c8fsokbr	2025-02-12 05:29:16.861	2025-05-20 19:36:14.819
cmawwzx8o004q4wt9w64hhi4r	Voluptas aperio vorax. Una abbas denuo nihil apostolus fugit theatrum aequus tempora pecco. Cognomen recusandae architecto. Stabilis campana trado clamo somnus arguo taceo adficio. Itaque acervus degero temeritas conitor dolores abundans. Stipes degero bene cogito.	cmawwzx8n004o4wt9xs8pxzwk	cmawwzx55004a4wt9c8fsokbr	2025-02-23 03:31:03.287	2025-05-20 19:36:14.857
cmawwzx9r004t4wt9dwr18y16	Succedo vobis cohibeo currus deduco modi certe aperte stips. Viscus labore vix solio atqui cuius tergum conitor est teneo. Fuga animi abutor odio deprecator nisi corpus angelus pel. Vel nobis iusto consuasor uterque cibus quia certe. Virgo perspiciatis ab tollo appositus stabilis omnis aegrus.	cmawwzx9r004r4wt9y4jp7x9n	cmawwzx55004a4wt9c8fsokbr	2025-02-02 23:25:21.811	2025-05-20 19:36:14.896
cmawwzxay004w4wt9ekj88ch5	Tamisium temeritas arto aliqua tabella antepono curiositas velut pecco spargo. Tenetur aeternus architecto brevis. Terminatio cervus aeternus.	cmawwzxax004u4wt9bd7auth5	cmawwzx55004a4wt9c8fsokbr	2024-10-31 18:22:07.235	2025-05-20 19:36:14.938
cmawwzxc2004z4wt91v1mxl2s	Adsidue stella delectus ambulo cribro acidus clam. Demoror tepidus defleo trepide verecundia bellicus vulpes textilis curiositas temeritas. Verto tergiversatio tribuo. Viriliter acceptus sumo subvenio allatus iure. Callide ocer molestias tribuo vilis laudantium sum conqueror labore aureus. Incidunt crepusculum quam carpo curriculum demitto abbas iste video.	cmawwzxc1004x4wt9yoiexeq2	cmawwzx55004a4wt9c8fsokbr	2025-01-12 22:24:43.109	2025-05-20 19:36:14.978
cmawwzxe100524wt9au1peac5	Delectus curto videlicet clementia sublime universe doloribus sui. Crepusculum abscido arto aveho beneficium allatus. Deduco bellum conscendo tendo video odit subnecto addo. Alias vinum angelus adulescens cohaero.	cmawwzxe000504wt9kwd4n74b	cmawwzx55004a4wt9c8fsokbr	2024-11-28 05:50:07.702	2025-05-20 19:36:15.049
cmawwzxfi00554wt97pqf6zq8	Absque suffragium aureus nulla addo ut. Chirographum crapula adfectus tendo tumultus thesaurus. Tubineus tergum quod porro ullam paens comprehendo succurro. Cattus teneo conspergo verumtamen candidus vero amplus.	cmawwzxfh00534wt91b4tlabr	cmawwzx55004a4wt9c8fsokbr	2025-05-08 07:22:38.035	2025-05-20 19:36:15.102
cmawwzxgw00584wt9w9gna4kk	Calamitas tergo aer. Colligo conspergo umbra consuasor facilis via. Pel caput temperantia vel damno cogo. Enim vespillo umbra usque assentator. Coerceo ter argumentum eligendi adaugeo corroboro. Deserunt exercitationem texo aestivus adeptio crapula.	cmawwzxgv00564wt9smcxkanh	cmawwzx55004a4wt9c8fsokbr	2025-05-08 18:53:42.486	2025-05-20 19:36:15.153
cmawwzxs5006a4wt9qiyl7agu	Demergo acies caveo verto arca volaticus toties. Bibo victus cenaculum. Eligendi tribuo cogo denuo utique cavus aggredior attero. Urbs valeo creptio solum strenuus necessitatibus subseco suus ciminatio totam.	cmawwzxs500684wt98ol1e7w6	cmawwzxqt00614wt9oeruk8dx	2025-05-01 08:29:37.39	2025-05-20 19:36:15.558
cmawwzxt8006d4wt93yvdnogn	Cura audax debeo urbanus. Suscipit vis thymbra canonicus uterque. Vulgaris caute saepe cultellus suggero conforto omnis ascit sonitus. Error cognomen cognomen provident.	cmawwzxt8006b4wt99dirluxb	cmawwzxqt00614wt9oeruk8dx	2025-02-15 03:30:11.323	2025-05-20 19:36:15.597
cmawwzxud006g4wt9jq1e4tlv	Traho auctor soleo. Ver modi accusantium conspergo aqua ipsum verus conspergo voco. Earum capto tabella celer ademptio comparo sperno alii. Tunc surculus vulticulus adsuesco ex adficio. Cura communis deripio.	cmawwzxuc006e4wt9f6dlzeq5	cmawwzxqt00614wt9oeruk8dx	2025-04-24 07:02:32.23	2025-05-20 19:36:15.637
cmawwzxvg006j4wt9byf5p1n1	Depromo coruscus cribro sumo vetus solvo velut aptus valens tertius. Sollicito accusantium somnus. Summa valens civitas dignissimos aro. Provident succedo temporibus tremo derideo doloremque temperantia.	cmawwzxvf006h4wt9nrxzxney	cmawwzxqt00614wt9oeruk8dx	2025-03-30 09:16:24.922	2025-05-20 19:36:15.677
cmawwzxwk006m4wt93n237r1z	Attero summisse vindico. Ipsa ustulo tergum vesper apto timor argentum cenaculum.	cmawwzxwj006k4wt9g8vcjpwy	cmawwzxqt00614wt9oeruk8dx	2025-04-02 15:23:05.196	2025-05-20 19:36:15.716
cmawwzxxn006p4wt977j5kngb	Claro volaticus laudantium attero ager trado artificiose tubineus tenax sulum. Temptatio laborum sufficio magnam valetudo nobis suggero. Ultio acervus blandior admoneo quam debilito ducimus concedo.	cmawwzxxm006n4wt9ahqxlwhe	cmawwzxqt00614wt9oeruk8dx	2025-03-16 13:09:17.409	2025-05-20 19:36:15.755
cmawwzxyq006s4wt99xjurwti	Ademptio arbustum iusto. Denuncio addo repellendus tracto vulgaris auditor creta summisse. Ubi cauda venio statua quae confero suppellex defero possimus. Arbor aer tum curis subvenio complectus. Beatae deleniti tametsi theologus attonbitus peccatus arto sequi. Demulceo vitiosus auxilium ab aequus.	cmawwzxyp006q4wt9ot90j4yh	cmawwzxqt00614wt9oeruk8dx	2025-03-23 14:28:51.122	2025-05-20 19:36:15.794
cmawwzxzy006v4wt9j7dnlrzr	Tutis cervus absum impedit porro. Cunctatio bellum carus bardus vomito tandem delicate contra aspernatur ascit. Caveo clibanus perferendis argumentum concido damnatio. Cito crux cotidie perspiciatis aestivus arma versus inventore auditor textus. Expedita vinum pariatur.	cmawwzxzx006t4wt9u41oqd9j	cmawwzxqt00614wt9oeruk8dx	2025-03-22 23:58:55.724	2025-05-20 19:36:15.838
cmawwzyb3007y4wt9u3gyfj7p	Templum crur bellum utique. Centum volo depono tenax deputo vox deinde amet arcesso temeritas. Vigor astrum subvenio terminatio beatus tyrannus culpa adversus credo. Tracto coerceo aurum depulso tepidus creo deleo. Aestivus undique stabilis vulnero. Talus volutabrum tepesco.	cmawwzyb2007w4wt9mabhw94k	cmawwzy9q007o4wt9xhmlilnb	2025-05-18 13:58:11.242	2025-05-20 19:36:16.239
cmawwzyc700814wt9kzqivp0k	Decumbo usus debitis viriliter trans thymum. Clamo beneficium amplexus stillicidium dens aegre asperiores strenuus. Fuga demoror beneficium caterva advoco strenuus comitatus surculus sto caput. Fugiat temporibus vix aduro. Angelus sol spoliatio tutis consequuntur.	cmawwzyc6007z4wt9y5c4w61l	cmawwzy9q007o4wt9xhmlilnb	2025-05-12 06:49:41.653	2025-05-20 19:36:16.28
cmawwzydb00844wt9iuvwey1t	Vitiosus sortitus vos demum vulgivagus triumphus. Averto viduo viscus talus absconditus. Utique cetera condico spargo trepide avarus valetudo. Apparatus cribro molestias corona tantillus ipsa casso. Acidus facere suus arto.	cmawwzyda00824wt9b9n2mr9u	cmawwzy9q007o4wt9xhmlilnb	2025-05-09 00:39:55.357	2025-05-20 19:36:16.319
cmawwzygs008n4wt9xce6pomo	Clementia calculus voro solvo speciosus usque peior tero paens. Alii casus tertius amita pectus ciminatio assentator usus thymum. Degero victoria suasoria talio.	cmawwzygr008l4wt95ape2nh7	cmawwzyfi008c4wt9jtn3qcrs	2025-03-28 02:31:33.047	2025-05-20 19:36:16.444
cmawwzyj400924wt9lfjqqnsk	Cupiditas deficio acervus tenuis stultus stips cur. Consequuntur arbitro antea ceno victus. Deleo vestigium abundans verus vix crux tibi cuius ex tres.	cmawwzyj300904wt9qufjec8q	cmawwzyhv008s4wt9oma34pg0	2025-04-24 01:56:45.348	2025-05-20 19:36:16.529
cmawwzyk800954wt9xzvqrdit	Versus utroque voluptatem ex adicio. Caterva tandem viriliter vomito. Tutamen sponte officiis sit utor crustulum defungo. Claro vomica cunabula magni tolero admiratio conicio pauci dicta. Non reprehenderit degenero cum deorsum calculus avaritia unde absum.	cmawwzyk700934wt9grv58ybr	cmawwzyhv008s4wt9oma34pg0	2025-04-23 14:19:04.783	2025-05-20 19:36:16.568
cmawwzylb00984wt9kqo0e8ds	Vesica arceo aer terga libero somniculosus. Laudantium colligo alo optio vociferor arca vetus tabula magni tempus. Culpa capillus expedita. Auctor triumphus repellendus bos.	cmawwzyla00964wt9pu5npsl8	cmawwzyhv008s4wt9oma34pg0	2025-04-29 09:58:06.181	2025-05-20 19:36:16.607
cmawwzyme009b4wt980wmcz8l	Vita ventus bardus cohaero viridis sollers animi. Valde ducimus vel accendo surculus. Creta perferendis verbera dolores suspendo delinquo celebrer. Desino quibusdam amor vespillo canis.	cmawwzymd00994wt9s24nhb9q	cmawwzyhv008s4wt9oma34pg0	2025-05-03 11:27:28.369	2025-05-20 19:36:16.646
cmawwzynh009e4wt9upkwoyph	Sapiente adstringo caterva quasi terebro vindico accusantium cupio suppono textor. Absconditus sto tribuo infit demergo. Paens asperiores suffragium torqueo. Combibo tam curto via maiores patria cunctatio. Amaritudo adsuesco tempus vociferor adsum sed. Debeo ver magnam angustus decens baiulus.	cmawwzyng009c4wt9owep36ld	cmawwzyhv008s4wt9oma34pg0	2025-05-17 00:08:41.777	2025-05-20 19:36:16.685
cmawwzyon009h4wt9sg3ig08x	Damno conscendo virgo sono utrum. Avarus certus sit comminor colo incidunt cogito conturbo. Tamisium usitas quis apud virga admoneo vox. Sponte utique unus artificiose expedita aptus ademptio caecus. Ipsa terra tumultus. Inventore demens atrox vinco barba corrupti cupiditas.	cmawwzyom009f4wt9nz6da0r0	cmawwzyhv008s4wt9oma34pg0	2025-05-16 00:20:45.955	2025-05-20 19:36:16.727
cmawwzyq1009k4wt9sbf01pxf	Uberrime tero virtus cognatus cubo consectetur repellat. Textilis maxime adfero assentator aer sponte defero.	cmawwzyq1009i4wt9xmd6my1u	cmawwzyhv008s4wt9oma34pg0	2025-05-08 04:28:35.579	2025-05-20 19:36:16.778
cmawwzyr4009n4wt9fkwxt2f4	Tero surgo recusandae capio. Centum turbo amet aestivus. Crapula aureus creber adeo conservo quibusdam dolorum traho. Conscendo dicta sui utrum adficio vociferor tamdiu blandior vergo deorsum. Sollers tempus occaecati vix copia odit talis degero vilicus quo. Supplanto nesciunt quaerat nihil.	cmawwzyr3009l4wt9mlae64zm	cmawwzyhv008s4wt9oma34pg0	2025-05-09 17:48:23.532	2025-05-20 19:36:16.816
cmawwzywq00ab4wt9ktrqh7b8	Vociferor utrum curatio sub desidero explicabo cernuus aer cubitum cunae. Pauci volaticus conitor comis aureus saepe suscipit amor cotidie asperiores. Vulgo dedecor cinis velit assentator aliquid dapifer. Cura ait tubineus deporto.	cmawwzywp00a94wt9lrsycrkc	cmawwzyvh00a14wt9cj7f36vb	2025-05-01 00:38:14.974	2025-05-20 19:36:17.019
cmawwzyxt00ae4wt9q40jies8	Suasoria accusamus suspendo caterva sit asperiores. Incidunt atavus brevis bene. Verbera delicate doloremque molestiae. Solitudo vorago attollo comprehendo repellat tendo. Asper bibo patrocinor tunc calculus vulnus. Distinctio labore adicio desipio delectus.	cmawwzyxt00ac4wt95qq8v6lp	cmawwzyvh00a14wt9cj7f36vb	2025-04-14 11:12:44.01	2025-05-20 19:36:17.058
cmawwzyyx00ah4wt9z2vy1l4v	Utpote trado dens vivo attollo adnuo eos depromo textor laboriosam. Candidus aperio cum cauda. Cattus culpa comitatus victus viridis sui terra.	cmawwzyyw00af4wt9d1uahh8z	cmawwzyvh00a14wt9cj7f36vb	2025-05-07 09:01:16.386	2025-05-20 19:36:17.097
cmawwzz0000ak4wt9eziaqh30	Eum ventosus una solio absconditus a. Cur arceo traho vitium adflicto vero arx cena accommodo damno. Tempore spes vapulus nobis teres suggero ascisco copia. Depono peccatus ulterius. Claustrum quo admoneo templum. Decor cervus quos.	cmawwzyzz00ai4wt9sp2hzry1	cmawwzyvh00a14wt9cj7f36vb	2025-04-19 14:20:44.744	2025-05-20 19:36:17.136
cmawwzz1300an4wt9rmyaqfqs	Stabilis tamisium amor ascit vitiosus sublime vinum concido. Despecto solvo suffragium admiratio iusto. Tabesco admiratio auxilium accusantium ad corrumpo tabgo vehemens sumptus. Architecto spiritus animadverto adulatio nemo alias cubicularis.	cmawwzz1200al4wt9ljxtcfxb	cmawwzyvh00a14wt9cj7f36vb	2025-04-04 17:12:01.552	2025-05-20 19:36:17.175
cmawwzz2600aq4wt9d6vh0iid	Cruciamentum excepturi tergeo vestrum beneficium vomer. Alius utique utique talus asporto calculus virga baiulus amplus. Viscus aedificium uxor deporto succurro decipio vindico.	cmawwzz2500ao4wt9h6atvyzz	cmawwzyvh00a14wt9cj7f36vb	2025-05-08 07:50:48.098	2025-05-20 19:36:17.214
cmawwzz8300be4wt9arvhl8do	Suppellex cogo tabgo quos argentum ullus. Sufficio accusamus tui minima bibo.	cmawwzz8200bc4wt9aobn915v	cmawwzz6t00b44wt90h6ua44t	2025-05-19 05:50:37.899	2025-05-20 19:36:17.428
cmawwzz9800bh4wt9vqf3awcn	Ipsam perferendis ventito delectus surculus reiciendis certe tribuo beatae. Capitulus creo strenuus absorbeo adsuesco adeptio argentum tollo.	cmawwzz9700bf4wt9dcpv2z0l	cmawwzz6t00b44wt90h6ua44t	2025-05-19 23:52:25.604	2025-05-20 19:36:17.468
cmawwzznq00ck4wt97gmpoulz	Ratione decimus vaco corrupti caries. Cogito reprehenderit vomer et suffoco triduana ascit vulgus. Studio capio congregatio capto ceno. Sunt artificiose ante. Adflicto amaritudo speculum amoveo suggero.	cmawwzznp00ci4wt9830ztf3e	cmawwzzm900ca4wt93qtus3e5	2025-04-10 11:25:05.895	2025-05-20 19:36:17.991
cmawwzzoz00cn4wt960nz0035	Ulterius thymum concedo. Vado audio provident blandior copia ascisco aspernatur sono virga. Vivo ab thema facere admiratio voluptatibus suppono arx.	cmawwzzoy00cl4wt944itdt07	cmawwzzm900ca4wt93qtus3e5	2025-04-01 15:33:33.557	2025-05-20 19:36:18.035
cmawwzzq700cq4wt9gc89nui8	Decet deorsum coma distinctio sufficio. Crepusculum trans tui. Adamo id asper vallum volva corroboro arguo tamen numquam. Sopor conitor delibero.	cmawwzzq600co4wt9rzxsthxb	cmawwzzm900ca4wt93qtus3e5	2025-05-02 07:54:03.116	2025-05-20 19:36:18.08
cmawwzzri00ct4wt9wz6nw8qc	Coma credo vindico capio. Neque aptus tricesimus calco optio utpote causa deprecator approbo aliquid. Acervus subseco accedo eos communis derelinquo adaugeo.	cmawwzzri00cr4wt9o5lwk497	cmawwzzm900ca4wt93qtus3e5	2025-05-01 12:13:30.238	2025-05-20 19:36:18.127
cmawwzzso00cw4wt9qhhqzlfp	Timor combibo valeo demitto. Ars vapulus accusamus clamo derelinquo vesper amor advenio.	cmawwzzsn00cu4wt9kg4a3iju	cmawwzzm900ca4wt93qtus3e5	2025-04-02 14:55:10.37	2025-05-20 19:36:18.168
cmawwzztr00cz4wt96k1tmdv5	Benigne bene clamo acervus adaugeo corrigo depromo decimus. Absconditus verecundia titulus aurum capillus cognatus. Tolero universe color. Supplanto cicuta coniuratio uter.	cmawwzztr00cx4wt9qq5rw4um	cmawwzzm900ca4wt93qtus3e5	2025-04-10 23:14:37.598	2025-05-20 19:36:18.208
cmawwzzux00d24wt91egw78dt	Tui volutabrum terminatio. Sui artificiose quisquam cuius. Commemoro repellat vitae. Voveo tantillus caveo.	cmawwzzuw00d04wt94yijxys7	cmawwzzm900ca4wt93qtus3e5	2025-05-11 04:31:48.49	2025-05-20 19:36:18.25
cmawwzzw500d54wt9ukejqdt3	Corrigo ademptio vestrum asper conitor tollo vulpes comitatus. Caelum eos armarium varietas adamo aestus officia maiores. Amiculum tendo valens audio reiciendis vinitor cohors repellendus verus appositus.	cmawwzzw400d34wt95jlmrxpt	cmawwzzm900ca4wt93qtus3e5	2025-05-09 11:34:19.371	2025-05-20 19:36:18.294
cmawwzzxe00d84wt9gfapftdl	Tumultus amicitia tamquam tabella tyrannus vester cado pauci torqueo cognomen. Culpo aperte cubicularis cavus. Spoliatio centum spero adsuesco eaque. Comes amita toties cur thesaurus depromo thesaurus vito. Addo patruus tres bardus civitas voluptas. Vestigium adimpleo iste ciminatio absens cum repudiandae caveo delibero.	cmawwzzxd00d64wt9mqe1ybj5	cmawwzzm900ca4wt93qtus3e5	2025-05-09 17:45:30.974	2025-05-20 19:36:18.339
cmawwzzyn00db4wt9kb5uftdk	Vinculum harum dolores. Clementia absconditus crur cubicularis votum sublime allatus. Arcus cunabula cunabula totus bis fugit. Conatus vesper tredecim mollitia appello necessitatibus. Adflicto dignissimos ustilo somnus ars cotidie delectus casso sodalitas torrens.	cmawwzzym00d94wt9k2ttvs4u	cmawwzzm900ca4wt93qtus3e5	2025-05-04 08:50:41.666	2025-05-20 19:36:18.383
cmawx007x00e84wt9izb0ag8d	Torrens teres absque non conor ancilla deduco tergum. Cado arguo sublime avaritia uterque patruus basium. Adversus tergo benevolentia sursum suasoria. Convoco debilito cometes talus aspicio crur administratio cattus. Deputo incidunt sub. Molestias angustus adeptio.	cmawx007w00e64wt9kgxvro8y	cmawx006l00dy4wt9j9hdbiaz	2025-05-20 16:12:18.117	2025-05-20 19:36:18.718
cmawx009200eb4wt9qvm792me	Attollo repellat pecto carbo circumvenio ab arcus allatus. Ver conspergo defungo torqueo labore corrumpo xiphias tergo.	cmawx009100e94wt9p5dc9idx	cmawx006l00dy4wt9j9hdbiaz	2025-05-20 17:43:25.424	2025-05-20 19:36:18.759
cmawx00a700ee4wt976lea6pt	Tactus adulescens dens vito eius suffragium collum nobis tui. Triduana amor amet tego averto solio ducimus conatus bestia illum. Est deinde allatus.	cmawx00a600ec4wt9inlayf7u	cmawx006l00dy4wt9j9hdbiaz	2025-05-20 11:47:00.714	2025-05-20 19:36:18.799
cmawx00ba00eh4wt9xme7fo2j	Conscendo copiose basium tempore terror praesentium candidus. Balbus voluptate communis temperantia asper capio volup arceo. Viridis decens voco.	cmawx00ba00ef4wt9hwqze0os	cmawx006l00dy4wt9j9hdbiaz	2025-05-20 18:53:18.537	2025-05-20 19:36:18.839
cmawx00ce00ek4wt90qcynf8q	Atrocitas saepe solio crur sufficio. Desidero tamquam trepide theatrum. Vicissitudo defluo cornu. Velociter textor nulla alter. Talis ipsam tero centum verecundia subseco antea maiores denique. Adicio curso sodalitas veniam socius vorax aliquam abbas terra.	cmawx00cd00ei4wt989viqgew	cmawx006l00dy4wt9j9hdbiaz	2025-05-20 13:07:46.01	2025-05-20 19:36:18.878
cmawx00di00en4wt9ldx63r0s	Adnuo conspergo victoria suscipit. Careo surgo accommodo sono ducimus adeptio quae summopere a. Arbitro tergo truculenter adnuo angustus conservo baiulus nobis varius vesper.	cmawx00dh00el4wt9jwsmh83z	cmawx006l00dy4wt9j9hdbiaz	2025-05-20 19:15:14.011	2025-05-20 19:36:18.918
cmawx00em00eq4wt9xfe6dhal	Cupio tolero quidem synagoga accendo. Tondeo nihil aegrotatio utor caveo tamquam adsuesco trucido taceo aestivus. Utroque claudeo accusamus.	cmawx00el00eo4wt9n6yeeua7	cmawx006l00dy4wt9j9hdbiaz	2025-05-20 14:28:13.174	2025-05-20 19:36:18.958
cmawx00fr00et4wt95k3ss0n1	Ventito tempus usus collum conventus arcus coerceo. Cupiditate accendo sequi. Pecco apud aeternus contra desipio pectus.	cmawx00fq00er4wt9gxcv9k62	cmawx006l00dy4wt9j9hdbiaz	2025-05-20 14:18:19.545	2025-05-20 19:36:18.999
cmawx00q200ft4wt9tvvzjpfo	Utrum conventus aestus. Asperiores torqueo teres occaecati cubitum paulatim tamquam desipio virga delectatio. Desipio solum caecus viscus theca virtus. Optio confero triumphus laborum brevis ciminatio asporto desino vester.	cmawx00q200fr4wt9sc6npexh	cmawx00or00fj4wt9wtc8azz4	2025-01-11 19:03:59.335	2025-05-20 19:36:19.371
cmawx00r700fw4wt9b63rt2t2	Accendo arto amplitudo eum placeat strenuus copia depono quod communis. Nam sordeo ab ipsam. Reprehenderit turpis subito temptatio appono usque tredecim. Soluta volup ratione amplus cras. Depulso conicio soluta somnus denique substantia defetiscor subseco apud arcesso. Ventus deficio vulticulus xiphias ut ulciscor solutio tempore.	cmawx00r600fu4wt9qitkwgx5	cmawx00or00fj4wt9wtc8azz4	2024-07-28 13:56:03.675	2025-05-20 19:36:19.412
cmawx00sb00fz4wt9lrqsncob	Atrox vulnus certus ventus nulla administratio velum vestigium. Vigor delectus angelus bestia audio eos volubilis. Vester arma conor comes vero depraedor delego annus astrum suasoria. Tutis solio mollitia cohibeo tamquam curis caste.	cmawx00sa00fx4wt9p4ejnyu7	cmawx00or00fj4wt9wtc8azz4	2024-09-17 22:32:38.066	2025-05-20 19:36:19.451
cmawx03wz00ph4wt94bpkky12	Viscus cognomen benigne tutis pel. Venio cibo amiculum trado bestia torrens. Timor aeneus summa tactus rerum maiores.	cmawx03wy00pf4wt94qrjgnou	cmawx03sg00p04wt9vpd3ggrw	2025-02-18 15:17:39.526	2025-05-20 19:36:23.507
cmawx00te00g24wt925gigmci	Animus patior ascisco cohibeo conscendo versus vae. Venustas repudiandae viduo ante non appositus coerceo. Caste cubitum volubilis vita tamisium doloremque cubo. Adipiscor appositus spectaculum ago decor admiratio. Delibero vesica traho administratio aetas velut creator custodia beatus.	cmawx00te00g04wt9lkkndr7l	cmawx00or00fj4wt9wtc8azz4	2025-02-10 22:16:59.215	2025-05-20 19:36:19.491
cmawx00ul00g54wt9w9qf05t1	Cilicium tonsor tunc spargo sustineo adopto iure autus sit ea. Facilis laudantium tubineus veritatis amissio.	cmawx00uk00g34wt9p1sorixj	cmawx00or00fj4wt9wtc8azz4	2025-04-12 08:41:52.927	2025-05-20 19:36:19.534
cmawx00wf00g84wt91hyug8ed	Stips tot venustas adulescens demoror. Certus ciminatio quia vulticulus alioqui praesentium comptus supplanto sponte. Abutor defero distinctio. Solutio spero denique sponte claudeo sapiente curvo benevolentia verbera. Usitas odit calculus velociter vomer supra admoneo abbas virgo abstergo.	cmawx00we00g64wt9asgbv2ea	cmawx00or00fj4wt9wtc8azz4	2025-01-19 14:38:43.404	2025-05-20 19:36:19.6
cmawx00xs00gb4wt9ptnygmg9	Adfectus defero color acidus. Summopere ducimus solutio perferendis abstergo tantillus. Amet tergiversatio suscipit supellex. Nisi aspernatur utrimque cruentus commemoro molestiae tamquam.	cmawx00xr00g94wt9muhxlxht	cmawx00or00fj4wt9wtc8azz4	2024-12-09 22:26:41.4	2025-05-20 19:36:19.649
cmawx00zz00ge4wt9e73x9p9p	Deprimo teres chirographum. Bestia tantum vulgo conscendo surculus. Vero vulnus dolorum spero. Adflicto apud conturbo tepesco tredecim tamen tamquam.	cmawx00zx00gc4wt9txem89gr	cmawx00or00fj4wt9wtc8azz4	2025-03-24 19:55:51.206	2025-05-20 19:36:19.727
cmawx011d00gh4wt9rpjz54lx	Denego saepe chirographum suscipio vulgus utilis apostolus. Verto sono confero canto sublime alter pectus repellat constans cornu. Conitor abeo sunt spes corrigo curia appono. Earum deserunt artificiose temptatio vulgaris curriculum uberrime quae. Delego statua texo validus.	cmawx011c00gf4wt9yaukhko5	cmawx00or00fj4wt9wtc8azz4	2024-10-25 19:27:24.542	2025-05-20 19:36:19.778
cmawx014f00gw4wt9qkw0n7lv	Alveus asperiores minus. Viscus creta colo accendo urbs terga alius. Cubitum civitas antepono voluntarius titulus ver. Temperantia denuncio bene nobis cattus desidero ubi tepesco eum. Temptatio cognomen alius vel basium cattus aperte coadunatio. Cumque crustulum sit.	cmawx014e00gu4wt9dlkf0jl8	cmawx012x00gm4wt9bzlnwl97	2025-04-12 19:17:22.785	2025-05-20 19:36:19.887
cmawx015o00gz4wt9rfg9c1uq	Vix alienus vorax comes damno pecco sui. Votum mollitia vix testimonium sursum delectatio textus aperiam thymbra. Tabernus vero umerus similique aperte amplus sollicito somnus adicio. Tergum supra atqui casus clibanus taceo utique carpo tam. Clibanus comptus verto altus uxor qui tolero aureus. Correptius dedico patrocinor deludo crur curia cometes celer decumbo.	cmawx015n00gx4wt90748rtdq	cmawx012x00gm4wt9bzlnwl97	2025-05-20 04:19:38.051	2025-05-20 19:36:19.933
cmawx017a00h24wt93oxmkg9b	Aegre natus animus urbs aliquam uredo conor demonstro. Ambulo angelus delinquo. Agnosco curto benevolentia aeger surculus. Demulceo cogito validus uter pauper.	cmawx017900h04wt95t94jzbu	cmawx012x00gm4wt9bzlnwl97	2025-05-20 15:01:01.44	2025-05-20 19:36:19.991
cmawx018s00h54wt90xise30n	Colo venia cuppedia aurum. Tutis vester perferendis coniecto crapula turpis. Adeptio verumtamen itaque auctus. Decretum exercitationem cohibeo pauper vesica aureus.	cmawx018r00h34wt948uyy5js	cmawx012x00gm4wt9bzlnwl97	2025-02-11 17:14:17.586	2025-05-20 19:36:20.044
cmawx01a400h84wt9xxj401q1	Celer trado administratio vinum deleo. Adstringo impedit vapulus appello absum accusantium sto.	cmawx01a400h64wt9sfovsfxd	cmawx012x00gm4wt9bzlnwl97	2025-03-20 00:59:30.932	2025-05-20 19:36:20.093
cmawx01ba00hb4wt9u9eadhjz	Vallum tonsor adsum magni suppellex corona deludo. Tyrannus damnatio ante.	cmawx01b900h94wt99bpz2usi	cmawx012x00gm4wt9bzlnwl97	2025-03-18 01:03:13.924	2025-05-20 19:36:20.134
cmawx01ck00he4wt9sp4iw8wl	Vestrum esse est pauper. Ducimus tamquam unde tempus utpote tenetur placeat. Stillicidium agnosco adipisci sopor uredo.	cmawx01cj00hc4wt9z1hfo0rs	cmawx012x00gm4wt9bzlnwl97	2025-04-14 15:04:53.41	2025-05-20 19:36:20.18
cmawx01qt00ik4wt9hazy8dza	Cruciamentum tutamen astrum tres statim pauper cito nesciunt clarus curia. Collum acervus calamitas deludo cubicularis delectatio vacuus ter velociter. Pel cui sufficio vulticulus recusandae vulticulus aveho urbanus rem audentia. Trucido utique voveo voco supplanto ager. Tabella creptio officiis.	cmawx01qr00ii4wt95tl50s6n	cmawx01ph00ia4wt9oj70r7v0	2025-05-16 22:47:47.284	2025-05-20 19:36:20.693
cmawx01ry00in4wt946gchkxs	Ab defendo curtus venia adicio statua tepidus. Sono nobis adamo solium quaerat suppono callide. Tergeo cribro vicinus.	cmawx01rx00il4wt99scxm9gf	cmawx01ph00ia4wt9oj70r7v0	2025-05-03 14:59:54.265	2025-05-20 19:36:20.735
cmawx01t500iq4wt93ke84bq5	Tutamen cohaero quo. Vomito tener cunctatio ullus.	cmawx01t400io4wt9t8d89kfq	cmawx01ph00ia4wt9oj70r7v0	2025-04-27 10:05:42.304	2025-05-20 19:36:20.777
cmawx01u800it4wt95gumgu43	Calco patruus cultura derideo. Arx turpis ancilla validus aurum vilitas adicio sed patrocinor vulnero. Vulgo crastinus abutor curvo accommodo tabesco. Desidero umerus aeger doloribus vado occaecati aedificium.	cmawx01u700ir4wt9y5fq1mkb	cmawx01ph00ia4wt9oj70r7v0	2025-03-21 07:40:06.518	2025-05-20 19:36:20.816
cmawx01vc00iw4wt9f9c5q30h	Conforto ea campana verto. Animus arcus viduo cresco textus amet thesaurus conicio in culpa.	cmawx01vb00iu4wt9891it6b7	cmawx01ph00ia4wt9oj70r7v0	2025-02-28 11:50:21.6	2025-05-20 19:36:20.856
cmawx01wf00iz4wt9om24icjs	Defero magni surgo acies facilis corrumpo delibero ter aegre. Convoco sortitus vulgus corrumpo iste vereor id magni sub.	cmawx01wf00ix4wt9531zup6j	cmawx01ph00ia4wt9oj70r7v0	2025-04-04 23:14:06.018	2025-05-20 19:36:20.896
cmawx01xj00j24wt9kop0uu33	Nemo adicio solium nulla debeo debilito velum. Vorax comminor carpo.	cmawx01xi00j04wt9n7chcyoo	cmawx01ph00ia4wt9oj70r7v0	2025-03-27 06:38:22.419	2025-05-20 19:36:20.935
cmawx01yn00j54wt926sgmj4q	Arbor centum triumphus commemoro demum deinde non. Aperiam aequitas adulatio ciminatio agnitio defungo deporto quos vel. Cervus trado coerceo consectetur debilito. Demens ut adfectus conscendo denuo solitudo amaritudo. Taceo tergo stultus.	cmawx01yl00j34wt9cetl2ns8	cmawx01ph00ia4wt9oj70r7v0	2025-04-01 02:02:50.281	2025-05-20 19:36:20.975
cmawx01zq00j84wt974q8mazx	Utrimque ustulo caelestis. Benigne eius vigilo absum sollicito sollicito porro corona. Circumvenio arca sunt terebro virga cohibeo atrox. Aspicio subiungo thymbra denique cunctatio corporis natus.	cmawx01zp00j64wt9tlnmkq1t	cmawx01ph00ia4wt9oj70r7v0	2025-04-03 17:03:27.22	2025-05-20 19:36:21.014
cmawx027l00k14wt95okda9lb	Ventosus cotidie aegrotatio vesica contra conscendo tondeo tabgo. Conturbo vomito advoco pecco. Spero tabesco spoliatio.	cmawx027k00jz4wt9nq09cua6	cmawx026c00js4wt9t45otcch	2025-05-20 14:07:22.347	2025-05-20 19:36:21.297
cmawx02a100ke4wt905iraaoc	Bos vesper consequuntur ipsum demergo valde depereo culpa. Thymbra vobis cerno sub consequatur aegre voco conatus. Aranea amo cribro. Hic suffoco vester cito cubicularis. Theologus deficio clementia cornu. Vado cattus color.	cmawx02a000kc4wt9auc6lspx	cmawx028p00k64wt9u1hmtoh4	2024-08-13 12:18:12.567	2025-05-20 19:36:21.385
cmawx02b400kh4wt9qvenugpz	Laudantium cupio voluptates claudeo animadverto. Ascit subiungo quae sufficio assentator tergum. Charisma pax videlicet vulgivagus tres tenetur suadeo tenuis ventus velociter.	cmawx02b300kf4wt9w5e000xf	cmawx028p00k64wt9u1hmtoh4	2024-08-13 15:24:34.905	2025-05-20 19:36:21.424
cmawx02c700kk4wt9o2mw3ujg	Demulceo textus soleo volaticus. Sint fuga cursim arbustum aegrotatio valde attonbitus minus aeneus. Atrox molestiae tres tego. Beatus architecto adhaero vinum vicissitudo paens tracto vulgaris atque alo. Rem adfectus communis desino vulnero tenus tonsor atavus sollers versus. Peior error cunctatio vicissitudo sortitus recusandae ut coniuratio claro tempore.	cmawx02c600ki4wt9up7ucp0c	cmawx028p00k64wt9u1hmtoh4	2025-02-27 07:25:53.696	2025-05-20 19:36:21.463
cmawx02d900kn4wt9ciu3r72t	Tremo deludo tergiversatio catena iusto textus bestia verbum cimentarius. Toties sto tabella adversus. Dolorem aqua deprimo voluptatem surculus antepono colligo. Stultus nobis cui versus titulus usque vesco compono collum. Tollo tergeo aer conor ustilo.	cmawx02d900kl4wt92393kcrm	cmawx028p00k64wt9u1hmtoh4	2025-04-01 14:06:43.451	2025-05-20 19:36:21.502
cmawx02pl00lu4wt9aejhndem	Ago soluta calamitas. Aegrotatio ultio provident pax balbus qui tametsi complectus. Copia vesco tam vere summisse torrens nulla cogo vulpes. Vulariter cui corporis aureus subito speciosus venia autem rerum vulgo. Cupiditate vito iusto capitulus tametsi catena desparatus accusamus.	cmawx02pk00ls4wt98izmx00g	cmawx02ob00lj4wt9rqrd4trk	2025-05-13 03:56:49.019	2025-05-20 19:36:21.945
cmawx02qp00lx4wt96i3lwu2v	Armarium subvenio appello dapifer magnam termes. Administratio cubo adnuo argumentum depono confugo tutamen tremo. Corrigo decimus illum creber cognomen. Doloribus thymbra copia substantia cogito. Suggero volaticus vulgus absorbeo.	cmawx02qo00lv4wt903hb8d1a	cmawx02ob00lj4wt9rqrd4trk	2025-05-18 19:09:03.023	2025-05-20 19:36:21.985
cmawx02rr00m04wt98pqdnujn	Constans ciminatio cunae praesentium alii. Paulatim conculco solum verbera. A aeger somnus tumultus tendo cumque delectatio conforto arcus. Verecundia adversus tunc undique averto uberrime deludo advoco acidus ducimus. Veniam cunae consuasor fugiat.	cmawx02rq00ly4wt93i3lx3br	cmawx02ob00lj4wt9rqrd4trk	2025-05-17 20:19:19.172	2025-05-20 19:36:22.023
cmawx02st00m34wt94b3yguao	Ulterius aer audio tego textus ventito. Tepidus umquam despecto ipsa victus turbo valetudo thesaurus. Corporis adsidue arbitro catena labore cunae copiose minus. Tergiversatio despecto adduco. Cunabula cui celo aetas cometes tertius.	cmawx02ss00m14wt9bbk5ps3s	cmawx02ob00lj4wt9rqrd4trk	2025-05-19 07:21:34.981	2025-05-20 19:36:22.062
cmawx02tx00m64wt991d2hpkz	Vacuus velociter fuga ars assentator comprehendo tenus. Convoco conservo tabella laborum claudeo thymbra ratione tabella tersus. Advoco vicinus desipio concedo cumque sustineo summisse. Corrigo auctor valens thymum vivo versus adicio. Vicissitudo beatus capitulus tonsor votum eum absum.	cmawx02tw00m44wt9vwy611ca	cmawx02ob00lj4wt9rqrd4trk	2025-05-14 17:26:54.746	2025-05-20 19:36:22.101
cmawx02v000m94wt9773nz7w6	Ubi maxime cinis atavus vito amplitudo crux territo. Clam defleo necessitatibus. Abeo tremo amiculum tam adsuesco celer textor. Vulgus cado ventus.	cmawx02uz00m74wt9xrlzakgz	cmawx02ob00lj4wt9rqrd4trk	2025-05-19 10:59:37.603	2025-05-20 19:36:22.14
cmawx02w500mc4wt9ujmurfcg	Spiculum synagoga clam accusantium comminor demitto constans delectatio degenero una. Aut audacia undique tantillus sperno unde vereor vulpes annus correptius. Tunc caput absens admoneo creo ventosus tondeo trucido copiose aestus. Tempora corona undique. Ab bos ambulo. Ex arx spectaculum beneficium strues aspernatur defessus stillicidium dedecor.	cmawx02w400ma4wt91j6z6t81	cmawx02ob00lj4wt9rqrd4trk	2025-05-19 17:36:00.529	2025-05-20 19:36:22.181
cmawx02x800mf4wt90tcudtkz	Suffragium colo civis dicta. Denuo vesco termes carpo deprecator conservo quaerat. Absconditus capto constans concido. Clibanus tergo sub deputo cohaero nisi sophismata. Coma cicuta iure adaugeo patior. Usitas ut temptatio.	cmawx02x800md4wt9les8cr94	cmawx02ob00lj4wt9rqrd4trk	2025-05-12 08:08:35.463	2025-05-20 19:36:22.221
cmawx02yb00mi4wt999e98gjo	Vinco verus abundans videlicet desidero esse. Vitium verto substantia dolorem.	cmawx02yb00mg4wt98c6j1ae5	cmawx02ob00lj4wt9rqrd4trk	2025-05-19 23:47:17.437	2025-05-20 19:36:22.26
cmawx03av00nm4wt95hl1yqa3	Pauper abstergo culpa centum. Sortitus summopere uberrime recusandae comptus ventus acerbitas. Sopor ullus curia claustrum solvo averto volubilis taedium deprimo. Cariosus labore veritatis umbra aureus solus adipiscor teres bellum.	cmawx03av00nk4wt9l36xdtfk	cmawx039n00ne4wt96w5xleul	2025-05-17 23:53:20.966	2025-05-20 19:36:22.712
cmawx03bz00np4wt9du4jn2nj	Torrens certe turpis sum tunc conturbo teneo vito vox. Reprehenderit dignissimos thymum degusto condico cavus.	cmawx03by00nn4wt9lxvdjad4	cmawx039n00ne4wt96w5xleul	2025-05-03 09:12:47.906	2025-05-20 19:36:22.751
cmawx03d200ns4wt9wxejhn2j	Solitudo voro stillicidium corrigo pecco stultus tego verus viriliter placeat. Corrupti traho ad vestrum voluntarius undique. Bene demens corrumpo advoco volutabrum sequi sustineo. Inventore tenuis deficio totus curia. Denique voro usus defendo vindico.	cmawx03d100nq4wt9nkexizxm	cmawx039n00ne4wt96w5xleul	2025-05-02 08:27:10.105	2025-05-20 19:36:22.79
cmawx03e400nv4wt9fqlmum3e	Ventosus repellat alienus combibo terreo ars absque tardus celo. Arcus curso tergeo sum ullus abstergo video atavus. Urbs studio agnitio villa. Celer virgo inflammatio uredo architecto angulus ventito. Tutamen pax dignissimos cogito clementia minima pel.	cmawx03e300nt4wt9fekzo88v	cmawx039n00ne4wt96w5xleul	2025-05-05 22:02:00.364	2025-05-20 19:36:22.829
cmawx03f800ny4wt9b5ui1158	Aequus thema impedit desolo tamquam. Timidus facere virgo aestus attonbitus illum adipiscor odit velut. Nemo calcar coma officia auctus agnitio sui. Censura peccatus vobis stabilis. Qui cernuus tepesco suggero vespillo tempore truculenter xiphias asper.	cmawx03f700nw4wt9ckw0430u	cmawx039n00ne4wt96w5xleul	2025-05-13 17:49:03.842	2025-05-20 19:36:22.868
cmawx03gb00o14wt9k4j96wvp	Teneo synagoga venia avarus avarus clarus audentia velum arcesso substantia. Canto volutabrum porro suadeo decet tempus velit.	cmawx03ga00nz4wt94g5jq6qx	cmawx039n00ne4wt96w5xleul	2025-05-11 20:04:55.501	2025-05-20 19:36:22.908
cmawx03he00o44wt9fex9uhtf	Volup copiose aer curvo conicio. Coadunatio suasoria vinco comburo quibusdam cometes thesaurus tersus. Cumque veritas sunt aduro. Amicitia timidus cognomen crapula ago. Auditor consequuntur altus antea patrocinor.	cmawx03hd00o24wt94ct694xa	cmawx039n00ne4wt96w5xleul	2025-05-14 11:24:49.996	2025-05-20 19:36:22.946
cmawx03in00o74wt9jtmjtjzg	Mollitia decor curriculum taedium cribro. Vereor beatae textor adamo dedico vester delibero caelum praesentium.	cmawx03im00o54wt9x5ylcbnz	cmawx039n00ne4wt96w5xleul	2025-05-04 21:16:14.343	2025-05-20 19:36:22.991
cmawx03jq00oa4wt9ica3tvvz	Nobis artificiose cunctatio saepe decens campana uberrime adulescens ratione itaque. Eos arceo tonsor vester arx talio. Congregatio ait corporis truculenter.	cmawx03jp00o84wt95jo248a9	cmawx039n00ne4wt96w5xleul	2025-05-10 17:25:45.765	2025-05-20 19:36:23.03
cmawx03ks00od4wt98kxx1i94	Admiratio surgo cupressus vinco aetas cogo. Tristis crebro despecto coniecto ducimus calcar delinquo. Censura amplus subvenio asperiores quaerat tabgo.	cmawx03kr00ob4wt9viy5lc0j	cmawx039n00ne4wt96w5xleul	2025-05-10 14:34:29.804	2025-05-20 19:36:23.069
cmawx03to00p84wt9ekxik9if	Aegre altus talis sumo denique tres. Odit demens ars ventito tero vindico teneo voco. Demulceo summa impedit una torqueo abduco. Suadeo cubitum ascisco. Clarus laboriosam acies carcer contra desipio clarus.	cmawx03to00p64wt97lkucc3v	cmawx03sg00p04wt9vpd3ggrw	2025-04-19 06:13:22.999	2025-05-20 19:36:23.389
cmawx03ut00pb4wt9lgrefpks	Placeat saepe ventosus angelus pectus alo ab urbs. Ago vicissitudo tergo ver sequi tantum vita neque. Deserunt arca eligendi tenus candidus eaque vigor. Earum officiis curtus considero tantum textilis autem. Terminatio tenus tabgo bos architecto vetus taedium.	cmawx03us00p94wt9kgus02sl	cmawx03sg00p04wt9vpd3ggrw	2025-04-29 14:42:46.736	2025-05-20 19:36:23.43
cmawx03vw00pe4wt90vifob4f	Vita recusandae adfero victoria. Molestiae terga villa ulciscor curtus iusto spoliatio tactus. Sordeo usque teres cetera statua teneo tam. Cado aggredior temperantia tripudio tardus varietas illum triduana sol. Ambitus cicuta triumphus angulus sortitus.	cmawx03vv00pc4wt9gqzcgsbs	cmawx03sg00p04wt9vpd3ggrw	2025-04-18 03:38:39.044	2025-05-20 19:36:23.469
cmawx046s00qe4wt9j2sxaq40	Aeneus canto cenaculum tergiversatio eveniet beneficium tenus credo. Synagoga thema solio curis vicissitudo.	cmawx046r00qc4wt9rrth6gz2	cmawx045k00q74wt9igaq26lw	2025-04-09 11:32:42.382	2025-05-20 19:36:23.861
cmawx047w00qh4wt9zesza2rd	Taceo adimpleo consequuntur totidem culpo error rem sodalitas sit. Tandem cur ademptio adeptio beatae. Confido desidero acer amiculum deludo beneficium. Nemo traho cimentarius virga. Auctor callide deprimo sollicito patrocinor vir adaugeo consuasor usque. Velociter ultio tantillus videlicet comprehendo cena delicate collum sum repellat.	cmawx047w00qf4wt9u70jfqoj	cmawx045k00q74wt9igaq26lw	2025-04-07 18:38:35.072	2025-05-20 19:36:23.901
cmawx049400qk4wt9tarti9jl	Beatus vesco clamo verto. Angelus virgo adhuc campana viridis repudiandae atavus ascit adduco.	cmawx049300qi4wt9230ekkyh	cmawx045k00q74wt9igaq26lw	2025-04-26 11:12:32.198	2025-05-20 19:36:23.944
cmawx04a900qn4wt96ej8gy7v	Aequus absque nostrum celebrer sub antepono. Ademptio viridis deporto tabernus audax in amita argentum natus tersus. Denique tubineus amet numquam sui ulterius nihil. Desparatus id aurum demoror. Amita adipiscor tergum amplitudo angulus crustulum error dolor cilicium.	cmawx04a900ql4wt9ga4cah7w	cmawx045k00q74wt9igaq26lw	2025-04-02 01:05:58.682	2025-05-20 19:36:23.986
cmawx04bi00qq4wt9ankbulns	Saepe tricesimus vix tamisium canis. Carpo coniuratio desparatus allatus vilicus suscipit terreo fuga accusator tumultus. Vulgo adulescens convoco alius coaegresco quidem. Soleo unus alioqui fugit reiciendis altus quaerat. Autem pel animadverto. Adfero cursim quod atque totus.	cmawx04bh00qo4wt9t5df4jyw	cmawx045k00q74wt9igaq26lw	2025-04-04 01:11:47.198	2025-05-20 19:36:24.03
cmawx04cl00qt4wt9hssh7xrw	Vomer maxime celer vinum dolor sollicito. Usus admitto admoveo arguo. Autus amoveo pauper contra curatio vero blanditiis natus ager defendo. Cresco dedico caelum canis demum voluptatem video dolorem architecto cedo.	cmawx04ck00qr4wt9iqqcu8xq	cmawx045k00q74wt9igaq26lw	2025-05-03 16:34:21.722	2025-05-20 19:36:24.07
cmawx04do00qw4wt9bvwm1w61	Complectus veritas consequuntur. Universe alienus aliquid temptatio. Thorax quod amiculum quidem coniuratio custodia.	cmawx04do00qu4wt95ooq595w	cmawx045k00q74wt9igaq26lw	2025-04-03 23:24:35.109	2025-05-20 19:36:24.109
cmawx04et00qz4wt9suequ8c5	Velociter vito strues antiquus nesciunt. Venio caelestis fugiat caste suspendo antiquus thymbra. Acies occaecati quo quaerat quisquam canto porro cur vestrum.	cmawx04et00qx4wt92bhum7k1	cmawx045k00q74wt9igaq26lw	2025-05-14 03:29:04.703	2025-05-20 19:36:24.15
cmawx04fx00r24wt9lstrtbks	Virga templum depraedor. Doloribus tempus calcar volva omnis sumo defendo defero adiuvo. Uredo venustas brevis. Truculenter autus audax deporto carpo textus tamdiu sui canto comminor. Administratio sponte temptatio celebrer voluntarius aetas aestas adeo surgo.	cmawx04fw00r04wt9fg9jh4jl	cmawx045k00q74wt9igaq26lw	2025-05-04 07:13:50.833	2025-05-20 19:36:24.189
cmawx04gz00r54wt9mkpf0gry	Taedium nemo sto patior subvenio. Vociferor approbo aegre adfectus torqueo absque vito conventus. Earum venio summisse delectus.	cmawx04gy00r34wt9b8nnqaf4	cmawx045k00q74wt9igaq26lw	2025-05-06 23:10:54.569	2025-05-20 19:36:24.227
cmawx04q400ry4wt9fam7m7ss	Charisma desidero alioqui officiis tabella vetus vehemens officiis aliqua vitae. Deserunt vesper caste sumptus vorax natus. Solio vorax comparo. Denuo demitto deduco thesis amoveo.	cmawx04q300rw4wt94d5nk6kx	cmawx04ot00rs4wt93cg994tl	2025-05-14 10:47:18.679	2025-05-20 19:36:24.556
cmawx04r900s14wt9dgcc4sv6	Conicio arma delectatio. Argumentum defaeco maxime peccatus calamitas decet sumptus desino civis cohaero. Vicinus eius ceno tabesco curriculum argumentum certe. Deleo depromo victus artificiose sperno. Vilicus amoveo vesco adeo.	cmawx04r800rz4wt9bdcyce8n	cmawx04ot00rs4wt93cg994tl	2025-04-24 03:40:09.085	2025-05-20 19:36:24.597
cmawx04sc00s44wt9fiw802my	Admoveo aeternus arma amor. Sursum officia verbum certe. Copia odit vesco caelum creo dapifer verumtamen substantia at argentum. Calculus magnam bene catena terror consequuntur abscido ipsum.	cmawx04sb00s24wt9p13gxw6o	cmawx04ot00rs4wt93cg994tl	2025-05-11 15:30:24.292	2025-05-20 19:36:24.636
cmawx04te00s74wt9yjg10k6p	Timor creptio aro teneo subseco succedo tui curia. Denego textilis creber video tracto thermae tendo.	cmawx04te00s54wt9n42xbve9	cmawx04ot00rs4wt93cg994tl	2025-05-13 06:00:57.742	2025-05-20 19:36:24.675
cmawx04uh00sa4wt9me92ndz1	Decet adimpleo quaerat temeritas. Volaticus molestias thorax abstergo ratione confido bonus vesper virga sollers. Averto admiratio adulescens virtus tondeo velut. Acceptus curtus tamen carbo circumvenio vilitas animi. Votum vociferor brevis tendo conculco adnuo doloremque amitto vinculum thorax. Annus aiunt universe advoco conatus adhaero talio sui.	cmawx04ug00s84wt9ku1xeq3c	cmawx04ot00rs4wt93cg994tl	2025-05-15 22:27:05.335	2025-05-20 19:36:24.714
cmawx04vk00sd4wt9stzmcrf2	Cura doloremque vergo aeneus. Coadunatio dedecor decipio. Illum laborum sursum comis.	cmawx04vj00sb4wt93cvoe750	cmawx04ot00rs4wt93cg994tl	2025-03-19 15:55:33.53	2025-05-20 19:36:24.753
cmawx04wm00sg4wt94qj4t7w1	Acidus vado claustrum cornu brevis adeptio sub. Bestia vergo officiis delectus nemo adsidue commodo pectus. Tabula inflammatio decimus depono vespillo cervus super.	cmawx04wm00se4wt9rrgob2mv	cmawx04ot00rs4wt93cg994tl	2025-04-27 10:44:57.643	2025-05-20 19:36:24.791
cmawx051400t04wt9wbn894rc	Cervus patria deficio vulgo coniecto currus tergiversatio thalassinus verbera. Nostrum aestus cetera casso curtus audentia patrocinor vorago possimus. Trepide cunctatio deludo conitor colo angulus. Patruus aperiam vitae accommodo arca vergo. Dolorem valde cerno sono.	cmawx051300sy4wt95ji90a35	cmawx04zu00sr4wt90ejbktsa	2025-04-13 15:36:20.048	2025-05-20 19:36:24.952
cmawx052700t34wt9en47pmo1	Umquam cauda amaritudo cum consequatur congregatio. Dicta acer solum animi sono cotidie terga thorax. Comitatus coma timor possimus supra. Adduco depono amita nobis canto. Tendo denique volup cognomen. Atrocitas derideo pax.	cmawx052700t14wt96bg857ib	cmawx04zu00sr4wt90ejbktsa	2025-05-04 12:26:39.224	2025-05-20 19:36:24.992
cmawx053a00t64wt9kqv7xuvp	Vae eius iste nisi patria autem summisse sol circumvenio suppellex. Defessus universe adfero tenetur claustrum unde varius corporis. Teneo bos pariatur. Tolero necessitatibus comptus civis. Admoneo confido complectus beatae arcus spiculum laudantium vestigium adhaero. Ultra canonicus cubo itaque tendo vespillo enim benigne vespillo.	cmawx053900t44wt9yqo6qob7	cmawx04zu00sr4wt90ejbktsa	2025-05-01 17:30:05.44	2025-05-20 19:36:25.031
cmawx054e00t94wt94n53l3wz	Unde accusamus comprehendo avaritia vestigium. Vester infit utroque adfero corrigo occaecati cernuus nihil villa.	cmawx054d00t74wt9uu16oc8g	cmawx04zu00sr4wt90ejbktsa	2025-04-28 08:56:59.719	2025-05-20 19:36:25.07
cmawx055g00tc4wt9v67yg7mn	Tres somnus iste amplitudo truculenter appello infit. Tempore tergiversatio aduro suasoria bis consequuntur verto. Valens minima verbera aedificium peior canis vinitor quis curso temptatio. Suadeo ulciscor animadverto utrimque adipiscor desparatus teneo cultura. Cerno defessus dedecor cimentarius somniculosus appositus repellat totam uberrime attollo.	cmawx055g00ta4wt9s8eacatg	cmawx04zu00sr4wt90ejbktsa	2025-02-28 20:28:28.244	2025-05-20 19:36:25.109
cmawx056j00tf4wt9mea8s9qs	Solutio utroque theatrum. Acies denique coma abscido ducimus carmen sopor deludo socius. Cito ea sub correptius copia supra tabgo tenus valens. Asperiores terga uter cognomen ullam deinde confero adinventitias.	cmawx056j00td4wt9lkmt4h12	cmawx04zu00sr4wt90ejbktsa	2025-03-17 17:11:39.911	2025-05-20 19:36:25.148
cmawx06i500xs4wt9k45wjtu5	Surculus annus callide. Vere desipio qui cernuus non somnus vinum turbo. Balbus vaco thermae supellex demoror alter usus sunt neque.	cmawx06i400xq4wt9lmjcotce	cmawx06ah00x74wt9ydhtje39	2025-05-13 22:55:02.103	2025-05-20 19:36:26.862
cmawx059z00tx4wt9l8zuho8e	Auctor deripio tempore curso aegre comburo aestas. Defaeco tabula tollo utique alii admoneo cometes xiphias constans libero. Vaco totus eveniet vinitor cultura defendo tredecim iste. Arca conatus quibusdam corrupti argumentum cauda totus. Aranea deleo arto blandior celo officia argentum veniam. Apto tergum animus avarus.	cmawx059y00tv4wt9c2ds6rfh	cmawx058p00tn4wt980t6tgzf	2025-03-14 04:23:00.949	2025-05-20 19:36:25.271
cmawx05b200u04wt9r4pv7fgt	Veniam aeneus tergo correptius atque beatae. Depereo denuncio teneo acerbitas. Aegrotatio tres adipiscor reprehenderit abbas. Unde decens summopere stipes textor facere balbus. Curtus surgo tricesimus aestivus provident deinde patria acidus fugiat similique. Quos voluptas curo clam stella atqui.	cmawx05b100ty4wt9tqvj836y	cmawx058p00tn4wt980t6tgzf	2025-02-28 10:49:16.61	2025-05-20 19:36:25.311
cmawx05de00ue4wt95oydk94g	Perferendis arguo soluta constans pax. Commemoro votum dedico verbera voluptatem acerbitas itaque autem tripudio considero. Officiis carcer iusto appello. Itaque distinctio tactus crinis aveho caelestis theca ventito vulgaris tricesimus.	cmawx05dd00uc4wt9t6553z53	cmawx05c600u54wt9mg02c50q	2025-02-24 07:35:51.564	2025-05-20 19:36:25.394
cmawx05ej00uh4wt90q0y60ct	Laboriosam vetus absens. Amissio totam deduco.	cmawx05ei00uf4wt9u3ordop4	cmawx05c600u54wt9mg02c50q	2025-04-18 20:08:09.322	2025-05-20 19:36:25.436
cmawx05fo00uk4wt9gs1i75yy	Explicabo conduco cogito recusandae cilicium solum. Tenuis suffragium cursim tardus currus aedificium.	cmawx05fn00ui4wt9ntdx5003	cmawx05c600u54wt9mg02c50q	2024-12-18 12:14:47.82	2025-05-20 19:36:25.476
cmawx05gq00un4wt9q6lswanj	Velut basium textilis. Tutis sub cohaero. Solium caelum omnis turba statua theatrum totam canto. Vinum vester cariosus deinde. Debeo tabgo combibo. Acsi combibo tenax vinculum desparatus thema volup.	cmawx05gp00ul4wt95uyqv9bd	cmawx05c600u54wt9mg02c50q	2025-04-05 18:19:30.847	2025-05-20 19:36:25.514
cmawx05ht00uq4wt9c16f9p8q	Aeternus vero vulgus copiose eos admiratio cohors vilicus repudiandae tempus. Certus combibo defetiscor dignissimos acies stella.	cmawx05ht00uo4wt9lm78lgf8	cmawx05c600u54wt9mg02c50q	2025-05-10 08:43:23.592	2025-05-20 19:36:25.554
cmawx05iw00ut4wt952q0i4f9	Acquiro curvo ultio aestivus custodia currus. Earum solio uter sponte strues. Dicta tempore eos victus.	cmawx05iv00ur4wt9jde3cpw1	cmawx05c600u54wt9mg02c50q	2025-01-09 20:16:52.675	2025-05-20 19:36:25.593
cmawx05jy00uw4wt9i5o66j1z	Eligendi tenetur volup mollitia. Deludo depereo allatus. Conduco aqua voluptatum abeo.	cmawx05jx00uu4wt9167pjs66	cmawx05c600u54wt9mg02c50q	2025-05-14 11:02:15.786	2025-05-20 19:36:25.631
cmawx05l100uz4wt9r8jld5qp	Taceo acsi absum tantum vitae corroboro considero. Timidus cenaculum conor uxor cruciamentum. Id victus argumentum capitulus thalassinus nam odio cruciamentum. Tribuo quae crux sonitus ascisco.	cmawx05l000ux4wt9jggtoajj	cmawx05c600u54wt9mg02c50q	2025-03-19 22:55:52.734	2025-05-20 19:36:25.669
cmawx05wc00w24wt9t381oeo4	Caterva acies cur dolore vomito vero vindico quibusdam cultura tener. Nobis pax conturbo defungo. Peior vitiosus colligo. Adimpleo allatus speculum cicuta velum verbera ager rerum.	cmawx05wb00w04wt9vpzkudy8	cmawx05v000vs4wt9i59jkfuz	2025-05-16 01:59:50.218	2025-05-20 19:36:26.077
cmawx05xg00w54wt9ov4ytkw3	Cauda spoliatio agnosco. Rerum correptius cilicium antiquus. Voluptatum conspergo videlicet tantum attollo statim crustulum accusamus ante studio. Timidus officia traho vel utroque adduco. Vitium abstergo speculum sophismata tabesco. Vix sordeo ullus curis conitor tener sufficio cui patria verus.	cmawx05xf00w34wt9rhyxt643	cmawx05v000vs4wt9i59jkfuz	2025-05-19 17:54:07.041	2025-05-20 19:36:26.117
cmawx05yk00w84wt96kwym63o	Attero sulum venia. Cotidie vesco fugit sol. Cedo condico damno uredo trucido conatus vulticulus atrox. Cribro sonitus cur tertius textilis cunctatio cornu umerus tabernus dicta.	cmawx05yj00w64wt932fcmtng	cmawx05v000vs4wt9i59jkfuz	2025-05-16 11:45:06.056	2025-05-20 19:36:26.156
cmawx05zn00wb4wt946co1hiv	Summisse vomito tempora cursim textilis arcus bellum defetiscor eius conor. Solio currus aequitas defungo viriliter vergo clarus. Surgo auctus valde bardus deleo sophismata incidunt. Vigor attonbitus acceptus aranea.	cmawx05zm00w94wt925die3zs	cmawx05v000vs4wt9i59jkfuz	2025-05-14 13:05:11.249	2025-05-20 19:36:26.195
cmawx060q00we4wt9fpd2i1r3	Debilito amor bellum. Nihil coma crudelis aurum celer vomito templum cultura turbo. Tabernus nam doloribus soluta bellicus peior tametsi. Usitas coaegresco traho voluptatum tremo vestigium aveho creo. Nihil curvo absque quae ver patrocinor harum ventus.	cmawx060p00wc4wt9oll0dsxm	cmawx05v000vs4wt9i59jkfuz	2025-05-16 15:04:26.24	2025-05-20 19:36:26.234
cmawx061t00wh4wt93cfql3vq	Constans curis animadverto congregatio vorago vulgus velum totam facilis stabilis. Tergeo valens tutis cribro anser autem centum tersus.	cmawx061s00wf4wt98mrzxula	cmawx05v000vs4wt9i59jkfuz	2025-05-15 23:46:38.556	2025-05-20 19:36:26.273
cmawx062w00wk4wt9faj8pcm8	Victoria casso angustus vita strenuus conservo. Decet denuo tribuo absque carcer aptus bonus comis. Cogo trans cedo alioqui dens culpa tripudio. Vulgaris thymum contra repellendus terra. Constans cinis barba coniuratio astrum sustineo alii tendo theca curiositas.	cmawx062v00wi4wt9ewngfxpb	cmawx05v000vs4wt9i59jkfuz	2025-05-16 21:12:44.691	2025-05-20 19:36:26.313
cmawx063z00wn4wt90zjctgc4	Umerus careo quia clibanus alius. Supplanto demo coruscus apud copiose ars substantia. Decens tergiversatio tam conicio bellicus subiungo studio. Totidem crudelis vae tyrannus asper calculus auctor acerbitas summisse tripudio. Cruciamentum eligendi trucido degenero sui talus cruciamentum colligo.	cmawx063y00wl4wt9jvyy7q13	cmawx05v000vs4wt9i59jkfuz	2025-05-15 06:22:57.804	2025-05-20 19:36:26.351
cmawx065100wq4wt9smu29cqz	Cotidie cilicium aliquam ut praesentium. Tergeo adipiscor defessus vesica patior celo.	cmawx065000wo4wt9s5xeorcn	cmawx05v000vs4wt9i59jkfuz	2025-05-18 19:31:39.671	2025-05-20 19:36:26.389
cmawx066400wt4wt9h3kod7v3	Amo acidus attonbitus atqui credo arx. Utroque a vulgo universe. Aptus adulescens ab speculum. Asporto capillus arbor summisse inventore aurum demum volo substantia terror. Caritas totus delego. Blanditiis alienus temperantia pecco voluptas clarus doloribus tumultus.	cmawx066300wr4wt9ap2wxmx2	cmawx05v000vs4wt9i59jkfuz	2025-05-15 22:42:05.11	2025-05-20 19:36:26.428
cmawx06c600xg4wt9a3zvlu52	Ultio peccatus perspiciatis cultellus aliqua amaritudo depraedor adstringo esse abeo. Aequitas vere suppellex valeo vaco amaritudo truculenter defleo. Modi ulciscor victoria inventore desidero cenaculum bonus iusto. Pecus a at facilis decor. Cattus speciosus error candidus appositus depraedor laudantium ver conitor desino.	cmawx06c500xe4wt9uuxtzqli	cmawx06ah00x74wt9ydhtje39	2025-05-12 03:36:08.658	2025-05-20 19:36:26.646
cmawx06dw00xj4wt9wxb49ayd	Ducimus tantum vicinus fuga vallum votum aggero deorsum. Thesaurus atque vigilo dicta vulgivagus curto auditor acies substantia timidus. Pariatur decretum architecto studio veritas laborum torqueo tumultus. Quasi tracto tamen.	cmawx06dv00xh4wt9y76wq40g	cmawx06ah00x74wt9ydhtje39	2025-05-01 18:46:36.57	2025-05-20 19:36:26.708
cmawx06fg00xm4wt9klruq87b	Animadverto suppono ea accommodo torrens angulus minus collum. Stabilis aequitas perferendis sperno vestigium uter depopulo. Surculus curia aeternus viriliter voluptas molestiae. Itaque voluptatum vestigium callide. Tempus sponte cibus beatae suus una tutamen supellex canis valde.	cmawx06ff00xk4wt9wd7r8a4e	cmawx06ah00x74wt9ydhtje39	2025-05-12 03:38:51.725	2025-05-20 19:36:26.764
cmawx06h200xp4wt9u28wrrlz	Conduco adopto acidus. Benevolentia dicta aeternus. Adficio cras nostrum careo.	cmawx06h100xn4wt9qfmjmd5m	cmawx06ah00x74wt9ydhtje39	2025-05-10 10:13:34.279	2025-05-20 19:36:26.822
cmawx06j900xv4wt9cxzfqb9y	Et despecto tandem capto sui copiose. Confugo adamo ultio comis ago. Conforto vae comitatus quod tempora curriculum expedita. Vicissitudo vindico careo aestus vulticulus tum derelinquo fugiat sumo apud.	cmawx06j800xt4wt9scae23p6	cmawx06ah00x74wt9ydhtje39	2025-05-19 08:35:52.387	2025-05-20 19:36:26.901
cmawx06kb00xy4wt9buonuf67	Aegrotatio damnatio defero. Apostolus tendo collum capitulus turpis quo non laboriosam colo. Vado cubo iure textus stultus valeo contra laborum. Agnitio calco accusantium. Vicinus sulum cubitum.	cmawx06ka00xw4wt9vm5iq68v	cmawx06ah00x74wt9ydhtje39	2025-05-18 07:25:21.521	2025-05-20 19:36:26.94
cmawx06xd00z24wt9bd4rn5lb	Spoliatio talis decumbo omnis antea. Tactus vilitas cura atavus causa adsum tenetur varietas cruciamentum. Absum vulgivagus conturbo voluptatibus cubitum conscendo conicio colo audentia molestias. Vicissitudo crur catena cilicium validus. Cariosus claustrum aptus cibus coadunatio corrupti. Agnosco suspendo fugiat cervus adsum laudantium celer numquam.	cmawx06xc00z04wt9gyfr2rsn	cmawx06vz00yu4wt9bc7s0gml	2025-03-25 13:45:53.039	2025-05-20 19:36:27.41
cmawx06yi00z54wt9p4boqibm	Statua conduco volaticus tollo sustineo dicta. Necessitatibus accedo unde necessitatibus via absorbeo tunc accusator stella volup.	cmawx06yh00z34wt974zrlh1k	cmawx06vz00yu4wt9bc7s0gml	2025-04-27 13:50:37.016	2025-05-20 19:36:27.451
cmawx06zo00z84wt9fnxwt377	Mollitia tenax demulceo cedo caste soluta adimpleo supellex tempus valde. Alter amor nobis subvenio templum.	cmawx06zo00z64wt9ycnj74be	cmawx06vz00yu4wt9bc7s0gml	2025-04-10 11:25:16.902	2025-05-20 19:36:27.493
cmawx070t00zb4wt952f0u9wf	Stillicidium consuasor appello iusto textus ustilo studio tendo ver. Auctor video absum vinculum triumphus cura defaeco thema aegre temptatio.	cmawx070s00z94wt9sc9bzaeq	cmawx06vz00yu4wt9bc7s0gml	2025-04-30 04:02:15.167	2025-05-20 19:36:27.533
cmawx076i00zy4wt96gujsahn	Centum uredo corrumpo vulgo cervus via adiuvo incidunt. Surgo solitudo acceptus. Cilicium vorax auxilium coma totidem stabilis aperio sublime cattus eaque.	cmawx076g00zw4wt9sb8jcc20	cmawx075500zp4wt9vhrtayh9	2025-03-17 08:22:29.019	2025-05-20 19:36:27.739
cmawx077m01014wt9z9a4jvwp	Coerceo bis caput arcesso aptus strenuus abstergo. Ambulo cito audax confero turbo. Voluntarius defaeco timidus antea caries animadverto.	cmawx077l00zz4wt93qnn2bdv	cmawx075500zp4wt9vhrtayh9	2025-02-12 15:09:16.594	2025-05-20 19:36:27.779
cmawx078p01044wt9zsynzz4e	Eos combibo allatus verbum torrens neque sto. Decerno absum decerno alioqui aequus.	cmawx078o01024wt9oyqefots	cmawx075500zp4wt9vhrtayh9	2025-04-12 23:13:59.369	2025-05-20 19:36:27.818
cmawx079t01074wt9l689yh08	Capitulus agnosco delectus suscipit. Ter sublime solitudo. Currus commemoro vigilo cubicularis vir aetas tepesco antiquus pectus. Concido spoliatio trepide advoco adiuvo.	cmawx079s01054wt9xl08hp8d	cmawx075500zp4wt9vhrtayh9	2025-03-27 11:55:18.555	2025-05-20 19:36:27.857
cmawx07ay010a4wt9oo53zbey	Subito absum officia decipio appono suscipit quod acquiro arto iure. Vulticulus astrum consequatur thalassinus. Aer tubineus deludo curso sui corroboro conculco vinum. Territo quasi vel cursus sint. Ulciscor vaco deleo.	cmawx07ax01084wt98gbq4p2m	cmawx075500zp4wt9vhrtayh9	2025-05-16 18:20:18.58	2025-05-20 19:36:27.898
cmawx07cd010d4wt9o46wful7	Cohaero ambulo paulatim odit. Occaecati ad acer vilicus. Non color stips arbustum. Tot eligendi bonus suasoria et quibusdam defleo testimonium. Eveniet absque turpis. Tenax consuasor voluptatibus cubicularis audax natus pariatur mollitia absorbeo.	cmawx07cc010b4wt9l62qtltp	cmawx075500zp4wt9vhrtayh9	2025-03-14 01:26:50.304	2025-05-20 19:36:27.949
cmawx07dh010g4wt9ou2hvexj	Argentum venio civitas. Acervus desipio tribuo blandior admitto tollo dolorem. Canis statua repudiandae ulterius. Cavus amet curtus tum corpus uredo laudantium cunctatio.	cmawx07dg010e4wt9o77mnqfc	cmawx075500zp4wt9vhrtayh9	2025-04-16 04:34:35.865	2025-05-20 19:36:27.989
cmawx07ek010j4wt9k6oryxd5	Apto amita supplanto quod. Acidus causa viridis usitas denique dolor contabesco. Cupiditas harum illum comes coniecto ocer.	cmawx07ek010h4wt97f0kpzdr	cmawx075500zp4wt9vhrtayh9	2025-05-15 13:36:00.637	2025-05-20 19:36:28.029
cmawx07fn010m4wt97om6tas5	Tres compono cena bos aedificium vir ait accommodo aduro aduro. Decet aggero vesco delibero corroboro taceo sequi delicate. Valde temporibus tyrannus alioqui viridis deficio viduo cursim. Taceo carcer sulum tricesimus vestrum cito id versus.	cmawx07fm010k4wt9rkutqy2c	cmawx075500zp4wt9vhrtayh9	2025-02-10 01:58:25.279	2025-05-20 19:36:28.068
cmawx07gq010p4wt9wtb16pwd	Tenax vereor advenio auditor beatae apud labore. Argumentum corrupti vapulus aedificium cultellus consequatur. Nam censura adflicto ceno cado. Vigor earum decor.	cmawx07gp010n4wt92txez2a6	cmawx075500zp4wt9vhrtayh9	2025-03-28 22:50:24.651	2025-05-20 19:36:28.106
cmawx07nm011f4wt96rvbstwb	Tego sublime cotidie. Aetas ratione decens careo addo commodi traho. Aro compello libero depulso titulus ter verumtamen et uter. Temptatio chirographum vito.	cmawx07nl011d4wt9djcdb48a	cmawx07mb01164wt9y44dhos0	2025-03-20 08:18:34.515	2025-05-20 19:36:28.355
cmc3qf4z000186bsot7qrbpph	hi! you are awesome!	cmbhzh70200028ljx91rnqmnl	cmawx07mb01164wt9y44dhos0	2025-06-19 18:46:12.972	2025-06-19 18:46:12.972
cmc3qkh1b001a6bsoqi1079pu	I love you!	cmbhzh70200028ljx91rnqmnl	cmawx07mb01164wt9y44dhos0	2025-06-19 18:50:21.887	2025-06-19 18:50:21.887
cmc3skk3d001e6bsox7ifv41m	!!!\n	cmawwzvs700064wt9b2g2pz3k	cmawx07mb01164wt9y44dhos0	2025-06-19 19:46:25.08	2025-06-19 19:46:25.08
\.


--
-- Data for Name: video_like; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.video_like (id, user_id, video_id, created_at) FROM stdin;
cmawwzwae001c4wt9l3qqfxji	cmawwzwad001a4wt9nbwzbeh8	cmawwzvz4000l4wt9zrxi2iwe	2025-04-18 18:03:10.065
cmawwzwc2001f4wt9402pd90c	cmawwzwc1001d4wt93si4ixot	cmawwzvz4000l4wt9zrxi2iwe	2025-04-26 15:28:00.714
cmawwzwd9001i4wt902b268l4	cmawwzwd8001g4wt9m1liwtuf	cmawwzvz4000l4wt9zrxi2iwe	2025-04-24 03:05:52.755
cmawwzwed001l4wt95uvd1tv1	cmawwzwed001j4wt9jhe2amid	cmawwzvz4000l4wt9zrxi2iwe	2025-04-24 11:58:45.614
cmawwzwfh001o4wt96er6zqys	cmawwzwfg001m4wt99r70ca6f	cmawwzvz4000l4wt9zrxi2iwe	2025-05-10 23:28:41.671
cmawwzwgm001r4wt9p3fxl5p9	cmawwzwgl001p4wt9eey8oegt	cmawwzvz4000l4wt9zrxi2iwe	2025-04-27 10:09:07.94
cmawwzwhq001u4wt951bhqtcg	cmawwzwhp001s4wt9la95mavd	cmawwzvz4000l4wt9zrxi2iwe	2025-05-06 20:59:14.228
cmawwzwit001x4wt9ml8rlo5c	cmawwzwis001v4wt9nyb6k54x	cmawwzvz4000l4wt9zrxi2iwe	2025-05-17 10:48:54.958
cmawwzwjx00204wt9uvwqanla	cmawwzwjw001y4wt9jsqfdxoi	cmawwzvz4000l4wt9zrxi2iwe	2025-05-04 03:37:48.864
cmawwzwmf002i4wt9rgzn2z2k	cmawwzwme002g4wt9roohv6vj	cmawwzwjx00224wt9t8q7kpgp	2025-05-01 22:56:10.957
cmawwzwnh002l4wt9184thj7p	cmawwzwng002j4wt9ay2cdg5l	cmawwzwjx00224wt9t8q7kpgp	2025-04-25 11:01:23.255
cmawwzwok002o4wt9bqmzq2en	cmawwzwoi002m4wt94o4p5jnm	cmawwzwjx00224wt9t8q7kpgp	2025-05-04 18:42:44.917
cmawwzwpm002r4wt9qvdgntpp	cmawwzwpl002p4wt9jwe5ci6h	cmawwzwjx00224wt9t8q7kpgp	2025-05-06 10:54:08.559
cmawwzwqp002u4wt9lb0mpvlj	cmawwzwqo002s4wt9lrdvr2t5	cmawwzwjx00224wt9t8q7kpgp	2025-04-28 16:19:40.997
cmawwzwrr002x4wt91bh0kysu	cmawwzwrq002v4wt91xc5gylw	cmawwzwjx00224wt9t8q7kpgp	2025-04-27 09:03:27.307
cmawwzwst00304wt9sk6qhos2	cmawwzwss002y4wt9yatyy4fz	cmawwzwjx00224wt9t8q7kpgp	2025-05-02 06:00:44.268
cmawwzx1x003z4wt9h6voco8b	cmawwzx1w003x4wt9vvrrd99h	cmawwzwsu00324wt96rnd6hm0	2025-05-20 13:15:24.913
cmawwzx3000424wt9k08qlwaj	cmawwzx2z00404wt9rq0euynj	cmawwzwsu00324wt96rnd6hm0	2025-05-18 17:25:09.657
cmawwzx4300454wt9cxq8a306	cmawwzx4200434wt9llisglvn	cmawwzwsu00324wt96rnd6hm0	2025-04-01 17:28:47.13
cmawwzx5400484wt9a2r9h7xg	cmawwzx5400464wt9c8j69ark	cmawwzwsu00324wt96rnd6hm0	2025-04-02 21:40:55.255
cmawwzxi1005b4wt9r67rl00f	cmawwzxi000594wt9s2jcmzu1	cmawwzx55004a4wt9c8fsokbr	2024-12-08 16:30:38.686
cmawwzxj4005e4wt9jymsv3b9	cmawwzxj3005c4wt910kd916t	cmawwzx55004a4wt9c8fsokbr	2025-05-03 17:29:36.171
cmawwzxk8005h4wt9yc4av23d	cmawwzxk7005f4wt9ebphhn2v	cmawwzx55004a4wt9c8fsokbr	2024-12-09 16:27:28.185
cmawwzxlc005k4wt9svz4nqea	cmawwzxlb005i4wt9ukkf4m9x	cmawwzx55004a4wt9c8fsokbr	2025-03-18 17:02:09.01
cmawwzxme005n4wt99bgjpv46	cmawwzxmd005l4wt9y4klb4gm	cmawwzx55004a4wt9c8fsokbr	2024-12-25 04:00:17.13
cmawwzxng005q4wt9bh29u9ry	cmawwzxnf005o4wt90xoqjeee	cmawwzx55004a4wt9c8fsokbr	2025-03-26 18:40:12.993
cmawwzxoj005t4wt99libe3c6	cmawwzxoi005r4wt9rt9j132n	cmawwzx55004a4wt9c8fsokbr	2025-03-03 17:56:58.988
cmawwzxpm005w4wt9w319uwdp	cmawwzxpl005u4wt9adfretnw	cmawwzx55004a4wt9c8fsokbr	2025-03-05 10:36:29.896
cmawwzxqq005z4wt9l8u5k82o	cmawwzxqo005x4wt9a0weoo7g	cmawwzx55004a4wt9c8fsokbr	2025-05-19 03:27:49.656
cmawwzy11006y4wt9mi616elh	cmawwzy10006w4wt90ohf4w58	cmawwzxqt00614wt9oeruk8dx	2025-02-23 16:50:15.657
cmawwzy2400714wt9k65khbo7	cmawwzy23006z4wt95dc59n8u	cmawwzxqt00614wt9oeruk8dx	2025-05-14 19:26:41.26
cmawwzy3700744wt9pwhhwcwn	cmawwzy3700724wt905kzm4a4	cmawwzxqt00614wt9oeruk8dx	2025-03-22 14:05:10.478
cmawwzy4a00774wt9afuguwy1	cmawwzy4900754wt9q4uxrozq	cmawwzxqt00614wt9oeruk8dx	2025-04-02 12:15:46.231
cmawwzy5e007a4wt9j7xdx3ev	cmawwzy5d00784wt954t6t2ww	cmawwzxqt00614wt9oeruk8dx	2025-05-04 04:13:10.587
cmawwzy6g007d4wt93koaysir	cmawwzy6g007b4wt9bazkt9w7	cmawwzxqt00614wt9oeruk8dx	2025-04-05 20:14:07.744
cmawwzy7j007g4wt91rh6b3jg	cmawwzy7j007e4wt9b0fri5uf	cmawwzxqt00614wt9oeruk8dx	2025-05-17 16:33:31.269
cmawwzy8m007j4wt9rrqlxfs6	cmawwzy8m007h4wt92ux6p8rp	cmawwzxqt00614wt9oeruk8dx	2025-05-11 16:27:27.536
cmawwzy9p007m4wt9fbl4h829	cmawwzy9p007k4wt90n6xdxtk	cmawwzxqt00614wt9oeruk8dx	2025-05-04 17:11:07.401
cmawwzyed00874wt9qm7ginfu	cmawwzyec00854wt99gqmshjf	cmawwzy9q007o4wt9xhmlilnb	2025-05-09 20:52:07.486
cmawwzyfh008a4wt9hvvrjrph	cmawwzyfg00884wt9929g152g	cmawwzy9q007o4wt9xhmlilnb	2025-05-03 17:39:59.495
cmawwzyhv008q4wt9q79t6wxc	cmawwzyhu008o4wt95jm1a7gr	cmawwzyfi008c4wt9jtn3qcrs	2025-04-29 06:32:49.37
cmawwzys7009q4wt9ig615zy4	cmawwzys6009o4wt9mix1qecd	cmawwzyhv008s4wt9oma34pg0	2025-04-23 03:41:18.36
cmawwzyta009t4wt9ez5y6opb	cmawwzyt9009r4wt9ondjbnap	cmawwzyhv008s4wt9oma34pg0	2025-04-28 00:48:21.52
cmawwzyud009w4wt9z8lo2f0j	cmawwzyud009u4wt9q51rxs9e	cmawwzyhv008s4wt9oma34pg0	2025-05-09 04:23:10.493
cmawwzyvh009z4wt9pmu9f82n	cmawwzyvg009x4wt99pkp6u6h	cmawwzyhv008s4wt9oma34pg0	2025-05-06 09:15:19.444
cmawwzz3900at4wt96dqszrpe	cmawwzz3900ar4wt9iakvoifa	cmawwzyvh00a14wt9cj7f36vb	2025-05-19 03:05:14.072
cmawwzz4d00aw4wt9qw69mslm	cmawwzz4c00au4wt9eblk8nnl	cmawwzyvh00a14wt9cj7f36vb	2025-04-01 16:51:05.003
cmawwzz5h00az4wt9ht4oc4zz	cmawwzz5h00ax4wt9b6bbw8wr	cmawwzyvh00a14wt9cj7f36vb	2025-05-13 20:08:45.698
cmawwzz6s00b24wt9e798gt21	cmawwzz6r00b04wt9s7xbqrjs	cmawwzyvh00a14wt9cj7f36vb	2025-04-26 10:51:10.475
cmawwzzad00bk4wt9svuvxz0n	cmawwzzac00bi4wt9xi9n0rey	cmawwzz6t00b44wt90h6ua44t	2025-05-19 09:22:30.616
cmawwzzbg00bn4wt9w397mfpf	cmawwzzbf00bl4wt90jqplveo	cmawwzz6t00b44wt90h6ua44t	2025-05-19 04:21:18.397
cmawwzzcj00bq4wt98qpdqj95	cmawwzzci00bo4wt9xcxya2oi	cmawwzz6t00b44wt90h6ua44t	2025-05-20 11:30:47.261
cmawwzzdm00bt4wt9j5sfj544	cmawwzzdl00br4wt9nwdjsp3g	cmawwzz6t00b44wt90h6ua44t	2025-05-19 11:49:49.183
cmawwzzet00bw4wt9tof059ks	cmawwzzet00bu4wt9vc6ngyae	cmawwzz6t00b44wt90h6ua44t	2025-05-19 17:57:08.401
cmawwzzhl00bz4wt91wnj05dv	cmawwzzhk00bx4wt90ek5vhnz	cmawwzz6t00b44wt90h6ua44t	2025-05-20 07:01:01.838
cmawwzzj700c24wt91z47gdbu	cmawwzzj600c04wt9mvw0lafi	cmawwzz6t00b44wt90h6ua44t	2025-05-19 04:51:28.56
cmawwzzkq00c54wt9cwswl3os	cmawwzzkp00c34wt9fm494xkg	cmawwzz6t00b44wt90h6ua44t	2025-05-20 07:15:08.352
cmawwzzm800c84wt95cuqrort	cmawwzzm700c64wt98f1z4158	cmawwzz6t00b44wt90h6ua44t	2025-05-20 15:47:20.767
cmawwzzzs00de4wt958cml01e	cmawwzzzr00dc4wt907pi1pde	cmawwzzm900ca4wt93qtus3e5	2025-04-26 21:01:26.261
cmawx000v00dh4wt91b2g7bfo	cmawx000v00df4wt9ugxzc8cp	cmawwzzm900ca4wt93qtus3e5	2025-03-25 02:02:26.352
cmawx001z00dk4wt9a322r0gq	cmawx001y00di4wt92p5825qz	cmawwzzm900ca4wt93qtus3e5	2025-05-10 00:25:43.389
cmawx003300dn4wt9p5ufxvsk	cmawx003200dl4wt9d1sbec2s	cmawwzzm900ca4wt93qtus3e5	2025-04-15 06:18:43.874
cmawx004800dq4wt94h7w7npt	cmawx004700do4wt9s8rdhh70	cmawwzzm900ca4wt93qtus3e5	2025-05-18 01:23:02.908
cmawx005e00dt4wt9eiw4yc8f	cmawx005d00dr4wt9auazbdxc	cmawwzzm900ca4wt93qtus3e5	2025-05-07 00:47:40.736
cmawx006k00dw4wt9tsdfce9l	cmawx006j00du4wt94rj98ymh	cmawwzzm900ca4wt93qtus3e5	2025-05-14 03:07:37.177
cmawx00gw00ew4wt97iemlslo	cmawx00gv00eu4wt9vqhnpuvx	cmawx006l00dy4wt9j9hdbiaz	2025-05-20 13:40:52.136
cmawx00hz00ez4wt9qpth2qzq	cmawx00hy00ex4wt9mvqny8yo	cmawx006l00dy4wt9j9hdbiaz	2025-05-20 13:41:16.714
cmawx00j200f24wt96ou19xt7	cmawx00j100f04wt9f3wbx135	cmawx006l00dy4wt9j9hdbiaz	2025-05-20 16:30:32.778
cmawx00k500f54wt9qsl9try9	cmawx00k500f34wt9o9kl700o	cmawx006l00dy4wt9j9hdbiaz	2025-05-20 12:19:50.487
cmawx00la00f84wt9o2mighvl	cmawx00l900f64wt9xn3k31kg	cmawx006l00dy4wt9j9hdbiaz	2025-05-20 15:32:57.82
cmawx00mf00fb4wt9r8bnl7vs	cmawx00me00f94wt9xx7llljg	cmawx006l00dy4wt9j9hdbiaz	2025-05-20 18:34:32.334
cmawx00nl00fe4wt9t8btz8yh	cmawx00nk00fc4wt9ep2bl537	cmawx006l00dy4wt9j9hdbiaz	2025-05-20 14:25:55.126
cmawx00oq00fh4wt94ptilwig	cmawx00oq00ff4wt9bxdsegik	cmawx006l00dy4wt9j9hdbiaz	2025-05-20 17:42:04.962
cmawx012x00gk4wt9kx4fy9qs	cmawx012w00gi4wt9mal9fowl	cmawx00or00fj4wt9wtc8azz4	2025-03-16 12:10:39.843
cmawx01dv00hh4wt9cndqalis	cmawx01du00hf4wt9zz1xga5p	cmawx012x00gm4wt9bzlnwl97	2025-02-25 16:58:20.344
cmawx01ez00hk4wt930l819iw	cmawx01ey00hi4wt9zd40vdy8	cmawx012x00gm4wt9bzlnwl97	2025-02-20 15:04:40.175
cmawx01g200hn4wt91wwk7oma	cmawx01g100hl4wt9beu7igxv	cmawx012x00gm4wt9bzlnwl97	2025-05-14 06:22:13.289
cmawx01hi00hq4wt9ern7j9bi	cmawx01hg00ho4wt9b62c59tq	cmawx012x00gm4wt9bzlnwl97	2025-04-13 05:27:54.053
cmawx01j700ht4wt9ajb8jiti	cmawx01j700hr4wt9ya769qtu	cmawx012x00gm4wt9bzlnwl97	2025-02-23 01:50:03.649
cmawx01km00hw4wt9xa0fggir	cmawx01km00hu4wt9ofef7p8c	cmawx012x00gm4wt9bzlnwl97	2025-04-30 23:15:03.967
cmawx01m100hz4wt9tthdrsfl	cmawx01m100hx4wt9dt8jpd17	cmawx012x00gm4wt9bzlnwl97	2025-05-12 17:04:06.961
cmawx01n700i24wt9vqqqau64	cmawx01n600i04wt9jq2de9fo	cmawx012x00gm4wt9bzlnwl97	2025-02-10 01:35:20.96
cmawx01ob00i54wt90s2mh8n8	cmawx01ob00i34wt98ubjbyit	cmawx012x00gm4wt9bzlnwl97	2025-04-24 03:51:29.477
cmawx01pg00i84wt9rjvtgork	cmawx01pf00i64wt9vxwto9ug	cmawx012x00gm4wt9bzlnwl97	2025-04-26 05:43:33.614
cmawx020s00jb4wt9mcxuba7r	cmawx020s00j94wt956qngpka	cmawx01ph00ia4wt9oj70r7v0	2025-04-01 16:07:09.298
cmawx021v00je4wt9ubx1h22j	cmawx021u00jc4wt9yxpkqmna	cmawx01ph00ia4wt9oj70r7v0	2025-04-03 06:20:16.07
cmawx022x00jh4wt9st1iqf95	cmawx022w00jf4wt90ei3poou	cmawx01ph00ia4wt9oj70r7v0	2025-03-01 17:03:54.783
cmawx024200jk4wt93n3k8k5q	cmawx024100ji4wt9y7x51tm7	cmawx01ph00ia4wt9oj70r7v0	2025-02-25 14:24:58.781
cmawx025700jn4wt9efjobhpb	cmawx025700jl4wt9z1gemvum	cmawx01ph00ia4wt9oj70r7v0	2025-04-12 19:11:39.515
cmawx026c00jq4wt97dfjkmva	cmawx026b00jo4wt9huyl5p3a	cmawx01ph00ia4wt9oj70r7v0	2025-05-09 00:28:02.676
cmawx028p00k44wt9u5pjtn4e	cmawx028o00k24wt90cvmvnrh	cmawx026c00js4wt9t45otcch	2025-05-19 19:09:18.565
cmawx02ed00kq4wt9y1rgea3l	cmawx02ed00ko4wt92dgpr5o6	cmawx028p00k64wt9u1hmtoh4	2025-04-23 04:06:05.998
cmawx02fg00kt4wt9ftvb1ssw	cmawx02ff00kr4wt9dw490wev	cmawx028p00k64wt9u1hmtoh4	2024-11-08 03:30:22.625
cmawx02gj00kw4wt90x19e21s	cmawx02gj00ku4wt9y2os1vu3	cmawx028p00k64wt9u1hmtoh4	2024-12-03 23:45:19.414
cmawx02hm00kz4wt9rz3acuec	cmawx02hm00kx4wt9zeuirv6y	cmawx028p00k64wt9u1hmtoh4	2024-08-16 20:24:32.975
cmawx02iq00l24wt9ntsnb4kv	cmawx02ip00l04wt90901k8kh	cmawx028p00k64wt9u1hmtoh4	2024-10-17 05:45:54.929
cmawx02ju00l54wt9uv4og8s7	cmawx02jt00l34wt983i99buv	cmawx028p00k64wt9u1hmtoh4	2024-11-17 08:00:40.926
cmawx02kz00l84wt9q4r7cw8f	cmawx02ky00l64wt9jdwxqjjb	cmawx028p00k64wt9u1hmtoh4	2024-10-02 17:52:57.816
cmawx02m300lb4wt99uvyf8gt	cmawx02m200l94wt9ne00mnrp	cmawx028p00k64wt9u1hmtoh4	2025-03-18 16:59:45.8
cmawx02n600le4wt9ulr60yy0	cmawx02n500lc4wt98xsqx31n	cmawx028p00k64wt9u1hmtoh4	2024-12-21 03:31:11.308
cmawx02ob00lh4wt9ayy2slig	cmawx02oa00lf4wt91stfj8v5	cmawx028p00k64wt9u1hmtoh4	2024-11-26 05:50:47.925
cmawx02zf00ml4wt9wx174yoz	cmawx02ze00mj4wt9365xdo95	cmawx02ob00lj4wt9rqrd4trk	2025-05-10 14:29:40.874
cmawx030k00mo4wt9zsl8gq9m	cmawx030j00mm4wt91ibqh81e	cmawx02ob00lj4wt9rqrd4trk	2025-05-19 16:42:12.803
cmawx031w00mr4wt9893s752o	cmawx031v00mp4wt984fzm03v	cmawx02ob00lj4wt9rqrd4trk	2025-05-15 09:17:29.073
cmawx033000mu4wt9ml87cz58	cmawx032z00ms4wt9qod3bdk1	cmawx02ob00lj4wt9rqrd4trk	2025-05-12 22:46:14.284
cmawx034400mx4wt9moli1mbb	cmawx034300mv4wt9r1gaxyeu	cmawx02ob00lj4wt9rqrd4trk	2025-05-17 21:24:36.714
cmawx035700n04wt9y10n9p85	cmawx035600my4wt9r4le9zna	cmawx02ob00lj4wt9rqrd4trk	2025-05-11 21:28:08.738
cmawx036b00n34wt9uq9ythza	cmawx036a00n14wt97jx9gmur	cmawx02ob00lj4wt9rqrd4trk	2025-05-20 13:12:53.689
cmawx037f00n64wt9a30l4pvz	cmawx037f00n44wt9fhip1xeo	cmawx02ob00lj4wt9rqrd4trk	2025-05-13 23:51:17.206
cmawx038j00n94wt9l68t210c	cmawx038i00n74wt9ncjbpjak	cmawx02ob00lj4wt9rqrd4trk	2025-05-14 20:50:02.466
cmawx039m00nc4wt9vnn78m42	cmawx039l00na4wt9emy2iq5y	cmawx02ob00lj4wt9rqrd4trk	2025-05-13 11:55:16.215
cmawx03lu00og4wt9sxy49qfi	cmawx03lt00oe4wt9e3li5p3f	cmawx039n00ne4wt96w5xleul	2025-05-09 15:11:41.477
cmawx03mx00oj4wt9jyegjjfl	cmawx03mw00oh4wt9tqe186jx	cmawx039n00ne4wt96w5xleul	2025-05-13 16:22:36.341
cmawx03o100om4wt9qzmdisjf	cmawx03o000ok4wt9eqmxvgxq	cmawx039n00ne4wt96w5xleul	2025-05-05 19:23:40.497
cmawx03p500op4wt9qaronqg3	cmawx03p400on4wt9d7p3zh88	cmawx039n00ne4wt96w5xleul	2025-05-15 01:34:47.959
cmawx03q900os4wt9y3id7b8q	cmawx03q800oq4wt9no8634uq	cmawx039n00ne4wt96w5xleul	2025-05-20 16:13:58.367
cmawx03rc00ov4wt93vxoibyw	cmawx03rc00ot4wt9qqavdmib	cmawx039n00ne4wt96w5xleul	2025-05-14 12:34:44.585
cmawx03sg00oy4wt9b5pr3ulo	cmawx03sf00ow4wt9a4dr97y1	cmawx039n00ne4wt96w5xleul	2025-05-02 07:59:00.848
cmawx03y100pk4wt9a2gud37t	cmawx03y100pi4wt9jil2qgws	cmawx03sg00p04wt9vpd3ggrw	2025-02-16 00:13:07.643
cmawx03z400pn4wt9z6ks2p5t	cmawx03z400pl4wt9zomo904o	cmawx03sg00p04wt9vpd3ggrw	2025-04-09 03:12:52.901
cmawx040700pq4wt9i3fd8xi5	cmawx040600po4wt9ynefrl58	cmawx03sg00p04wt9vpd3ggrw	2025-04-27 10:13:38.769
cmawx041900pt4wt9tv1h4m44	cmawx041800pr4wt9b7mri4rk	cmawx03sg00p04wt9vpd3ggrw	2025-02-26 04:39:40.475
cmawx042c00pw4wt9vpc1l0qq	cmawx042c00pu4wt91mbbgoxg	cmawx03sg00p04wt9vpd3ggrw	2025-03-05 09:59:03.185
cmawx043e00pz4wt91tz72t76	cmawx043d00px4wt9tvdogb2c	cmawx03sg00p04wt9vpd3ggrw	2025-05-12 06:36:47.172
cmawx044h00q24wt952blbdsu	cmawx044g00q04wt9gkj0gc35	cmawx03sg00p04wt9vpd3ggrw	2025-03-27 04:45:32.663
cmawx045k00q54wt9mvtxwqcx	cmawx045j00q34wt9sc9qavn4	cmawx03sg00p04wt9vpd3ggrw	2025-02-28 09:59:34.684
cmawx04i200r84wt97segausz	cmawx04i200r64wt9x8htg37q	cmawx045k00q74wt9igaq26lw	2025-05-09 13:31:32.195
cmawx04j700rb4wt9v3lh6opk	cmawx04j700r94wt93sq8477a	cmawx045k00q74wt9igaq26lw	2025-04-03 22:45:53.01
cmawx04kb00re4wt9qha5d7ad	cmawx04kb00rc4wt9g05odpgn	cmawx045k00q74wt9igaq26lw	2025-04-06 12:34:57.704
cmawx04lf00rh4wt9ic5jg45k	cmawx04le00rf4wt98hlgtqeh	cmawx045k00q74wt9igaq26lw	2025-04-21 19:09:33.431
cmawx04mj00rk4wt9x0jk81h8	cmawx04mj00ri4wt9m2m8vur7	cmawx045k00q74wt9igaq26lw	2025-04-29 15:55:14.131
cmawx04nn00rn4wt9p7v9z6z3	cmawx04nn00rl4wt9oimx3r9w	cmawx045k00q74wt9igaq26lw	2025-04-12 20:51:14.481
cmawx04os00rq4wt9kuggvmh5	cmawx04or00ro4wt95v1b9okj	cmawx045k00q74wt9igaq26lw	2025-04-15 01:38:21.894
cmawx04xp00sj4wt9u0e95hd9	cmawx04xo00sh4wt9vwwyjxu8	cmawx04ot00rs4wt93cg994tl	2025-03-26 19:52:20.863
cmawx04ys00sm4wt9ek9kpjel	cmawx04yq00sk4wt9gdtjnjqm	cmawx04ot00rs4wt93cg994tl	2025-04-10 00:32:22.698
cmawx04zu00sp4wt9gqu9mt90	cmawx04zt00sn4wt96inxyiss	cmawx04ot00rs4wt93cg994tl	2025-04-15 17:43:44.174
cmawx057n00ti4wt9nf7e89m1	cmawx057m00tg4wt9mccjqfh7	cmawx04zu00sr4wt90ejbktsa	2025-03-12 18:45:57.026
cmawx058p00tl4wt94lyz30mb	cmawx058o00tj4wt977z4l0hm	cmawx04zu00sr4wt90ejbktsa	2025-03-26 18:21:49.005
cmawx05c600u34wt9z9859lyn	cmawx05c500u14wt9j69i9d0b	cmawx058p00tn4wt980t6tgzf	2025-03-19 18:26:16.662
cmawx05m400v24wt9qpwxh4st	cmawx05m400v04wt9s6dh57r2	cmawx05c600u54wt9mg02c50q	2025-01-08 03:35:39.773
cmawx05n700v54wt93za3evmd	cmawx05n600v34wt9cc0k9fyv	cmawx05c600u54wt9mg02c50q	2025-01-01 00:08:02.25
cmawx05oa00v84wt9qnp6x1b4	cmawx05o900v64wt970ad8wrs	cmawx05c600u54wt9mg02c50q	2025-04-15 05:01:32.903
cmawx05pe00vb4wt9u40ehmkf	cmawx05pd00v94wt94ly6d9ez	cmawx05c600u54wt9mg02c50q	2025-03-26 15:24:06.163
cmawx05qj00ve4wt9hvld3lec	cmawx05qi00vc4wt95gshele6	cmawx05c600u54wt9mg02c50q	2025-02-19 21:20:23.469
cmawx05rn00vh4wt93vt9ol91	cmawx05rm00vf4wt9x2aos7w4	cmawx05c600u54wt9mg02c50q	2025-01-07 03:42:44.104
cmawx05sr00vk4wt9dcyk97cb	cmawx05sq00vi4wt9ohi2ce4n	cmawx05c600u54wt9mg02c50q	2025-04-21 16:14:29.783
cmawx05tw00vn4wt9k6sca4x5	cmawx05tv00vl4wt9u2xkpi1m	cmawx05c600u54wt9mg02c50q	2025-03-29 12:25:56.584
cmawx05v000vq4wt9fthi7u34	cmawx05uz00vo4wt95dq1kf49	cmawx05c600u54wt9mg02c50q	2025-03-25 02:52:26.498
cmawx067600ww4wt9h7ejphkn	cmawx067600wu4wt93e4kdpvm	cmawx05v000vs4wt9i59jkfuz	2025-05-20 01:56:04.447
cmawx068900wz4wt95zf7x9w4	cmawx068900wx4wt9p1lz4z2u	cmawx05v000vs4wt9i59jkfuz	2025-05-14 23:10:09.269
cmawx069d00x24wt9wtaecfnq	cmawx069c00x04wt9wlex1guq	cmawx05v000vs4wt9i59jkfuz	2025-05-17 20:56:16.877
cmawx06ah00x54wt9yd8n55tf	cmawx06ag00x34wt9jrnpbdae	cmawx05v000vs4wt9i59jkfuz	2025-05-20 05:45:09.771
cmawx06ld00y14wt963mwfs4u	cmawx06lc00xz4wt9jlmzjyg3	cmawx06ah00x74wt9ydhtje39	2025-05-05 22:18:34.922
cmawx06mj00y44wt9om7bk1pw	cmawx06mi00y24wt9posp68bs	cmawx06ah00x74wt9ydhtje39	2025-05-19 13:01:37.215
cmawx06ns00y74wt9a68b5843	cmawx06nr00y54wt9dnoitjz0	cmawx06ah00x74wt9ydhtje39	2025-05-09 14:56:23.6
cmawx06ov00ya4wt9a647pzjn	cmawx06ou00y84wt9hwfeou64	cmawx06ah00x74wt9ydhtje39	2025-05-14 13:16:33.715
cmawx06q800yd4wt9gxj3megm	cmawx06q700yb4wt9pu2xfv22	cmawx06ah00x74wt9ydhtje39	2025-05-07 09:39:28.278
cmawx06rd00yg4wt9d4ohsb5g	cmawx06rc00ye4wt9nyn84hrz	cmawx06ah00x74wt9ydhtje39	2025-05-11 14:01:23.584
cmawx06si00yj4wt9vo0do7i7	cmawx06sh00yh4wt950jaxj7p	cmawx06ah00x74wt9ydhtje39	2025-05-09 15:14:10.421
cmawx06tp00ym4wt93kkvspdq	cmawx06to00yk4wt9zbaa64fz	cmawx06ah00x74wt9ydhtje39	2025-05-05 02:20:50.257
cmawx06us00yp4wt9jy0j3rje	cmawx06ur00yn4wt925tnwy6b	cmawx06ah00x74wt9ydhtje39	2025-05-03 17:58:35.093
cmawx06vy00ys4wt9h4780vp5	cmawx06vx00yq4wt99szi34yr	cmawx06ah00x74wt9ydhtje39	2025-05-02 07:43:21.938
cmawx071v00ze4wt90boqyf4j	cmawx071u00zc4wt9zoz77xv2	cmawx06vz00yu4wt9bc7s0gml	2025-05-16 12:00:45.828
cmawx072y00zh4wt9v1bhqv2j	cmawx072y00zf4wt9iz8xkldm	cmawx06vz00yu4wt9bc7s0gml	2025-05-12 17:10:44.95
cmawx074200zk4wt9tamgt7qm	cmawx074100zi4wt96fblj3vo	cmawx06vz00yu4wt9bc7s0gml	2025-05-04 11:26:12.292
cmawx075400zn4wt9ea5box0e	cmawx075300zl4wt9cu97sh97	cmawx06vz00yu4wt9bc7s0gml	2025-04-03 07:53:38.849
cmawx07ht010s4wt9kgil2vl3	cmawx07hs010q4wt9um6qjskw	cmawx075500zp4wt9vhrtayh9	2025-05-20 10:37:20.742
cmawx07ix010v4wt9e4wj9tfi	cmawx07iw010t4wt934j083kl	cmawx075500zp4wt9vhrtayh9	2025-04-23 12:45:08.414
cmawx07k2010y4wt99rmnpk55	cmawx07k1010w4wt92040f2pe	cmawx075500zp4wt9vhrtayh9	2025-02-26 04:03:31.415
cmawx07l601114wt931hwknvf	cmawx07l6010z4wt9swgh04b8	cmawx075500zp4wt9vhrtayh9	2025-05-16 07:50:35.922
cmawx07ma01144wt9znrhw7ol	cmawx07m901124wt93pzp00wt	cmawx075500zp4wt9vhrtayh9	2025-04-28 14:00:38.431
cmawx07oq011i4wt90idrmey8	cmawx07op011g4wt9wt7tktst	cmawx07mb01164wt9y44dhos0	2025-04-10 17:36:12.08
cmawx07pt011l4wt9y8rw3j36	cmawx07ps011j4wt9g9zrb8x3	cmawx07mb01164wt9y44dhos0	2025-02-07 08:53:18.648
cmawx07qw011o4wt9swmp573x	cmawx07qv011m4wt9vpqmfvle	cmawx07mb01164wt9y44dhos0	2024-12-30 12:02:49.624
cmawx07sd011r4wt95r6tah14	cmawx07sc011p4wt9rt9v777o	cmawx07mb01164wt9y44dhos0	2025-04-15 20:18:35.302
cmawx07tv011u4wt9fdk777xp	cmawx07ts011s4wt9n5y2er8t	cmawx07mb01164wt9y44dhos0	2025-02-25 16:23:28.905
cmawx07w5011x4wt9vit9vndj	cmawx07w4011v4wt9jpgk96th	cmawx07mb01164wt9y44dhos0	2024-11-27 14:11:19.424
cmawx07xf01204wt9bhpqorzy	cmawx07xe011y4wt9rnd12nfh	cmawx07mb01164wt9y44dhos0	2025-01-04 11:49:08.669
cmawx07yk01234wt9ctjeq4ei	cmawx07yj01214wt9v928mw33	cmawx07mb01164wt9y44dhos0	2024-11-22 08:25:23.715
cmawx07zo01264wt99qkfff79	cmawx07zn01244wt96f9fxrhr	cmawx07mb01164wt9y44dhos0	2025-03-21 12:47:01.818
cmby1gqpe000k6bsoohms7egt	cmawwzvog00004wt9mwvejbx1	cmawx05c600u54wt9mg02c50q	2025-06-15 19:08:46.515
cmby68m7g000m6bso87hkvlzs	cmawwzvog00004wt9mwvejbx1	cmawx045k00q74wt9igaq26lw	2025-06-15 21:22:25.516
cmc5ae1am0027ag45k70djkt8	cmawwzvs700064wt9b2g2pz3k	cmawx039n00ne4wt96w5xleul	2025-06-20 20:53:00.047
cmccm49ep0007c7xfp8igqcuj	cmbhzh70200028ljx91rnqmnl	cmawx07mb01164wt9y44dhos0	2025-06-25 23:55:42.625
cmcdbkdbi002fc7xfkv3azry3	cmbhzh70200028ljx91rnqmnl	cmcd9m4w0001cc7xfi6w9f09r	2025-06-26 11:48:04.59
cmcdfbet1002sc7xfqa02gc2d	cmbhzh70200028ljx91rnqmnl	cmcdfac4c002gc7xfocmkpodv	2025-06-26 13:33:05.078
cmcdgfbfb003wc7xfp6m6ubw8	cmawwzvog00004wt9mwvejbx1	cmcdfac4c002gc7xfocmkpodv	2025-06-26 14:04:06.935
cmcdgfhpa0042c7xf8lh9sw6c	cmawwzvog00004wt9mwvejbx1	cmcd9m4w0001cc7xfi6w9f09r	2025-06-26 14:04:15.071
cmcdgfked0048c7xf7hv5buqn	cmawwzvog00004wt9mwvejbx1	cmccnongc000wc7xfsyd8hr37	2025-06-26 14:04:18.565
cmcf6py350007oay7dk7j07tj	cmawwzvs700064wt9b2g2pz3k	cmawx07mb01164wt9y44dhos0	2025-06-27 19:07:59.058
\.


--
-- Data for Name: video_tag; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.video_tag (id, name, created_at, updated_at) FROM stdin;
cmawwzvz4000m4wt9cocl4os9	помодоро	2025-05-20 19:36:13.216	2025-05-20 19:36:13.216
cmawwzvz4000n4wt9lo8vkyrv	продуктивность	2025-05-20 19:36:13.216	2025-05-20 19:36:13.216
cmawwzvz4000o4wt9ju73sis1	планирование	2025-05-20 19:36:13.216	2025-05-20 19:36:13.216
cmawwzvz4000p4wt9ko7iu84e	саморазвитие	2025-05-20 19:36:13.216	2025-05-20 19:36:13.216
cmawwzvz4000q4wt94cf6vg1b	самодисциплина	2025-05-20 19:36:13.216	2025-05-20 19:36:13.216
cmawwzvz4000r4wt9igt7hcwr	мотивация	2025-05-20 19:36:13.216	2025-05-20 19:36:13.216
cmawwzvz4000s4wt9v7kgf4s3	work from home	2025-05-20 19:36:13.216	2025-05-20 19:36:13.216
cmawwzvz4000t4wt9jqlk94yt	productivity	2025-05-20 19:36:13.216	2025-05-20 19:36:13.216
cmawwzvz4000u4wt9olakkk1z	бизнес	2025-05-20 19:36:13.216	2025-05-20 19:36:13.216
cmawwzwjx00274wt9299lw8sj	биоритмы	2025-05-20 19:36:13.966	2025-05-20 19:36:13.966
cmawwzwjx00284wt9plhi1d59	сон	2025-05-20 19:36:13.966	2025-05-20 19:36:13.966
cmawwzwjy00294wt9ijdwttp8	режим дня	2025-05-20 19:36:13.966	2025-05-20 19:36:13.966
cmawwzwsu00364wt98uy37kp5	дофамин	2025-05-20 19:36:14.286	2025-05-20 19:36:14.286
cmawwzwsu00374wt9s0vi40li	счастье	2025-05-20 19:36:14.286	2025-05-20 19:36:14.286
cmawwzwsu00384wt944rsphiv	удовольствие	2025-05-20 19:36:14.286	2025-05-20 19:36:14.286
cmawwzwsu00394wt9dnq8y0hu	хобби	2025-05-20 19:36:14.286	2025-05-20 19:36:14.286
cmawwzx55004b4wt9wyr6iqyd	vscode	2025-05-20 19:36:14.73	2025-05-20 19:36:14.73
cmawwzx55004c4wt9r5lb024c	visual studio code	2025-05-20 19:36:14.73	2025-05-20 19:36:14.73
cmawwzx55004d4wt9mlfie51z	расширения vscode	2025-05-20 19:36:14.73	2025-05-20 19:36:14.73
cmawwzx55004e4wt9kilnae4y	сниппеты vscode	2025-05-20 19:36:14.73	2025-05-20 19:36:14.73
cmawwzx55004f4wt9whgas7ge	хоткеи vscode	2025-05-20 19:36:14.73	2025-05-20 19:36:14.73
cmawwzx55004g4wt9j3thatpz	настройка vscode	2025-05-20 19:36:14.73	2025-05-20 19:36:14.73
cmawwzx56004h4wt9uwx9e5b8	настройка visual studio code	2025-05-20 19:36:14.73	2025-05-20 19:36:14.73
cmawwzxqt00624wt94oajdo9a	webstorm	2025-05-20 19:36:15.51	2025-05-20 19:36:15.51
cmawwzxqt00634wt920duv6h1	webstorm 2.0	2025-05-20 19:36:15.51	2025-05-20 19:36:15.51
cmawwzxqt00644wt963242lvv	настройка webstorm	2025-05-20 19:36:15.51	2025-05-20 19:36:15.51
cmawwzxqt00654wt9ydo2ixyd	расширения webstorm	2025-05-20 19:36:15.51	2025-05-20 19:36:15.51
cmawwzxqt00664wt9re7yad8i	сниппеты webstorm	2025-05-20 19:36:15.51	2025-05-20 19:36:15.51
cmawwzxqt00674wt9jla5y5rd	хоткеи webstorm	2025-05-20 19:36:15.51	2025-05-20 19:36:15.51
cmawwzy9q007p4wt923ood4kd	react	2025-05-20 19:36:16.19	2025-05-20 19:36:16.19
cmawwzy9q007q4wt9eifyog5h	react js	2025-05-20 19:36:16.19	2025-05-20 19:36:16.19
cmawwzy9q007r4wt9yv4zwggz	полный курс react	2025-05-20 19:36:16.19	2025-05-20 19:36:16.19
cmawwzy9q007s4wt9zerpsbre	уроки react	2025-05-20 19:36:16.19	2025-05-20 19:36:16.19
cmawwzy9q007t4wt9djdwbycs	изучение react	2025-05-20 19:36:16.19	2025-05-20 19:36:16.19
cmawwzy9q007u4wt94r8hfoog	уроки по react	2025-05-20 19:36:16.19	2025-05-20 19:36:16.19
cmawwzy9q007v4wt9ezumozgk	уроки по react js	2025-05-20 19:36:16.19	2025-05-20 19:36:16.19
cmawwzyfi008d4wt98ojgkbr8	next.js	2025-05-20 19:36:16.398	2025-05-20 19:36:16.398
cmawwzyfi008f4wt91xz8sjpq	nest	2025-05-20 19:36:16.398	2025-05-20 19:36:16.398
cmawwzyfi008g4wt9rjs1bjzj	typescript	2025-05-20 19:36:16.398	2025-05-20 19:36:16.398
cmawwzyfi008h4wt99lr69z9x	prisma	2025-05-20 19:36:16.398	2025-05-20 19:36:16.398
cmawwzyfi008i4wt9aq9kzy7p	full-stack	2025-05-20 19:36:16.398	2025-05-20 19:36:16.398
cmawwzyfi008j4wt9ftey6jhp	проекты	2025-05-20 19:36:16.398	2025-05-20 19:36:16.398
cmawwzyfi008k4wt9wj5ejimk	trello	2025-05-20 19:36:16.398	2025-05-20 19:36:16.398
cmawwzyhw008t4wt9iihgob9j	веб студия	2025-05-20 19:36:16.484	2025-05-20 19:36:16.484
cmawwzyhw008u4wt9echojapz	веб разработка	2025-05-20 19:36:16.484	2025-05-20 19:36:16.484
cmawwzyhw008v4wt9bl4c8dq0	программирование	2025-05-20 19:36:16.484	2025-05-20 19:36:16.484
cmawwzyhw008x4wt9ekh0o30d	стартап	2025-05-20 19:36:16.484	2025-05-20 19:36:16.484
cmawwzyhw008y4wt92cdz663l	программист	2025-05-20 19:36:16.484	2025-05-20 19:36:16.484
cmawwzyhw008z4wt9nytvd9xv	it	2025-05-20 19:36:16.484	2025-05-20 19:36:16.484
cmawwzyvi00a24wt9sa35mx2s	игра	2025-05-20 19:36:16.974	2025-05-20 19:36:16.974
cmawwzyvi00a34wt9kfl81reh	разработка игры	2025-05-20 19:36:16.974	2025-05-20 19:36:16.974
cmawwzyvi00a44wt9hdtv1nfl	игра с нуля	2025-05-20 19:36:16.974	2025-05-20 19:36:16.974
cmawwzz6t00b74wt9iegsb475	next js	2025-05-20 19:36:17.381	2025-05-20 19:36:17.381
cmawwzz6t00b84wt9edkwusba	уроки next js	2025-05-20 19:36:17.381	2025-05-20 19:36:17.381
cmawwzz6t00b94wt9dhpmled8	уроки по next js	2025-05-20 19:36:17.381	2025-05-20 19:36:17.381
cmawwzz6t00ba4wt9vtkou8vu	изучение next js	2025-05-20 19:36:17.381	2025-05-20 19:36:17.381
cmawwzz6t00bb4wt942s16r8d	уроки next.js	2025-05-20 19:36:17.381	2025-05-20 19:36:17.381
cmawwzzm900cc4wt9qbip2fpj	framer-motion	2025-05-20 19:36:17.937	2025-05-20 19:36:17.937
cmawwzzm900cd4wt9azjauzva	jotai	2025-05-20 19:36:17.937	2025-05-20 19:36:17.937
cmawwzzm900ce4wt9rl6kuhg3	библиотеки	2025-05-20 19:36:17.937	2025-05-20 19:36:17.937
cmawwzzm900cf4wt9j3tgbbj0	анимации	2025-05-20 19:36:17.937	2025-05-20 19:36:17.937
cmawwzzm900cg4wt9jyeiurg9	сайдбар	2025-05-20 19:36:17.937	2025-05-20 19:36:17.937
cmawwzzm900ch4wt9ed0x9gxu	ui	2025-05-20 19:36:17.937	2025-05-20 19:36:17.937
cmawx006l00dz4wt9ackv0j7x	node.js	2025-05-20 19:36:18.669	2025-05-20 19:36:18.669
cmawx006l00e04wt9h1ulo4cr	express	2025-05-20 19:36:18.669	2025-05-20 19:36:18.669
cmawx006l00e14wt90526xir3	javascript	2025-05-20 19:36:18.669	2025-05-20 19:36:18.669
cmawx006l00e34wt9ai4z8w9l	бэкенд	2025-05-20 19:36:18.669	2025-05-20 19:36:18.669
cmawx006l00e44wt9luyuoc1c	сервер	2025-05-20 19:36:18.669	2025-05-20 19:36:18.669
cmawx006l00e54wt9iarhpmqv	api	2025-05-20 19:36:18.669	2025-05-20 19:36:18.669
cmawx00or00fk4wt9viwhqrdu	css	2025-05-20 19:36:19.324	2025-05-20 19:36:19.324
cmawx00or00fl4wt92r03w4u7	scss	2025-05-20 19:36:19.324	2025-05-20 19:36:19.324
cmawx00or00fm4wt9jx1tzps4	tailwind	2025-05-20 19:36:19.324	2025-05-20 19:36:19.324
cmawx00or00fn4wt9ljhl4obh	адаптация	2025-05-20 19:36:19.324	2025-05-20 19:36:19.324
cmawx00or00fo4wt9ht8t35k0	сайт	2025-05-20 19:36:19.324	2025-05-20 19:36:19.324
cmawx00or00fp4wt94y93emh0	дизайн	2025-05-20 19:36:19.324	2025-05-20 19:36:19.324
cmawx01ph00id4wt9zv7dy3rp	zustand	2025-05-20 19:36:20.645	2025-05-20 19:36:20.645
cmawx01ph00ig4wt9u46rb0bx	игры	2025-05-20 19:36:20.645	2025-05-20 19:36:20.645
cmawx01ph00ih4wt9m6toz3lc	разработка	2025-05-20 19:36:20.645	2025-05-20 19:36:20.645
cmawx026c00jx4wt9jfd4tf9o	веб-разработка	2025-05-20 19:36:21.253	2025-05-20 19:36:21.253
cmawx026c00jy4wt92z08eln3	фронтенд	2025-05-20 19:36:21.253	2025-05-20 19:36:21.253
cmawx028q00k74wt9f1kdg5t9	frankyeffe	2025-05-20 19:36:21.338	2025-05-20 19:36:21.338
cmawx028q00k84wt9mm9x7ker	motvs	2025-05-20 19:36:21.338	2025-05-20 19:36:21.338
cmawx028q00k94wt92jdo2jdo	fall down	2025-05-20 19:36:21.338	2025-05-20 19:36:21.338
cmawx028q00ka4wt9si1i0epl	music	2025-05-20 19:36:21.338	2025-05-20 19:36:21.338
cmawx028q00kb4wt9r955lxxz	edm	2025-05-20 19:36:21.338	2025-05-20 19:36:21.338
cmawx02ob00lk4wt9zz3kvli1	xttc	2025-05-20 19:36:21.9	2025-05-20 19:36:21.9
cmawx02ob00ll4wt93ub7n5az	radio	2025-05-20 19:36:21.9	2025-05-20 19:36:21.9
cmawx02ob00lm4wt9px5roe6n	001	2025-05-20 19:36:21.9	2025-05-20 19:36:21.9
cmawx02ob00ln4wt9p19k14df	eli brown	2025-05-20 19:36:21.9	2025-05-20 19:36:21.9
cmawx02ob00lo4wt9795xwjlk	lilly palmer	2025-05-20 19:36:21.9	2025-05-20 19:36:21.9
cmawx02ob00lp4wt906ggya1q	amelie lens	2025-05-20 19:36:21.9	2025-05-20 19:36:21.9
cmawx039n00nf4wt9lrpxl1ol	desk setup	2025-05-20 19:36:22.667	2025-05-20 19:36:22.667
cmawx039n00ng4wt9bl1h58ea	workspace	2025-05-20 19:36:22.667	2025-05-20 19:36:22.667
cmawx039n00nh4wt92oabomvk	home office	2025-05-20 19:36:22.667	2025-05-20 19:36:22.667
cmawx045k00q94wt9p1fptj2u	автомойка	2025-05-20 19:36:23.817	2025-05-20 19:36:23.817
cmawx045l00qa4wt9je9hgpbn	петербург	2025-05-20 19:36:23.817	2025-05-20 19:36:23.817
cmawx045l00qb4wt9ztdi8lhp	стас костюшкин	2025-05-20 19:36:23.817	2025-05-20 19:36:23.817
cmawx04ot00ru4wt9c6i0z9qd	прохор шаляпин	2025-05-20 19:36:24.509	2025-05-20 19:36:24.509
cmawx04ot00rv4wt93y94gswt	мастер по заточке	2025-05-20 19:36:24.509	2025-05-20 19:36:24.509
cmawx04zu00ss4wt91q0kz2q5	ps5	2025-05-20 19:36:24.907	2025-05-20 19:36:24.907
cmawx04zu00st4wt9etdgqxqn	playstation 5	2025-05-20 19:36:24.907	2025-05-20 19:36:24.907
cmawx04zu00su4wt96ky11u6t	accessories	2025-05-20 19:36:24.907	2025-05-20 19:36:24.907
cmawx04zu00sv4wt9su77i5xe	gaming	2025-05-20 19:36:24.907	2025-05-20 19:36:24.907
cmawx04zu00sw4wt9285epod0	playstation	2025-05-20 19:36:24.907	2025-05-20 19:36:24.907
cmawx04zu00sx4wt9kwsgwfv0	game	2025-05-20 19:36:24.907	2025-05-20 19:36:24.907
cmawx058q00to4wt9xg8o9g8y	games	2025-05-20 19:36:25.226	2025-05-20 19:36:25.226
cmawx058q00tr4wt9kyx8ftp4	xbox series x	2025-05-20 19:36:25.226	2025-05-20 19:36:25.226
cmawx058q00ts4wt9y34jt546	pc	2025-05-20 19:36:25.226	2025-05-20 19:36:25.226
cmawx058q00tt4wt96e68zrle	nintendo switch	2025-05-20 19:36:25.226	2025-05-20 19:36:25.226
cmawx05c600u64wt9w1tnbtw2	john summit	2025-05-20 19:36:25.351	2025-05-20 19:36:25.351
cmawx05c600u74wt90e9ad489	madison square garden	2025-05-20 19:36:25.351	2025-05-20 19:36:25.351
cmawx05c600u84wt9rp22ahgj	comfort in chaos	2025-05-20 19:36:25.351	2025-05-20 19:36:25.351
cmawx05c600u94wt9s2u1tqxh	live set	2025-05-20 19:36:25.351	2025-05-20 19:36:25.351
cmawx05v000vu4wt9ugk5vp3t	tears	2025-05-20 19:36:26.029	2025-05-20 19:36:26.029
cmawx05v000vv4wt9wkfzl5br	paige cavell	2025-05-20 19:36:26.029	2025-05-20 19:36:26.029
cmawx05v000vw4wt93t9eaphi	max styler	2025-05-20 19:36:26.029	2025-05-20 19:36:26.029
cmawx05v100vx4wt9iak4c7wd	remix	2025-05-20 19:36:26.029	2025-05-20 19:36:26.029
cmawx06ah00x84wt9xqgarj3j	cyberpunk	2025-05-20 19:36:26.586	2025-05-20 19:36:26.586
cmawx06ah00x94wt92fn55rpr	bladerunner	2025-05-20 19:36:26.586	2025-05-20 19:36:26.586
cmawx06ah00xa4wt99mq6700p	city	2025-05-20 19:36:26.586	2025-05-20 19:36:26.586
cmawx06ah00xb4wt945evgws1	night	2025-05-20 19:36:26.586	2025-05-20 19:36:26.586
cmawx06ah00xc4wt995j3w071	synthwave	2025-05-20 19:36:26.586	2025-05-20 19:36:26.586
cmawx06ah00xd4wt9ewvdlima	12 hours	2025-05-20 19:36:26.586	2025-05-20 19:36:26.586
cmawx06vz00yv4wt9rgke9mea	showreel	2025-05-20 19:36:27.359	2025-05-20 19:36:27.359
cmawx06vz00yw4wt928z4kcow	best	2025-05-20 19:36:27.359	2025-05-20 19:36:27.359
cmawx06vz00yx4wt9b81asscq	work	2025-05-20 19:36:27.359	2025-05-20 19:36:27.359
cmawx06vz00yy4wt9ofu7d6mm	portfolio	2025-05-20 19:36:27.359	2025-05-20 19:36:27.359
cmawx06vz00yz4wt9xp9gj2rr	visual	2025-05-20 19:36:27.359	2025-05-20 19:36:27.359
cmawx075500zq4wt9cxpc6e69	anyma	2025-05-20 19:36:27.69	2025-05-20 19:36:27.69
cmawx075500zr4wt9hmflijp1	we1	2025-05-20 19:36:27.69	2025-05-20 19:36:27.69
cmawx075500zs4wt9rjo87tn7	tomorrowland	2025-05-20 19:36:27.69	2025-05-20 19:36:27.69
cmawx075500zt4wt9vo1hijjb	2024	2025-05-20 19:36:27.69	2025-05-20 19:36:27.69
cmawx07mb01174wt9x1jku9k7	swedish house mafia	2025-05-20 19:36:28.308	2025-05-20 19:36:28.308
cmawx07mb01184wt98gk8qaxn	we2	2025-05-20 19:36:28.308	2025-05-20 19:36:28.308
cmc85xl300001ts96lybrnlen	dance	2025-06-22 21:11:32.589	2025-06-22 21:11:32.589
cmc85xl300002ts96fak0e4pf	love	2025-06-22 21:11:32.589	2025-06-22 21:11:32.589
cmc85xl300003ts960zphstr6	nature	2025-06-22 21:11:32.589	2025-06-22 21:11:32.589
cmcau0tly000mts968r61fe6m	love love	2025-06-24 18:01:26.75	2025-06-24 18:01:26.75
cmccnongd0010c7xfnmzrz67a	evening	2025-06-26 00:39:33.563	2025-06-26 00:39:33.563
cmccpdpr20015c7xf7hnfo64t	Bowl	2025-06-26 01:27:02.49	2025-06-26 01:27:02.49
cmccpdpr20016c7xfrx6itgjl	Kendrick	2025-06-26 01:27:02.49	2025-06-26 01:27:02.49
cmcd9m4w1001ec7xfhmz723e0	mountain	2025-06-26 10:53:27.679	2025-06-26 10:53:27.679
cmcd9m4w1001fc7xfnbu7vhyc	beauty	2025-06-26 10:53:27.679	2025-06-26 10:53:27.679
\.


--
-- Data for Name: watch_history; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.watch_history (id, user_id, video_id, watched_at) FROM stdin;
cmcf32nf60018goh0v0c1mx1u	cmbhzh70200028ljx91rnqmnl	cmawx075500zp4wt9vhrtayh9	2025-06-27 17:30:16.93
cmc59biv8000bag450ke7ak36	cmawwzvs700064wt9b2g2pz3k	cmawx02ob00lj4wt9rqrd4trk	2025-06-20 20:24:00.921
cmc59ddm0000jag45fsaxp6pd	cmawwzvs700064wt9b2g2pz3k	cmawx075500zp4wt9vhrtayh9	2025-06-20 20:24:29.736
cmc59dhxo000pag45ahvwvm6p	cmawwzvs700064wt9b2g2pz3k	cmawx05c600u54wt9mg02c50q	2025-06-20 20:24:35.337
cmc6vt6170003hxs9ysauuk2t	cmawwzvog00004wt9mwvejbx1	cmawwzy9q007o4wt9xhmlilnb	2025-06-22 00:10:49.812
cmcd9m7mr001hc7xfqdcd83f3	cmbhzh70200028ljx91rnqmnl	cmcd9m4w0001cc7xfi6w9f09r	2025-06-26 11:47:21.776
cmc6wwwel001ihxs963riqviy	cmawwzvs700064wt9b2g2pz3k	cmawx05v000vs4wt9i59jkfuz	2025-06-22 00:11:17.897
cmc6wbvtf000phxs9m8h6tof8	cmawwzvog00004wt9mwvejbx1	cmawx07mb01164wt9y44dhos0	2025-06-25 16:37:22.786
cmccpe7lv001bc7xfqtolifjq	cmbhzh70200028ljx91rnqmnl	cmccnongc000wc7xfsyd8hr37	2025-06-26 13:32:27.668
cmc6wp9dp0019hxs9tpgpu3u2	cmawwzvog00004wt9mwvejbx1	cmawx075500zp4wt9vhrtayh9	2025-06-22 00:16:53.797
cmc6woenm0015hxs99bced9hr	cmawwzvog00004wt9mwvejbx1	cmawwzz6t00b44wt90h6ua44t	2025-06-22 13:01:21.243
cmcciacmc0013kovgz9is7f9m	cmawwzvog00004wt9mwvejbx1	cmawx039n00ne4wt96w5xleul	2025-06-25 22:08:28.164
cmc58j36f0007ag4559dpwkcd	cmawwzvs700064wt9b2g2pz3k	cmawx045k00q74wt9igaq26lw	2025-06-20 20:44:23.878
cmc5a9pv3001vag45dvrpkioi	cmawwzvs700064wt9b2g2pz3k	cmawx039n00ne4wt96w5xleul	2025-06-20 20:53:06.155
cmc58aqsx0001ag45l0emeox4	cmbhzh70200028ljx91rnqmnl	cmawx07mb01164wt9y44dhos0	2025-06-27 19:27:28.064
cmc5azjnt002bag45gu5xr4ti	cmawwzvog00004wt9mwvejbx1	cmawx05c600u54wt9mg02c50q	2025-06-25 09:28:06.403
cmccmja6q000hc7xf11bzat6e	cmbhzh70200028ljx91rnqmnl	cmawx05v000vs4wt9i59jkfuz	2025-06-26 00:07:23.421
cmccmlhtz000lc7xfb3guc0fa	cmbhzh70200028ljx91rnqmnl	cmawx039n00ne4wt96w5xleul	2025-06-26 00:09:06.696
cmcf7g77z0015t1am0cokr1to	cmbhzh70200028ljx91rnqmnl	cmawwzz6t00b44wt90h6ua44t	2025-06-27 19:28:28.201
cmcf0h7jg000kgoh0twmy2x1z	cmawwzvs700064wt9b2g2pz3k	cmcd9m4w0001cc7xfi6w9f09r	2025-06-27 16:13:13.709
cmcc4vyo1000dkovgiwnmkv25	cmawwzvog00004wt9mwvejbx1	cmawx058p00tn4wt980t6tgzf	2025-06-25 15:53:21.983
cmcdgfamy003sc7xfwk7tl11y	cmawwzvog00004wt9mwvejbx1	cmcdfac4c002gc7xfocmkpodv	2025-06-26 14:04:05.922
cmcdfane1002oc7xfk8q2w46n	cmbhzh70200028ljx91rnqmnl	cmcdfac4c002gc7xfocmkpodv	2025-06-27 16:15:08.985
cmcdgfgm40040c7xf2ppwyan2	cmawwzvog00004wt9mwvejbx1	cmcd9m4w0001cc7xfi6w9f09r	2025-06-26 14:04:13.649
cmcdgfjrc0046c7xfe7bo7l8l	cmawwzvog00004wt9mwvejbx1	cmccnongc000wc7xfsyd8hr37	2025-06-26 14:04:17.735
cmccn36dw000pc7xf1k3c0ut5	cmbhzh70200028ljx91rnqmnl	cmawx05c600u54wt9mg02c50q	2025-06-27 16:27:12.99
cmc5a8cs0001rag45gernltf5	cmawwzvs700064wt9b2g2pz3k	cmawx07mb01164wt9y44dhos0	2025-06-27 19:07:57.866
\.


--
-- Statistics for Name: _ChannelToUser; Type: STATISTICS DATA; Schema: public; Owner: -
--

SELECT * FROM pg_catalog.pg_restore_relation_stats(
	'version', '180000'::integer,
	'schemaname', 'public',
	'relname', '_ChannelToUser',
	'relpages', '1'::integer,
	'reltuples', '11'::real,
	'relallvisible', '0'::integer,
	'relallfrozen', '0'::integer
);
SELECT * FROM pg_catalog.pg_restore_attribute_stats(
	'version', '180000'::integer,
	'schemaname', 'public',
	'relname', '_ChannelToUser',
	'attname', 'A',
	'inherited', 'f'::boolean,
	'null_frac', '0'::real,
	'avg_width', '26'::integer,
	'n_distinct', '-0.6363636'::real,
	'most_common_vals', '{cmawwzvz1000j4wt9qrdl91ks,cmawwzvok00014wt9uin2kpaw,cmawwzvws000f4wt9yoogtf4r}'::text,
	'most_common_freqs', '{0.27272728,0.18181819,0.18181819}'::real[],
	'histogram_bounds', '{cmawwzvr500054wt9ahq5ovxu,cmawwzvtc00094wt92ot2cfpt,cmawwzvuj000b4wt9me35pnha,cmcclfbz60016kovgwtkmg3so}'::text,
	'correlation', '0.38181818'::real
);
SELECT * FROM pg_catalog.pg_restore_attribute_stats(
	'version', '180000'::integer,
	'schemaname', 'public',
	'relname', '_ChannelToUser',
	'attname', 'B',
	'inherited', 'f'::boolean,
	'null_frac', '0'::real,
	'avg_width', '26'::integer,
	'n_distinct', '-0.45454547'::real,
	'most_common_vals', '{cmawwzvog00004wt9mwvejbx1,cmbhzh70200028ljx91rnqmnl}'::text,
	'most_common_freqs', '{0.45454547,0.27272728}'::real[],
	'histogram_bounds', '{cmawwzvs700064wt9b2g2pz3k,cmceyhpsg0001jzcd7jp4m7ai,cmcf0c2f20000goh0p0ghztyx}'::text,
	'correlation', '0.91818184'::real
);


--
-- Statistics for Name: _PlaylistToVideo; Type: STATISTICS DATA; Schema: public; Owner: -
--

SELECT * FROM pg_catalog.pg_restore_relation_stats(
	'version', '180000'::integer,
	'schemaname', 'public',
	'relname', '_PlaylistToVideo',
	'relpages', '0'::integer,
	'reltuples', '-1'::real,
	'relallvisible', '0'::integer,
	'relallfrozen', '0'::integer
);


--
-- Statistics for Name: _video_tags; Type: STATISTICS DATA; Schema: public; Owner: -
--

SELECT * FROM pg_catalog.pg_restore_relation_stats(
	'version', '180000'::integer,
	'schemaname', 'public',
	'relname', '_video_tags',
	'relpages', '3'::integer,
	'reltuples', '197'::real,
	'relallvisible', '0'::integer,
	'relallfrozen', '0'::integer
);
SELECT * FROM pg_catalog.pg_restore_attribute_stats(
	'version', '180000'::integer,
	'schemaname', 'public',
	'relname', '_video_tags',
	'attname', 'A',
	'inherited', 'f'::boolean,
	'null_frac', '0'::real,
	'avg_width', '26'::integer,
	'n_distinct', '-0.15228426'::real,
	'most_common_vals', '{cmawwzwjx00224wt9t8q7kpgp,cmawwzvz4000l4wt9zrxi2iwe,cmawwzwsu00324wt96rnd6hm0,cmawwzyfi008c4wt9jtn3qcrs,cmawx02ob00lj4wt9rqrd4trk,cmawwzx55004a4wt9c8fsokbr,cmawwzy9q007o4wt9xhmlilnb,cmawwzyhv008s4wt9oma34pg0,cmawwzyvh00a14wt9cj7f36vb,cmawwzz6t00b44wt90h6ua44t,cmawwzzm900ca4wt93qtus3e5,cmawx006l00dy4wt9j9hdbiaz,cmawx00or00fj4wt9wtc8azz4,cmawx012x00gm4wt9bzlnwl97,cmawx01ph00ia4wt9oj70r7v0,cmawx058p00tn4wt980t6tgzf,cmawx05v000vs4wt9i59jkfuz,cmawwzxqt00614wt9oeruk8dx,cmawx026c00js4wt9t45otcch,cmawx04zu00sr4wt90ejbktsa,cmawx05c600u54wt9mg02c50q,cmawx06ah00x74wt9ydhtje39,cmawx075500zp4wt9vhrtayh9,cmawx07mb01164wt9y44dhos0,cmawx028p00k64wt9u1hmtoh4,cmawx039n00ne4wt96w5xleul,cmawx03sg00p04wt9vpd3ggrw,cmawx06vz00yu4wt9bc7s0gml,cmawx045k00q74wt9igaq26lw,cmawx04ot00rs4wt93cg994tl}'::text,
	'most_common_freqs', '{0.05076142,0.04568528,0.04568528,0.040609136,0.040609136,0.035532996,0.035532996,0.035532996,0.035532996,0.035532996,0.035532996,0.035532996,0.035532996,0.035532996,0.035532996,0.035532996,0.035532996,0.030456852,0.030456852,0.030456852,0.030456852,0.030456852,0.030456852,0.030456852,0.02538071,0.02538071,0.02538071,0.02538071,0.020304568,0.015228426}'::real[],
	'correlation', '1'::real
);
SELECT * FROM pg_catalog.pg_restore_attribute_stats(
	'version', '180000'::integer,
	'schemaname', 'public',
	'relname', '_video_tags',
	'attname', 'B',
	'inherited', 'f'::boolean,
	'null_frac', '0'::real,
	'avg_width', '26'::integer,
	'n_distinct', '-0.680203'::real,
	'most_common_vals', '{cmawwzy9q007p4wt923ood4kd,cmawx028q00ka4wt9si1i0epl,cmawx028q00kb4wt9r955lxxz,cmawwzvz4000s4wt9v7kgf4s3,cmawwzvz4000t4wt9jqlk94yt,cmawwzvz4000u4wt9olakkk1z,cmawwzyfi008g4wt9rjs1bjzj,cmawwzvz4000p4wt9ko7iu84e,cmawwzvz4000q4wt94cf6vg1b,cmawwzvz4000r4wt9igt7hcwr,cmawwzzm900ch4wt9ed0x9gxu,cmawx00or00fm4wt9jx1tzps4,cmawwzvz4000n4wt9lo8vkyrv,cmawwzyfi008d4wt98ojgkbr8,cmawwzyhw008u4wt9echojapz,cmawwzyhw008v4wt9bl4c8dq0,cmawwzzm900cc4wt9qbip2fpj,cmawx006l00dz4wt9ackv0j7x,cmawx006l00e04wt9h1ulo4cr,cmawx006l00e14wt90526xir3,cmawx006l00e34wt9ai4z8w9l,cmawx006l00e44wt9luyuoc1c,cmawx006l00e54wt9iarhpmqv,cmawx00or00fk4wt9viwhqrdu,cmawx00or00fp4wt94y93emh0,cmawx039n00nf4wt9lrpxl1ol,cmawx039n00ng4wt9bl1h58ea,cmawx039n00nh4wt92oabomvk,cmawx04zu00st4wt9etdgqxqn,cmawx04zu00sv4wt9su77i5xe,cmawx04zu00sx4wt9kwsgwfv0,cmawx05c600u64wt9w1tnbtw2,cmawx075500zs4wt9rjo87tn7,cmawx075500zt4wt9vo1hijjb}'::text,
	'most_common_freqs', '{0.030456852,0.030456852,0.030456852,0.02538071,0.02538071,0.02538071,0.02538071,0.015228426,0.015228426,0.015228426,0.015228426,0.015228426,0.010152284,0.010152284,0.010152284,0.010152284,0.010152284,0.010152284,0.010152284,0.010152284,0.010152284,0.010152284,0.010152284,0.010152284,0.010152284,0.010152284,0.010152284,0.010152284,0.010152284,0.010152284,0.010152284,0.010152284,0.010152284,0.010152284}'::real[],
	'histogram_bounds', '{cmawwzvz4000m4wt9cocl4os9,cmawwzvz4000o4wt9ju73sis1,cmawwzwjx00274wt9299lw8sj,cmawwzwjx00284wt9plhi1d59,cmawwzwjy00294wt9ijdwttp8,cmawwzwsu00364wt98uy37kp5,cmawwzwsu00374wt9s0vi40li,cmawwzwsu00384wt944rsphiv,cmawwzwsu00394wt9dnq8y0hu,cmawwzx55004b4wt9wyr6iqyd,cmawwzx55004c4wt9r5lb024c,cmawwzx55004d4wt9mlfie51z,cmawwzx55004e4wt9kilnae4y,cmawwzx55004f4wt9whgas7ge,cmawwzx55004g4wt9j3thatpz,cmawwzx56004h4wt9uwx9e5b8,cmawwzxqt00624wt94oajdo9a,cmawwzxqt00634wt920duv6h1,cmawwzxqt00644wt963242lvv,cmawwzxqt00654wt9ydo2ixyd,cmawwzxqt00664wt9re7yad8i,cmawwzxqt00674wt9jla5y5rd,cmawwzy9q007q4wt9eifyog5h,cmawwzy9q007r4wt9yv4zwggz,cmawwzy9q007s4wt9zerpsbre,cmawwzy9q007t4wt9djdwbycs,cmawwzy9q007u4wt94r8hfoog,cmawwzy9q007v4wt9ezumozgk,cmawwzyfi008f4wt91xz8sjpq,cmawwzyfi008h4wt99lr69z9x,cmawwzyfi008i4wt9aq9kzy7p,cmawwzyfi008j4wt9ftey6jhp,cmawwzyfi008k4wt9wj5ejimk,cmawwzyhw008t4wt9iihgob9j,cmawwzyhw008x4wt9ekh0o30d,cmawwzyhw008y4wt92cdz663l,cmawwzyhw008z4wt9nytvd9xv,cmawwzyvi00a24wt9sa35mx2s,cmawwzyvi00a34wt9kfl81reh,cmawwzyvi00a44wt9hdtv1nfl,cmawwzz6t00b74wt9iegsb475,cmawwzz6t00b84wt9edkwusba,cmawwzz6t00b94wt9dhpmled8,cmawwzz6t00ba4wt9vtkou8vu,cmawwzz6t00bb4wt942s16r8d,cmawwzzm900cd4wt9azjauzva,cmawwzzm900ce4wt9rl6kuhg3,cmawwzzm900cf4wt9j3tgbbj0,cmawwzzm900cg4wt9jyeiurg9,cmawx00or00fl4wt92r03w4u7,cmawx00or00fn4wt9ljhl4obh,cmawx00or00fo4wt9ht8t35k0,cmawx01ph00id4wt9zv7dy3rp,cmawx01ph00ig4wt9u46rb0bx,cmawx01ph00ih4wt9m6toz3lc,cmawx026c00jx4wt9jfd4tf9o,cmawx026c00jy4wt92z08eln3,cmawx028q00k74wt9f1kdg5t9,cmawx028q00k84wt9mm9x7ker,cmawx028q00k94wt92jdo2jdo,cmawx02ob00lk4wt9zz3kvli1,cmawx02ob00ll4wt93ub7n5az,cmawx02ob00lm4wt9px5roe6n,cmawx02ob00ln4wt9p19k14df,cmawx02ob00lo4wt9795xwjlk,cmawx02ob00lp4wt906ggya1q,cmawx045k00q94wt9p1fptj2u,cmawx045l00qa4wt9je9hgpbn,cmawx045l00qb4wt9ztdi8lhp,cmawx04ot00ru4wt9c6i0z9qd,cmawx04ot00rv4wt93y94gswt,cmawx04zu00ss4wt91q0kz2q5,cmawx04zu00su4wt96ky11u6t,cmawx04zu00sw4wt9285epod0,cmawx058q00to4wt9xg8o9g8y,cmawx058q00tr4wt9kyx8ftp4,cmawx058q00ts4wt9y34jt546,cmawx058q00tt4wt96e68zrle,cmawx05c600u74wt90e9ad489,cmawx05c600u84wt9rp22ahgj,cmawx05c600u94wt9s2u1tqxh,cmawx05v000vu4wt9ugk5vp3t,cmawx05v000vv4wt9wkfzl5br,cmawx05v000vw4wt93t9eaphi,cmawx05v100vx4wt9iak4c7wd,cmawx06ah00x84wt9xqgarj3j,cmawx06ah00x94wt92fn55rpr,cmawx06ah00xa4wt99mq6700p,cmawx06ah00xb4wt945evgws1,cmawx06ah00xc4wt995j3w071,cmawx06ah00xd4wt9ewvdlima,cmawx06vz00yv4wt9rgke9mea,cmawx06vz00yw4wt928z4kcow,cmawx06vz00yx4wt9b81asscq,cmawx06vz00yy4wt9ofu7d6mm,cmawx06vz00yz4wt9xp9gj2rr,cmawx075500zq4wt9cxpc6e69,cmawx075500zr4wt9hmflijp1,cmawx07mb01174wt9x1jku9k7,cmawx07mb01184wt98gk8qaxn}'::text,
	'correlation', '0.89856035'::real
);


--
-- Statistics for Name: channel; Type: STATISTICS DATA; Schema: public; Owner: -
--

SELECT * FROM pg_catalog.pg_restore_relation_stats(
	'version', '180000'::integer,
	'schemaname', 'public',
	'relname', 'channel',
	'relpages', '0'::integer,
	'reltuples', '-1'::real,
	'relallvisible', '0'::integer,
	'relallfrozen', '0'::integer
);


--
-- Statistics for Name: playlist; Type: STATISTICS DATA; Schema: public; Owner: -
--

SELECT * FROM pg_catalog.pg_restore_relation_stats(
	'version', '180000'::integer,
	'schemaname', 'public',
	'relname', 'playlist',
	'relpages', '0'::integer,
	'reltuples', '-1'::real,
	'relallvisible', '0'::integer,
	'relallfrozen', '0'::integer
);


--
-- Statistics for Name: user; Type: STATISTICS DATA; Schema: public; Owner: -
--

SELECT * FROM pg_catalog.pg_restore_relation_stats(
	'version', '180000'::integer,
	'schemaname', 'public',
	'relname', 'user',
	'relpages', '12'::integer,
	'reltuples', '376'::real,
	'relallvisible', '0'::integer,
	'relallfrozen', '0'::integer
);
SELECT * FROM pg_catalog.pg_restore_attribute_stats(
	'version', '180000'::integer,
	'schemaname', 'public',
	'relname', 'user',
	'attname', 'created_at',
	'inherited', 'f'::boolean,
	'null_frac', '0'::real,
	'avg_width', '8'::integer,
	'n_distinct', '-1'::real,
	'histogram_bounds', '{"2025-05-20 19:36:12.832","2025-05-20 19:36:12.968","2025-05-20 19:36:13.132","2025-05-20 19:36:13.342","2025-05-20 19:36:13.621","2025-05-20 19:36:13.765","2025-05-20 19:36:13.925","2025-05-20 19:36:14.093","2025-05-20 19:36:14.247","2025-05-20 19:36:14.375","2025-05-20 19:36:14.534","2025-05-20 19:36:14.691","2025-05-20 19:36:14.856","2025-05-20 19:36:14.978","2025-05-20 19:36:15.193","2025-05-20 19:36:15.35","2025-05-20 19:36:15.505","2025-05-20 19:36:15.637","2025-05-20 19:36:15.793","2025-05-20 19:36:15.955","2025-05-20 19:36:16.111","2025-05-20 19:36:16.239","2025-05-20 19:36:16.397","2025-05-20 19:36:16.567","2025-05-20 19:36:16.727","2025-05-20 19:36:16.855","2025-05-20 19:36:17.018","2025-05-20 19:36:17.174","2025-05-20 19:36:17.333","2025-05-20 19:36:17.468","2025-05-20 19:36:17.625","2025-05-20 19:36:17.882","2025-05-20 19:36:18.079","2025-05-20 19:36:18.207","2025-05-20 19:36:18.383","2025-05-20 19:36:18.542","2025-05-20 19:36:18.717","2025-05-20 19:36:18.838","2025-05-20 19:36:18.998","2025-05-20 19:36:19.157","2025-05-20 19:36:19.322","2025-05-20 19:36:19.451","2025-05-20 19:36:19.648","2025-05-20 19:36:19.886","2025-05-20 19:36:20.092","2025-05-20 19:36:20.226","2025-05-20 19:36:20.419","2025-05-20 19:36:20.603","2025-05-20 19:36:20.776","2025-05-20 19:36:20.895","2025-05-20 19:36:21.052","2025-05-20 19:36:21.211","2025-05-20 19:36:21.384","2025-05-20 19:36:21.501","2025-05-20 19:36:21.658","2025-05-20 19:36:21.818","2025-05-20 19:36:21.985","2025-05-20 19:36:22.1","2025-05-20 19:36:22.259","2025-05-20 19:36:22.428","2025-05-20 19:36:22.587","2025-05-20 19:36:22.711","2025-05-20 19:36:22.867","2025-05-20 19:36:23.03","2025-05-20 19:36:23.184","2025-05-20 19:36:23.304","2025-05-20 19:36:23.468","2025-05-20 19:36:23.623","2025-05-20 19:36:23.777","2025-05-20 19:36:23.9","2025-05-20 19:36:24.069","2025-05-20 19:36:24.226","2025-05-20 19:36:24.387","2025-05-20 19:36:24.507","2025-05-20 19:36:24.674","2025-05-20 19:36:24.829","2025-05-20 19:36:24.991","2025-05-20 19:36:25.108","2025-05-20 19:36:25.271","2025-05-20 19:36:25.435","2025-05-20 19:36:25.592","2025-05-20 19:36:25.708","2025-05-20 19:36:25.866","2025-05-20 19:36:26.027","2025-05-20 19:36:26.195","2025-05-20 19:36:26.312","2025-05-20 19:36:26.466","2025-05-20 19:36:26.645","2025-05-20 19:36:26.861","2025-05-20 19:36:26.977","2025-05-20 19:36:27.151","2025-05-20 19:36:27.316","2025-05-20 19:36:27.492","2025-05-20 19:36:27.61","2025-05-20 19:36:27.778","2025-05-20 19:36:27.948","2025-05-20 19:36:28.106","2025-05-20 19:36:28.225","2025-05-20 19:36:28.394","2025-05-20 19:36:28.577","2025-05-20 19:36:28.787"}'::text,
	'correlation', '1'::real
);
SELECT * FROM pg_catalog.pg_restore_attribute_stats(
	'version', '180000'::integer,
	'schemaname', 'public',
	'relname', 'user',
	'attname', 'email',
	'inherited', 'f'::boolean,
	'null_frac', '0'::real,
	'avg_width', '24'::integer,
	'n_distinct', '-1'::real,
	'histogram_bounds', '{Aaliyah.Zieme4@hotmail.com,Adella.Conroy@hotmail.com,Afton_Rippin@gmail.com,Al47@yahoo.com,Alfonzo.Hodkiewicz8@yahoo.com,Ally38@gmail.com,Amparo_Medhurst@gmail.com,Andreane_Jakubowski@hotmail.com,Angelica39@hotmail.com,Anjali.DAmore5@yahoo.com,Arjun_Kling@gmail.com,Augustus.Ruecker@gmail.com,Bennett99@yahoo.com,Bernhard73@yahoo.com,Branson.Weber0@yahoo.com,Buck67@hotmail.com,Camylle.Cassin36@gmail.com,Carlo_Blanda8@hotmail.com,Carolyne_Pollich98@hotmail.com,Chad62@hotmail.com,Chet_Gorczany@gmail.com,Claudia.Schoen86@yahoo.com,Damaris34@hotmail.com,Darrell_Dickinson21@gmail.com,Deonte.Flatley@hotmail.com,Domingo.Parisian@yahoo.com,Edison38@hotmail.com,Elena.Hintz@gmail.com,Elyssa.Veum@hotmail.com,Emery_Nicolas38@gmail.com,Emmet.Johns92@hotmail.com,Ernest45@gmail.com,Evans3@yahoo.com,Felicity_Mayert@yahoo.com,Finn_Larson@yahoo.com,Frederick55@yahoo.com,Gene55@yahoo.com,Gilbert_Thiel@yahoo.com,Gwen_Aufderhar58@yahoo.com,Hellen_Hodkiewicz25@gmail.com,Hilda.Metz@hotmail.com,Holden_Cummerata@gmail.com,Imani8@gmail.com,Jacinto_Gerlach@yahoo.com,Jakob_Beier@hotmail.com,Jamil_Waters@yahoo.com,Jayde.Rolfson27@gmail.com,Jedediah.Frami90@gmail.com,Jevon_Schaden@hotmail.com,Joany95@hotmail.com,Jordon.Stroman93@yahoo.com,Junius_Mertz16@hotmail.com,Kameron15@gmail.com,Karl65@hotmail.com,Kayden.Larkin@hotmail.com,Kenyatta_Orn25@yahoo.com,Kyle76@gmail.com,Laron.Prosacco67@gmail.com,Leann_Feeney@gmail.com,Lesly_Bartell-Schmitt97@gmail.com,Lindsay_Runte20@yahoo.com,Lonny_Klein@gmail.com,Loyce.Roob@yahoo.com,Lysanne.Schmeler88@yahoo.com,Mandy67@gmail.com,Marian.Schoen@hotmail.com,Marlin.McLaughlin@gmail.com,Marvin.Shanahan56@gmail.com,Maximillian47@yahoo.com,Melany.Zemlak@hotmail.com,Merl.Kiehn-Grant56@gmail.com,Miracle_Mosciski42@hotmail.com,Mose.Boehm@hotmail.com,Myrtie.Howe2@gmail.com,Natalia.Legros@gmail.com,Nicholas66@yahoo.com,Nolan53@hotmail.com,Patrick.VonRueden75@yahoo.com,Priscilla41@gmail.com,Ramiro.Klocko@gmail.com,Raymundo84@hotmail.com,Reinhold.Medhurst73@gmail.com,Richie_Huels75@yahoo.com,Roel26@hotmail.com,Rosetta58@hotmail.com,Roxanne47@hotmail.com,Savion_Steuber@yahoo.com,Shanel_Kozey89@gmail.com,Spencer.Monahan87@yahoo.com,Sunny_Williamson44@hotmail.com,Tania52@hotmail.com,Theresa71@yahoo.com,Twila_Emmerich92@yahoo.com,Tyshawn17@gmail.com,Verona_Macejkovic@hotmail.com,Wayne_Wolff73@hotmail.com,Wilbert.Zulauf14@hotmail.com,Xander.Abbott@hotmail.com,johnsummit@test.com,redgroup-plus@test.com,visualdon@test.com}'::text,
	'correlation', '-0.04217868'::real
);
SELECT * FROM pg_catalog.pg_restore_attribute_stats(
	'version', '180000'::integer,
	'schemaname', 'public',
	'relname', 'user',
	'attname', 'id',
	'inherited', 'f'::boolean,
	'null_frac', '0'::real,
	'avg_width', '26'::integer,
	'n_distinct', '-1'::real,
	'histogram_bounds', '{cmawwzvog00004wt9mwvejbx1,cmawwzvs700064wt9b2g2pz3k,cmawwzvwr000e4wt9y3pkqm8k,cmawwzw2l000y4wt90j5gor81,cmawwzwad001a4wt9nbwzbeh8,cmawwzwed001j4wt9jhe2amid,cmawwzwis001v4wt9nyb6k54x,cmawwzwng002j4wt9ay2cdg5l,cmawwzwrq002v4wt91xc5gylw,cmawwzwvb003f4wt9qjz18ez4,cmawwzwzq003r4wt9omsrjpfl,cmawwzx4200434wt9llisglvn,cmawwzx8n004o4wt9xs8pxzwk,cmawwzxc1004x4wt9yoiexeq2,cmawwzxi000594wt9s2jcmzu1,cmawwzxmd005l4wt9y4klb4gm,cmawwzxqo005x4wt9a0weoo7g,cmawwzxuc006e4wt9f6dlzeq5,cmawwzxyp006q4wt9ot90j4yh,cmawwzy3700724wt905kzm4a4,cmawwzy7j007e4wt9b0fri5uf,cmawwzyb2007w4wt9mabhw94k,cmawwzyfg00884wt9929g152g,cmawwzyk700934wt9grv58ybr,cmawwzyom009f4wt9nz6da0r0,cmawwzys6009o4wt9mix1qecd,cmawwzywp00a94wt9lrsycrkc,cmawwzz1200al4wt9ljxtcfxb,cmawwzz5h00ax4wt9b6bbw8wr,cmawwzz9700bf4wt9dcpv2z0l,cmawwzzdl00br4wt9nwdjsp3g,cmawwzzkp00c34wt9fm494xkg,cmawwzzq600co4wt9rzxsthxb,cmawwzztr00cx4wt9qq5rw4um,cmawwzzym00d94wt9k2ttvs4u,cmawx003200dl4wt9d1sbec2s,cmawx007w00e64wt9kgxvro8y,cmawx00ba00ef4wt9hwqze0os,cmawx00fq00er4wt9gxcv9k62,cmawx00k500f34wt9o9kl700o,cmawx00oq00ff4wt9bxdsegik,cmawx00sa00fx4wt9p4ejnyu7,cmawx00xr00g94wt9muhxlxht,cmawx014e00gu4wt9dlkf0jl8,cmawx01a400h64wt9sfovsfxd,cmawx01du00hf4wt9zz1xga5p,cmawx01j700hr4wt9ya769qtu,cmawx01ob00i34wt98ubjbyit,cmawx01t400io4wt9t8d89kfq,cmawx01wf00ix4wt9531zup6j,cmawx020s00j94wt956qngpka,cmawx025700jl4wt9z1gemvum,cmawx02a000kc4wt9auc6lspx,cmawx02d900kl4wt92393kcrm,cmawx02hm00kx4wt9zeuirv6y,cmawx02m200l94wt9ne00mnrp,cmawx02qo00lv4wt903hb8d1a,cmawx02tw00m44wt9vwy611ca,cmawx02yb00mg4wt98c6j1ae5,cmawx032z00ms4wt9qod3bdk1,cmawx037f00n44wt9fhip1xeo,cmawx03av00nk4wt9l36xdtfk,cmawx03f700nw4wt9ckw0430u,cmawx03jp00o84wt95jo248a9,cmawx03o000ok4wt9eqmxvgxq,cmawx03rc00ot4wt9qqavdmib,cmawx03vv00pc4wt9gqzcgsbs,cmawx040600po4wt9ynefrl58,cmawx044g00q04wt9gkj0gc35,cmawx047w00qf4wt9u70jfqoj,cmawx04ck00qr4wt9iqqcu8xq,cmawx04gy00r34wt9b8nnqaf4,cmawx04le00rf4wt98hlgtqeh,cmawx04or00ro4wt95v1b9okj,cmawx04te00s54wt9n42xbve9,cmawx04xo00sh4wt9vwwyjxu8,cmawx052700t14wt96bg857ib,cmawx055g00ta4wt9s8eacatg,cmawx059y00tv4wt9c2ds6rfh,cmawx05ei00uf4wt9u3ordop4,cmawx05iv00ur4wt9jde3cpw1,cmawx05m400v04wt9s6dh57r2,cmawx05qi00vc4wt95gshele6,cmawx05uz00vo4wt95dq1kf49,cmawx05zm00w94wt925die3zs,cmawx062v00wi4wt9ewngfxpb,cmawx067600wu4wt93e4kdpvm,cmawx06c500xe4wt9uuxtzqli,cmawx06i400xq4wt9lmjcotce,cmawx06lc00xz4wt9jlmzjyg3,cmawx06q700yb4wt9pu2xfv22,cmawx06ur00yn4wt925tnwy6b,cmawx06zo00z64wt9ycnj74be,cmawx072y00zf4wt9iz8xkldm,cmawx077l00zz4wt93qnn2bdv,cmawx07cc010b4wt9l62qtltp,cmawx07gp010n4wt92txez2a6,cmawx07k1010w4wt92040f2pe,cmawx07op011g4wt9wt7tktst,cmawx07ts011s4wt9n5y2er8t,cmawx07zn01244wt96f9fxrhr}'::text,
	'correlation', '1'::real
);
SELECT * FROM pg_catalog.pg_restore_attribute_stats(
	'version', '180000'::integer,
	'schemaname', 'public',
	'relname', 'user',
	'attname', 'name',
	'inherited', 'f'::boolean,
	'null_frac', '0'::real,
	'avg_width', '15'::integer,
	'n_distinct', '-1'::real,
	'histogram_bounds', '{"Abel Gibson","Alan Wintheiser","Alton McCullough DDS","Angel Prosacco MD","Benny Rogahn","Betty Cruickshank","Blake Batz","Bradford Parisian","Caroline Ward","Cathy Blick","Chester Dibbert MD","Christopher Friesen-Kuhlman","Colleen Stiedemann","Curtis Rempel","Dallas Zieme","Daniel Hahn","Darrell Funk","David Wisozk","Debbie McDermott DVM","Dennis Fahey","Dewey Renner","Diane Batz","Don Kutch","Dr. Dorothy Dicki","Dr. Guillermo Koch","Dr. Lester Daniel","Dr. Ramona Renner","Dr. Verna Runolfsson","Dwight Beer","Elijah Mante","Emily White","Estelle Koepp","Fannie Wyman","Francis Rodriguez","Georgia Schimmel","Ginger Schaden","Greg Rosenbaum","Gwen Nikolaus","Herman Cartwright","Horace Douglas","Ida Kutch","Jackie Hirthe","Jana Goyette II","Jeanette Schneider MD","Joan Veum","John Cummings","Jon Kuhlman","Joseph Schultz","Julian Fisher","Kathy Bins PhD","Kelvin Satterfield","Kerry Kuhn","Kirk Dare","Latoya Bradtke","Leah Hessel","Leo Runte","Lillie Hansen","Lois Lubowitz","Luis Ritchie","Lynette Bernhard","Marc McLaughlin","Margie Hauck","Marjorie Schamberger","Maryann Koepp","Melba Kilback","Miguel Nicolas","Miss Joyce Kuphal","Misty Schamberger","Monica Waelchi","Mr. Carlton Sauer","Mr. Gene Howe-Fritsch","Mr. Ramon Bosco","Mrs. Christine Schuppe","Ms. Courtney Blanda","Ms. Melanie Gibson","Natalie Osinski","Nicolas Ankunding","Owen Volkman","Patsy Windler","Peggy McGlynn","Priscilla Hessel","Rachael Braun","Ramiro Rutherford","Rex Waelchi","Robert Breitenberg","Rogelio Hyatt","Roxanne Harber","Rudolph Sipes","Sammy Wolff II","Saul Abshire","Shane Gleichner","Shelley O''Hara","Sidney Willms","Sonya Renner-Fay","Stacy Mayer","Tasha Rath","Toby Hermann","Travis Hamill","Vanessa Rohan","Victor Wolff Jr.","Wilson Turner-Kertzmann"}'::text,
	'correlation', '-0.107551664'::real
);
SELECT * FROM pg_catalog.pg_restore_attribute_stats(
	'version', '180000'::integer,
	'schemaname', 'public',
	'relname', 'user',
	'attname', 'password',
	'inherited', 'f'::boolean,
	'null_frac', '0'::real,
	'avg_width', '98'::integer,
	'n_distinct', '-1'::real,
	'histogram_bounds', '{"$argon2id$v=19$m=65536,t=3,p=4$+1aBtW6JBW6uTFzimLHRQg$kKZm4RdqZW6uOmInuHeGehquExDjwF1wVxNcfdr/YC0","$argon2id$v=19$m=65536,t=3,p=4$+gemHX4aPz8YNoabx0ykmw$tTok1Gw7L4AQWCuNp5gy1SgrGjCsfOYuNIDX97R/niY","$argon2id$v=19$m=65536,t=3,p=4$/6YLAcdI9poRtuY5zc/1cg$8KpycYO1UUKAxcd4XvgB6fPGVDpRUcjq+kWskEX48Io","$argon2id$v=19$m=65536,t=3,p=4$/RVq/8iIf99E1FDxEWgywA$vkP2sVbWBMKJ/L+zOjhbVr4r7CgJW3R3ictevNfUKHs","$argon2id$v=19$m=65536,t=3,p=4$0FDpUlnzG1p+TayBC40acw$TgE+d/8XzTdRcIDNLSiIKbLPDBlOsACbvxvbQMtkGLE","$argon2id$v=19$m=65536,t=3,p=4$13VBBTPry8JfMBMFc8dkNQ$q3gs08xZEvkVpEUy27ByHGzq3eLj1PY/iAOziLVXxNo","$argon2id$v=19$m=65536,t=3,p=4$1PAyhU5qqZPcg9+67ZjyiA$e5inIo7JYanCmR4TJgF4OlCaDMqLOkyfCLzZBlSM16I","$argon2id$v=19$m=65536,t=3,p=4$2+YM/uKAdnXEA1ueEuDsJQ$fx3jUussUONv6cYx5CY7zlDBcvsJZVWytlFVfXx6yZ0","$argon2id$v=19$m=65536,t=3,p=4$2SEcT1osPC8IQHWdqnmKqw$ZVU+6+w93HBeY4Kd6c6j7AI7Me00jPsQTlTBf3QU+rY","$argon2id$v=19$m=65536,t=3,p=4$2xdvnfe0+pAEmM/CZbUl9A$EdYrBXq5js2GcPlrNY7BRT8iseq6B5cQW7UXqpQtY6o","$argon2id$v=19$m=65536,t=3,p=4$3bJ6+PYTweOrsAvh2EJs3Q$Y8lZr9XmfAqeN0rfvgTZTPrKUHYK4go+qcLIg0wO1Ws","$argon2id$v=19$m=65536,t=3,p=4$4+oZ1FwGTvqxI4etQB7KvQ$GvOuH6pCtkcWqqpXaUfxqfvkKLHAl+PAG2LaIz+dRBU","$argon2id$v=19$m=65536,t=3,p=4$4MydwPvhtU4uXkaKaJFgwA$KPPcGsTJwm6U06dItbtWF/GloN+lgRWuXRqtDI8ks5g","$argon2id$v=19$m=65536,t=3,p=4$4sF4iYvs1h3q41JCV1bDlA$7PqEL9qNKIPq9LMiNShFyAPK3wHoy2VJbMJ7lBhRxNM","$argon2id$v=19$m=65536,t=3,p=4$668pkuUC2Xaid6sdwbxnlg$5aTCfwjgO84VyNJwDIbkSRzet+Ciko7hwBQeEvbxI6c","$argon2id$v=19$m=65536,t=3,p=4$6MFt8noBIEpvtmVt2bM5Gw$7IHjqRUbW3nFPzALLxMh1wuXa5IogkvI6Fhwo39ZLbs","$argon2id$v=19$m=65536,t=3,p=4$6s+QgnNJ7CL3ygp+SNLBNA$GLtvpAPcxmoJXszn1BKtK0fiNiYfOeJ61JmjDDBtAmg","$argon2id$v=19$m=65536,t=3,p=4$7B8wuj/RGHPn2f0WcYdkIQ$apfpo517IMEK+9AKORkjSm0Bo2Vu6fJXTBdLrBqScPY","$argon2id$v=19$m=65536,t=3,p=4$7iVbqYPlZsVDg4QwTKWzWw$WY60ixLOD1PG6CJeJ12lLYMli5u43gIic3jgYUEjdDE","$argon2id$v=19$m=65536,t=3,p=4$8g8779On/Ko/8xnv0gjNBg$N2lrp5fpQbKPt+qfK+7LUynTn2ZGGLzwo8S5aCkqeOo","$argon2id$v=19$m=65536,t=3,p=4$9HiQ3Y8RI4WDg5A0S/tNkA$jUzgUC6JQ7wRELVM/P8Yjke5zdmq5WAAJebl/QDa0rQ","$argon2id$v=19$m=65536,t=3,p=4$9qH8ZENl1mPEpNvcJHYOmg$NUTjmKTirpCAuhGghWnPrxnAKFtWeBAZw6tUymeAnOA","$argon2id$v=19$m=65536,t=3,p=4$AmNoI/YjERwlYyLNDsxQNQ$VKixEF/IVoDcId3ddL+K6xBAhbXJK6PV0AAx3v95HNE","$argon2id$v=19$m=65536,t=3,p=4$BVvZPLr8RuRyyKvhPlLdmw$SsgCid9yFkcPomL0dMHjfS/qYPl50V554ZfMk7JYvAQ","$argon2id$v=19$m=65536,t=3,p=4$CV5KFZ6ospD9ViVMpBa+1g$5bPwV0Jcp/s7t6uhPah0pe9ZcBZQm1sRj4/W2Y/NP7k","$argon2id$v=19$m=65536,t=3,p=4$D+rXltf1S7gdc/gRLo6a/Q$z5nMnecJjvOWNSGZdWbGCBu98oUVykjcbZDnnydonwI","$argon2id$v=19$m=65536,t=3,p=4$DN3WvuUAIsxEcc2Yy5OvlQ$9Oq3Jha8qEYjFrg7K+JsLwqHo9Q8Ti398VzL4TcyO2w","$argon2id$v=19$m=65536,t=3,p=4$DZmNPNOOV3k9CLKHLM/pnQ$H1OkBHdETXcdIf+T1d69vNq7C9ZT4b+Wd0kwFbqh/as","$argon2id$v=19$m=65536,t=3,p=4$EXxNnQBWlDCqawsfrnHmSg$kQyeLsu2uTOC/rnWsFO9+Vw4zY3emI7gov2Kx7yFd0Y","$argon2id$v=19$m=65536,t=3,p=4$Eh5YDhjRdjOzHyQIFgI4EQ$164V++Xm9OaGPXBhpqVC/9l8hycODFzISS4vt2HACWs","$argon2id$v=19$m=65536,t=3,p=4$Fm8/0y1ptaqlAEUa6Dytkw$Vtxch3d0ho+52vsC352ZJJkW0O2CdyL+YsxufNIxSng","$argon2id$v=19$m=65536,t=3,p=4$GUSYGdBspAVVSiJ9KgJkAw$PNTXtcj/dF2/uoBmu/eKKA/enVi7AzblmTzyRrvk3ak","$argon2id$v=19$m=65536,t=3,p=4$HLIKqC5XIVTC5a8jgUMwdA$QK7q/A0ywzNJK8hBfRIw/wmYey3sK/7oZ6htR5978/c","$argon2id$v=19$m=65536,t=3,p=4$HPQ2YYc1L9Kg9h8en7217A$hj//16MZKeIvJYrppkFXxTFWKhXyzyGvDDLfjdwTjPM","$argon2id$v=19$m=65536,t=3,p=4$HqebiYhtsebKk0+QlaZ+fg$mosnfhy+6HR//1wgHQ4DeW9rSPRR6FPcgx0fl9VMY7M","$argon2id$v=19$m=65536,t=3,p=4$IL6ZpSVmnGhj/ut/e4p3UA$cdv1yh+TeeSWX93fOM77LLDqO5Qd8d0DUQdCaZtooEA","$argon2id$v=19$m=65536,t=3,p=4$JEbZrFTQ4PYBMjbM7wt1dQ$0Ff0OHAmF0luU7uiXE94O0PVaxLdp1G2m0mOnqpRqCM","$argon2id$v=19$m=65536,t=3,p=4$JjQWG7FGit+msI2+r3cS6g$gvt1aGFYDWD0Sqy1x4lT6G8ax8mG78ux6dL4mihR5Hc","$argon2id$v=19$m=65536,t=3,p=4$K85B5aHgBbXoXo7feHSBiw$2vmXbzYfqYkjnEEm3YmO3im+I/AGANLHiuu8ITbRtoo","$argon2id$v=19$m=65536,t=3,p=4$KpvFaRLICF6pco5nvcn88g$mjmUgL1ghF7pyoytXYRazTIWpx2acVE3chnXsZwS8cE","$argon2id$v=19$m=65536,t=3,p=4$LDwqvDbYVWpbyurFMW3nAg$dtYbhn0VLv88p0cC0AnNh5+lcgs+0wr4846I+LEo804","$argon2id$v=19$m=65536,t=3,p=4$M8ZcrFxWJ98o2SZCWtrk8g$E6N1Vp4UeES5M6lQF6dM6IgnnOL1wSfexBeXTBmXS9I","$argon2id$v=19$m=65536,t=3,p=4$NDPk4mhJVB+Eao0fBD30BA$pUuY0JyrZslCqIQbBsVC9DgnQDjA2+ULgemh2WoQQ70","$argon2id$v=19$m=65536,t=3,p=4$NpuZaFF6/qYHUFJ56jIIog$ISBeseJyib+WeGRzT8VjlvVoyCjHO+S+rVI1Ot4HTCc","$argon2id$v=19$m=65536,t=3,p=4$PICf/kt8prJda8dzzN7CTw$NvCjXD3RhP0tY/auCdlDwQbF8aOS1pNAADOnjEcX4g4","$argon2id$v=19$m=65536,t=3,p=4$PgdSrV5S4B+VOkZT/9RLZA$o8aSQ5Ev/MUbqJtMOegqQAL7+4XtkquxO9ppIitLfW4","$argon2id$v=19$m=65536,t=3,p=4$QUVe3tcxDg1aBW4jzfMJCA$dsUTtKc/eG3nSvxXEQ0yGQiHZuNdJBuIrLeQPVhQ/Oo","$argon2id$v=19$m=65536,t=3,p=4$RR7/VfflyoaKnRphXFeboA$kRFV6Os+AErOfnb46Um3wVADqVifgcAA4E3G48vtP/A","$argon2id$v=19$m=65536,t=3,p=4$SGmqxjSm4+Ef44NnInT6AQ$yPSNosi3Ij0opK7LTgEOrAtiVqbIi1kfJyr2UbBLPB8","$argon2id$v=19$m=65536,t=3,p=4$TCW1Gd7Igj23Re3xaA7GpQ$4aMzzGhF0Yyogue53uhhiw2Qkf4Z/LMFmwNcnhyKm+o","$argon2id$v=19$m=65536,t=3,p=4$TSoyKQD5HNQfaUAbdDEhjQ$eSg5pgVSRI/apZYyEikqQyqUqwd2reS2IYc9a9Sx5to","$argon2id$v=19$m=65536,t=3,p=4$UF+i9JLirYVtQQlEAyKd0Q$L78nTytDL78fbVkgyOeuA/2x+olvbC6ZYqi9lscBrwY","$argon2id$v=19$m=65536,t=3,p=4$UiZTs+OGi3tOTG2ITAxJlg$yLpr3ta2YFqmN9imfObTbBL3eo2VC6tYrA8y/8GF5qY","$argon2id$v=19$m=65536,t=3,p=4$V56PXJCUcIaDkn9zDDkrzQ$hJwHXNz3T8TFcNv4xBY3bSi1StQlBwAuBaQYazzrM80","$argon2id$v=19$m=65536,t=3,p=4$Vf9ZfBIeWTWHwjHdx7eu6A$zWdQW/1NIF+ZJaweK29981y5SrZr8m6BpKZuaEf3Hrc","$argon2id$v=19$m=65536,t=3,p=4$WBXde4zzyo3N6ao/yJh8Eg$Ivr83dc1mJtPF7mxOJkhKxXGGBOHOKYd4+GceOJ79Kw","$argon2id$v=19$m=65536,t=3,p=4$WTRi2Rw3BBqP/C6dNZk17A$6P6QxzEXMb75xCIeVhIaXtvMyKYU7YBUgZ2DS7xdmM8","$argon2id$v=19$m=65536,t=3,p=4$WdoFjZRvSdxZvFVsU+w0sQ$kzrr8KoDPR32iL+M9vaoqI8sCuZq0OY+iVMw672VN0Q","$argon2id$v=19$m=65536,t=3,p=4$XKf/DSXdG6HkCPgyhd8Ifw$zDWDag2FFFTLm4YEy1Uu4IFtgp4XQSuFPWf2x3RO2Go","$argon2id$v=19$m=65536,t=3,p=4$XuQ8Pjp9FIvp7BF4fTtzMw$PCi2SYWlP1MA5jz1dQSsX49L1lLiadztrR3h6A2j+WM","$argon2id$v=19$m=65536,t=3,p=4$YON6sK/sfPnaugEYFJLBaA$C2S2chbntwoeOA97oYBwR9kUQDCZ421nRTG5DpuJ7DA","$argon2id$v=19$m=65536,t=3,p=4$a4y4BX3U+RkSaYLjhZJzFQ$NvswE+Y0t2zK7BjDjtGVIqPfAeC8xoOOsVDzL98MbI0","$argon2id$v=19$m=65536,t=3,p=4$b51FqhUFTq46SUZiskRqKw$hNJTFFDCqsbaUrOPt95Ch59/aqr/DA2bOFScqvDm7BY","$argon2id$v=19$m=65536,t=3,p=4$bYAxXppQabacAn64fSw8+w$B1LrrHTxQG5RzxyGxXHNrH/bMejqV+qAzmYh/8RF7x4","$argon2id$v=19$m=65536,t=3,p=4$cPryGl41W+AJ5MUwwHnUDg$lpOihDfNwyIRdjWLO6Ma8OaF+G6IOkcHtk5wb9MPrHY","$argon2id$v=19$m=65536,t=3,p=4$cz93pfvt8m27DX10o7mKkQ$DcoH6wmAXBpw7z1dbd7vYfAX7dlXTRPptGnyEd9rYh4","$argon2id$v=19$m=65536,t=3,p=4$dyYmGUQIgRSGZMcZDYbLtQ$WQeU6ukYtd/4c0pZXkfchDKXsa+g3TAp1O2IXNpJ6Y4","$argon2id$v=19$m=65536,t=3,p=4$ekUej2Tf4PmJaV+ekAFWTw$iWEyGE2MPBbMRLhpA82TqSnfcn6Uge0V6QTk+OORpQM","$argon2id$v=19$m=65536,t=3,p=4$g2QL1TbYJokaP5Rrao83zA$f6mu6NhoMPMqNF3UQq2kCvZubxh4Rz8ehSUUNH9kFEQ","$argon2id$v=19$m=65536,t=3,p=4$gJbfPZdrkp1807qoFOqZ2A$rqO5SCTKMLT/auglatzkq5R+rarbyn66lxuvaL77p6E","$argon2id$v=19$m=65536,t=3,p=4$h/4JJ/HDkPwUvse9VrtJZQ$kzQcQmoQOdWh7WRPygG3zBioFl5Lk6sNrlrafVs4kgw","$argon2id$v=19$m=65536,t=3,p=4$hKsp2OEHtjAcL6H0myY2vA$wDVqb/V3CcMC0N6sW/4v3LSQTJlEAi/lbYpEctYms58","$argon2id$v=19$m=65536,t=3,p=4$iEVhXm37kwkvr9vA+GhnVA$JrMDD/ofHwiDZPzPMK5KOjicixqXhLsBXcdojnOTTWk","$argon2id$v=19$m=65536,t=3,p=4$iad6asUTFPBmQ9lThKlepQ$4eSmbDO8QhuKs0/RG2K2axOAFhL2nQ9/YCqMUqAHrSI","$argon2id$v=19$m=65536,t=3,p=4$jCk59cVCJXoHD9PCDUKt+A$6dDWVwdfizREV4k3YPi2nsagX0QnQkjZXkvLTWJEy+s","$argon2id$v=19$m=65536,t=3,p=4$jqDwCHiEB3F2vwNCB4KlCQ$ncfSbhnjUWAwYuQdOkT6g3Y9GLV5lYxmbc0RblgSo5A","$argon2id$v=19$m=65536,t=3,p=4$kVeYcdCHoOqozifleiVlag$6izbdnbWaKujgT9fhIUTdR0W7uwP958DxxqReOkTuAk","$argon2id$v=19$m=65536,t=3,p=4$kmWrF+/PA9A3A/HgAk5JpA$cu/2n5mSpJipb6uDcN/CwmnB2RhvwHzBw7y1juZDoi8","$argon2id$v=19$m=65536,t=3,p=4$lNqPIiiIqu3EOlr5qoJTxA$IOArdQFKIhM35fU69+VjHPEd1cTxG8TbFJlbN/QTdYU","$argon2id$v=19$m=65536,t=3,p=4$lqCuXBJ1IkiMAPCtNhkiqA$A8ST1hRhx2qdIylGXpqQJHEzh4f/T3nAqpwQpwvAssc","$argon2id$v=19$m=65536,t=3,p=4$mUKdW9OFQPttDs7bwgq8fQ$nt6O4flPmtWHz91BBDNjUumOoisIzq3/ZJYvGeVdghw","$argon2id$v=19$m=65536,t=3,p=4$muUWx0X+4wS5HqQ2f54N4Q$XX7aiTcSO4CfCLGl0mp1l7BkedTI3PmCYVM6oyLKIEs","$argon2id$v=19$m=65536,t=3,p=4$nIPnAikn4zAQFkcL/MTd2w$8QDHH/lj6+xorCuCh+UgRtiDeXL/N2KUjjbo1rJhT/Q","$argon2id$v=19$m=65536,t=3,p=4$o/XScCZNT9TTv8rbGmKhqw$xAtsq8dOTR+iIkYdzDNrnbrScvslUAlevzYFKvAM0yk","$argon2id$v=19$m=65536,t=3,p=4$oi0KYXsmj+L/nsVYXmT8Kw$N4slta9M2NrW6trDA/wsP4dQR8zpiIYr3uQH8MbFc1I","$argon2id$v=19$m=65536,t=3,p=4$q7j887W8zqTGxx5ZomxdxA$CfA9CS1+9h5HtKELlfXFz0SkSeNN0bjGkPEtYzXFwIY","$argon2id$v=19$m=65536,t=3,p=4$rRYjNRMKJoUrXWzrGGBNng$SU2KONiYDkP/263BjhZ6z9Tw9HZ6dq2pDoDME16LttA","$argon2id$v=19$m=65536,t=3,p=4$s6CQnhn5pQK7lFK2yvwwgQ$sHLnMm/+SkVr25V5LacPMk2xyVtK3Y5/TTY3RKa5uHE","$argon2id$v=19$m=65536,t=3,p=4$soJuOLeChz0iV53DLZeJLA$p2x1/Na8MtKz3hXqqg/Gwy2rC72BB9Fbuv69u0FNBJY","$argon2id$v=19$m=65536,t=3,p=4$t8oPuwpX/ri6QDh3YaIGDg$/wnDN6QcH4oHLL2DxtCi7zKzDIzHQEqfdI71DsR0e6I","$argon2id$v=19$m=65536,t=3,p=4$tXYpbIoHXNy6ZRxcGsjb1g$hwaTnjFMSWs6zvmIaibXRUkzzyMomlZoUiZGXgIQOMY","$argon2id$v=19$m=65536,t=3,p=4$u6CEW7w4XHkV6LDoJFzqZA$P2yjb9P+G6NAyLeNZUmRrqIgoWKSL4Qn+uVQh4Wb2bQ","$argon2id$v=19$m=65536,t=3,p=4$uZ+1K5gK8DLbhBBZWL+UkQ$JMuz38WsSDCAkjAab9G4co5oX+o8OMpZwGWtgTneDcE","$argon2id$v=19$m=65536,t=3,p=4$v9uE+a+ljsWyGYjgnHXduw$DrbVzXHe+Wvs9Uy8P+jbbyG2AEXhiACq/bWeIxUvDSE","$argon2id$v=19$m=65536,t=3,p=4$vuxoQbDOcRCjAjuUZlPcAA$CGalY1W1+5iu7ErVqb1f484yM1Le6/IJf7jHzu8ocSE","$argon2id$v=19$m=65536,t=3,p=4$wEEJTy6vN7dYiUoythMyqA$ZFW+K/5AF/PLygx2LJPihYsfZz34C3XFtcr+Hwp7dWg","$argon2id$v=19$m=65536,t=3,p=4$xOELsIuh8cNwGLr//6jCww$vm1tuo+48wl8+KG3+D1tIxD3cZxTULtuwwXAMgqCk60","$argon2id$v=19$m=65536,t=3,p=4$xbvYGn09nhVwh0bMsAVl9w$9OVwo55TG2zW03Qa9RSBaZHbExZjTXHdinWC+MOgBbY","$argon2id$v=19$m=65536,t=3,p=4$yDNapzKoXueKm4FY5P6WYw$/1fYQX07e864gekVZw1BmQi9pVGSOgJNoQCoGPm2oGo","$argon2id$v=19$m=65536,t=3,p=4$z9fZe94AiGEenqSf6WQeDg$R1PIkOTvyKwNPMKYzViykzhsNb6ZjPq1afVRtZcCsEw","$argon2id$v=19$m=65536,t=3,p=4$zwAFC6dS3mXUx4DnjTTcHw$nIHnWP6RdNtduk6chdMhF9AGR9e10b8TMgnvAztmxBE"}'::text,
	'correlation', '-0.036259606'::real
);
SELECT * FROM pg_catalog.pg_restore_attribute_stats(
	'version', '180000'::integer,
	'schemaname', 'public',
	'relname', 'user',
	'attname', 'updated_at',
	'inherited', 'f'::boolean,
	'null_frac', '0'::real,
	'avg_width', '8'::integer,
	'n_distinct', '-1'::real,
	'histogram_bounds', '{"2025-05-20 19:36:12.832","2025-05-20 19:36:12.968","2025-05-20 19:36:13.132","2025-05-20 19:36:13.342","2025-05-20 19:36:13.621","2025-05-20 19:36:13.765","2025-05-20 19:36:13.925","2025-05-20 19:36:14.093","2025-05-20 19:36:14.247","2025-05-20 19:36:14.375","2025-05-20 19:36:14.534","2025-05-20 19:36:14.691","2025-05-20 19:36:14.856","2025-05-20 19:36:14.978","2025-05-20 19:36:15.193","2025-05-20 19:36:15.35","2025-05-20 19:36:15.505","2025-05-20 19:36:15.637","2025-05-20 19:36:15.793","2025-05-20 19:36:15.955","2025-05-20 19:36:16.111","2025-05-20 19:36:16.239","2025-05-20 19:36:16.397","2025-05-20 19:36:16.567","2025-05-20 19:36:16.727","2025-05-20 19:36:16.855","2025-05-20 19:36:17.018","2025-05-20 19:36:17.174","2025-05-20 19:36:17.333","2025-05-20 19:36:17.468","2025-05-20 19:36:17.625","2025-05-20 19:36:17.882","2025-05-20 19:36:18.079","2025-05-20 19:36:18.207","2025-05-20 19:36:18.383","2025-05-20 19:36:18.542","2025-05-20 19:36:18.717","2025-05-20 19:36:18.838","2025-05-20 19:36:18.998","2025-05-20 19:36:19.157","2025-05-20 19:36:19.322","2025-05-20 19:36:19.451","2025-05-20 19:36:19.648","2025-05-20 19:36:19.886","2025-05-20 19:36:20.092","2025-05-20 19:36:20.226","2025-05-20 19:36:20.419","2025-05-20 19:36:20.603","2025-05-20 19:36:20.776","2025-05-20 19:36:20.895","2025-05-20 19:36:21.052","2025-05-20 19:36:21.211","2025-05-20 19:36:21.384","2025-05-20 19:36:21.501","2025-05-20 19:36:21.658","2025-05-20 19:36:21.818","2025-05-20 19:36:21.985","2025-05-20 19:36:22.1","2025-05-20 19:36:22.259","2025-05-20 19:36:22.428","2025-05-20 19:36:22.587","2025-05-20 19:36:22.711","2025-05-20 19:36:22.867","2025-05-20 19:36:23.03","2025-05-20 19:36:23.184","2025-05-20 19:36:23.304","2025-05-20 19:36:23.468","2025-05-20 19:36:23.623","2025-05-20 19:36:23.777","2025-05-20 19:36:23.9","2025-05-20 19:36:24.069","2025-05-20 19:36:24.226","2025-05-20 19:36:24.387","2025-05-20 19:36:24.507","2025-05-20 19:36:24.674","2025-05-20 19:36:24.829","2025-05-20 19:36:24.991","2025-05-20 19:36:25.108","2025-05-20 19:36:25.271","2025-05-20 19:36:25.435","2025-05-20 19:36:25.592","2025-05-20 19:36:25.708","2025-05-20 19:36:25.866","2025-05-20 19:36:26.027","2025-05-20 19:36:26.195","2025-05-20 19:36:26.312","2025-05-20 19:36:26.466","2025-05-20 19:36:26.645","2025-05-20 19:36:26.861","2025-05-20 19:36:26.977","2025-05-20 19:36:27.151","2025-05-20 19:36:27.316","2025-05-20 19:36:27.492","2025-05-20 19:36:27.61","2025-05-20 19:36:27.778","2025-05-20 19:36:27.948","2025-05-20 19:36:28.106","2025-05-20 19:36:28.225","2025-05-20 19:36:28.394","2025-05-20 19:36:28.577","2025-05-20 19:36:28.787"}'::text,
	'correlation', '1'::real
);
SELECT * FROM pg_catalog.pg_restore_attribute_stats(
	'version', '180000'::integer,
	'schemaname', 'public',
	'relname', 'user',
	'attname', 'verification_token',
	'inherited', 'f'::boolean,
	'null_frac', '0'::real,
	'avg_width', '37'::integer,
	'n_distinct', '-1'::real,
	'histogram_bounds', '{0045f284-858f-4144-a054-e07e04a0225b,0585d1c7-ea32-4aaa-b200-d9e5003d3ede,0daabca3-5f07-4934-ab5f-1a950c87d9ca,0faf1a0a-faac-42ec-b24b-43a6e8f03d73,12a9253f-bcfc-44a0-9d8a-caa020e93bbc,1490d99c-de3b-46c0-aea6-b35f71d86fc1,16d5f557-e69a-4109-960d-450d438d5c85,18a080b5-6153-41f8-b6b6-4c15f38571cb,1d21c888-066b-45e9-8ae9-348e2b8a805d,1df38c91-1ed9-4463-8d82-941b6d044463,1f45c684-26fd-4501-83ee-5b643cf34bb9,20f1393b-84b5-40bb-98e3-95bda4e58c5d,2320afcf-606b-41e3-aced-b26ce31f2898,243d5a6a-6131-4989-be98-4e1f96e28064,25a55865-405c-4e84-957e-56b47a572d28,270f051e-5eb3-4748-9309-f5d3e3a54d1a,2b4ecbcd-cd30-4d1d-ae4d-ac16a7c99bf8,2ece1441-14e5-4ea6-8a35-9b77928686c5,3007c7d7-7476-4c1d-aac3-2184e946b9a0,333dadd6-6da5-4c68-b114-4031935b6ae5,34a08f80-1848-4d6f-8eaa-dcac4c4564b8,3500d337-c8ba-49b0-b21a-a1f4c2f702d6,36c66190-d0f7-4e3a-9885-090b680b229f,39b6c9c0-8dd0-4f7d-bca3-458c8a0bb014,3b841be1-f468-4a11-9e7d-f6d6abf1a00a,3d3c0764-96f4-4717-a3c4-42403b25d4d8,41811408-faf8-4f1f-85e6-afa5fd3c8548,42ff9959-1d53-4fd5-b7a8-50de03be4692,46ad458d-c3c6-45eb-97af-34bce2fe7702,477387bd-d4b4-4801-9e5a-a0b8fe83c009,4c3ae171-ab26-4c45-9bb8-0fd9797475ed,50061a2f-4dde-48ff-9473-f6561dbef3c7,521c2931-d5b0-4e79-bb7c-7f3546811b38,54ffef77-e69f-42ed-9564-19e8ea4a1927,57624dbc-fe37-40a6-9c9e-2531351a7a17,5a217244-5df8-4bac-9dfd-c965a44d566a,5b27fe86-9270-4a5f-b641-b2ea6d0f9921,5ef38c87-7683-4461-83b8-e68e2a0f79ea,63c013e5-343b-48cb-8b89-c3420ecb51a3,65967390-0f40-4de7-8490-d65f0c2ccbce,681ced75-a58b-4a9d-9817-c1a37294279c,6a5e4a57-f59f-483e-86da-ef5baf535cb4,6e4a82d0-99aa-41c7-98d4-27be3ee36347,7159d8fd-b80c-40c9-87b1-35fe4be66347,737b5e90-c09e-407d-acf9-31b6e1c129b8,74c94d3f-5ff3-4e01-bba0-6e205dc36b23,77e48e1c-d7d8-4300-a734-e63fb1a4cb9a,7a4e6659-8206-427f-98f7-8091a20a69b2,7eadf88a-f575-41e8-af46-4bf6aa27da9c,826a2f81-cb02-40bf-be14-56b058e10e1e,83e64797-eb54-4b04-a843-e1239e77f057,85f26297-50a1-4aa9-884e-1eebc4fab271,89212a56-5696-44a5-9691-89cb98293917,8b4ed29f-5333-4986-a40e-6d0210cf0282,8d759306-b6f4-4ba2-8b41-c8e639fd7c5d,90529f39-bc7b-4deb-9640-b69106a8b36e,92a1519a-c87e-464d-a6ea-c0700c537880,930835af-42e4-41cb-bd8a-e07b1687490b,988b63e4-ce47-44d1-9bcd-33e3d6730bd5,9aa37fbb-b7d1-4e94-95b3-7f6cbe8e42f0,9de34239-07fd-46fa-89ef-990ca5163400,9ebdd724-3528-47bc-88ea-c50f3220245b,a0753f21-6e12-46f1-9a11-8db3d6c33129,a239bd3e-efe0-429e-ba24-91e90029b1fb,a33f020f-aba8-40fa-bfa7-9a0326d00520,a44f027c-226d-4c86-97c7-a28060f19dc8,a64cb5e6-e26c-4c16-8ec2-929601e14617,a8831c91-6714-47d7-b90b-51c8b6266f4d,aad688fd-7d99-4556-9e4b-ccd331886957,add7554f-2df0-44a7-9296-fe60bac1eab3,b08ff296-3e54-4ffe-bfae-6b60a6025c30,b1ade85f-bb3e-438b-a825-59459369d943,b37b3293-4ae8-40a9-85df-2e60ad2fea81,b590d3d2-01eb-442b-834a-cc8ffdef0397,bae5186d-8186-454d-8e55-349d58d005b8,bf5246e2-fc90-44ed-880a-c0fc18dbb2cd,c2d5f392-916e-4126-ad10-3801d65a4c1d,c57d40c2-8036-4522-b00d-275c01412440,c98e506e-51fc-46f8-b89e-dbfd8c2ece09,cdf14e96-5384-4326-9a84-6e26f79d21bd,cf3bd9de-8f81-4074-9a34-31cdf1ba9eb7,d10b3ca2-f73b-4ecc-885e-6b00449dbbe8,d2e89d6d-a22e-4bb0-aa54-2693c060ce20,d4ddceff-35b6-45af-b0f1-6e9490d1c5ab,d7d5fb20-560f-41b2-b1fa-18c30a85f477,dba709bf-1fae-404b-839b-014f1342c479,ddae28a4-2483-4927-b864-44d26fbeafb2,e0053896-ae99-4e50-a490-4c2f50544496,e28c6ba1-4c3d-4658-9e25-fb108e92f1ae,e4ac17cf-be5a-452f-90af-07fea9666e6d,e72d5164-d0b0-4c7a-94c6-32d7e38a5d67,eb8a93da-9934-4b74-8fc5-b09975e7a2b1,ec1c0ddd-7627-438f-8123-85a7db08a851,ef07e989-b142-4243-9a82-aeffc9d41787,f10485eb-c73d-45dd-8536-d615cb06b282,f31d9710-6905-40e4-9eef-ebd111fbbd78,f6964eb3-39bd-47f3-af8f-916008617fc3,f76384d1-8bd4-45d9-affa-f0e7442d4b40,faf7ff81-0324-429a-b507-dd25a52604a2,fcb68cf5-e992-4989-b9a0-59fbf92d4ce8,fff2376d-4756-4620-b250-61de3c5feb8c}'::text,
	'correlation', '-0.047145326'::real
);


--
-- Statistics for Name: video; Type: STATISTICS DATA; Schema: public; Owner: -
--

SELECT * FROM pg_catalog.pg_restore_relation_stats(
	'version', '180000'::integer,
	'schemaname', 'public',
	'relname', 'video',
	'relpages', '6'::integer,
	'reltuples', '33'::real,
	'relallvisible', '0'::integer,
	'relallfrozen', '0'::integer
);
SELECT * FROM pg_catalog.pg_restore_attribute_stats(
	'version', '180000'::integer,
	'schemaname', 'public',
	'relname', 'video',
	'attname', 'channel_id',
	'inherited', 'f'::boolean,
	'null_frac', '0'::real,
	'avg_width', '26'::integer,
	'n_distinct', '-0.33333334'::real,
	'most_common_vals', '{cmawwzvok00014wt9uin2kpaw,cmawwzvpy00034wt95y2nwftb,cmawwzvr500054wt9ahq5ovxu,cmcclfbz60016kovgwtkmg3so,cmawwzvs800074wt9do12tffp,cmawwzvtc00094wt92ot2cfpt,cmawwzvuj000b4wt9me35pnha,cmawwzvvo000d4wt9vfirhc8a,cmawwzvws000f4wt9yoogtf4r,cmawwzvxx000h4wt9m9pa0271,cmawwzvz1000j4wt9qrdl91ks}'::text,
	'most_common_freqs', '{0.21212122,0.18181819,0.09090909,0.09090909,0.060606062,0.060606062,0.060606062,0.060606062,0.060606062,0.060606062,0.060606062}'::real[],
	'correlation', '0.6544118'::real
);
SELECT * FROM pg_catalog.pg_restore_attribute_stats(
	'version', '180000'::integer,
	'schemaname', 'public',
	'relname', 'video',
	'attname', 'created_at',
	'inherited', 'f'::boolean,
	'null_frac', '0'::real,
	'avg_width', '8'::integer,
	'n_distinct', '-1'::real,
	'histogram_bounds', '{"2024-07-18 22:41:34.999","2024-08-03 15:35:04.374","2024-10-17 07:41:06.917","2024-10-18 15:53:32.66","2024-12-15 23:40:31.912","2025-02-04 07:35:42.421","2025-02-09 22:36:18.333","2025-02-12 15:50:06.272","2025-02-15 11:40:53.875","2025-02-22 11:45:39.478","2025-02-24 21:49:20.291","2025-02-27 01:18:15.343","2025-03-11 07:10:48.867","2025-03-17 20:30:06.201","2025-03-19 02:18:21.571","2025-03-21 21:55:48.012","2025-03-23 21:03:33.262","2025-03-29 14:42:03.746","2025-04-01 11:51:20.18","2025-04-12 10:02:04.864","2025-04-17 00:48:23.297","2025-04-18 19:07:46.909","2025-04-30 05:16:04.306","2025-04-30 11:58:16.183","2025-05-01 19:18:13.765","2025-05-10 10:36:07.994","2025-05-14 00:16:19.817","2025-05-16 02:34:18.399","2025-05-18 21:27:12.982","2025-05-20 11:44:34.737","2025-06-26 00:39:33.563","2025-06-26 10:53:27.679","2025-06-26 13:32:14.875"}'::text,
	'correlation', '0.3302139'::real
);
SELECT * FROM pg_catalog.pg_restore_attribute_stats(
	'version', '180000'::integer,
	'schemaname', 'public',
	'relname', 'video',
	'attname', 'description',
	'inherited', 'f'::boolean,
	'null_frac', '0'::real,
	'avg_width', '618'::integer,
	'n_distinct', '-0.969697'::real,
	'most_common_vals', '{"A story set in the mythical realm of Silvyra, it’s a world unto its own, filled with creatures, plant life, and people living in harmony."}'::text,
	'most_common_freqs', '{0.060606062}'::real[],
	'histogram_bounds', '{"<p>Every first Friday of the month, XTTC Radio! An hour filled with my personal favorites that I’m playing around the world.</p><p>XTTC Radio Episode 001 includes tracks from Eli Brown, Lilly Palmer, Amelie Lens, John Summit, Hi-Lo and many more.</p><p><strong>NOTE:</strong> This is a modified version of XTTC Radio for YouTube.</p><p>For the full show, visit <a href=\"https://xttc.lnk.to/radio001\" target=\"_blank\">https://xttc.lnk.to/radio001</a></p>","<p>Welcome to my 2024 desk setup tour, where I have been finding my zen, focusing on my daily rituals, and stressing less about goals.</p><p>Here is where I channel my creativity, and find inspiration. A clean space, leads to a clean mind.</p><p>Flow is positive. Flow is when you are focusing on something at hand, with zero distractions. Where the ideas & creativity flow naturally, and things are not stagnant.</p><p>So, what gives you flow? And what allows you to enter your flow?</p><p>I hope this video speaks to you, and inspires you to find your flow and reset your space.</p>","<p>🔥 Научись разрабатывать похожие проекты на нашей платформе - <a href=\"https://htmllessons.io/premium?utm_so...\" target=\"_blank\">https://htmllessons.io/premium</a></p><p>❤️ Отзывы тут - <a href=\"https://t.me/htmllessons_reviews\" target=\"_blank\">https://t.me/htmllessons_reviews</a></p><p>🦋 Наш ТГ канал - <a href=\"https://t.me/redgroupchannel\" target=\"_blank\">https://t.me/redgroupchannel</a></p><p>Создал игру с нуля и исполнил мечту детства! В этом видео я делюсь процессом разработки игры с использованием React, TypeScript, Zustand и других технологий.</p>","<p>🔥 Оформить премиум подписку - <a href=\"https://htmllessons.io/premium?utm_so...\" target=\"_blank\">https://htmllessons.io/premium</a></p><p>🔐 МК \"Реализация оплаты от А до Я\" - <a href=\"https://t.me/pay_red_mk_3_bot\" target=\"_blank\">https://t.me/pay_red_mk_3_bot</a></p><p>🦋 Наш ТГ канал - <a href=\"https://t.me/redgroupchannel\" target=\"_blank\">https://t.me/redgroupchannel</a></p><p>В этом видео мы погрузимся в мир Next.js и разберем, когда лучше выбирать Next.js, а когда React. Освоите новый роутинг и его возможности, узнаете о хуках useRouter, usePathname, useSearchParams.</p>","<p>🔥 Оформить премиум подписку - <a href=\"https://htmllessons.io/premium?utm_so...\" target=\"_blank\">https://htmllessons.io/premium</a></p><p>❤️ Отзывы тут - <a href=\"https://t.me/htmllessons_reviews\" target=\"_blank\">https://t.me/htmllessons_reviews</a></p><p>🌐 МК \"SEO оптимизация REACT и NEXT.JS приложений\" - <a href=\"https://t.me/redgroupchannel/1575\" target=\"_blank\">https://t.me/redgroupchannel/1575</a></p><p>Поддержи видео лайком, 500 лайков 👍 и я делаю полный курс по TypeScript!</p><p>Новый видеоурок на канале! Сегодня мы публикуем полный курс Tailwind CSS для начинающих. Это 20 уроков в одном видео для полного понимания работы с Tailwind CSS.</p>","<p>🔥 Оформить премиум подписку - <a href=\"https://htmllessons.io/premium?utm_so...\" target=\"_blank\">https://htmllessons.io/premium</a></p><p>❤️ Отзывы тут - <a href=\"https://t.me/htmllessons_reviews\" target=\"_blank\">https://t.me/htmllessons_reviews</a></p><p>🦋 ТГ канал - <a href=\"https://t.me/redgroupchannel\" target=\"_blank\">https://t.me/redgroupchannel</a></p><p>Адаптация игры под смартфоны. 2000-3000 лайков, и я делаю следующий проект!</p><p>В этом видео мы создадим игру с нуля за 10 часов, используя стэк: React, TypeScript, Zustand, Framer-motion, Tailwind и Bun.</p>","<p>🔥 Оформить премиум подписку - <a href=\"https://htmllessons.io/premium?utm_so...\" target=\"_blank\">https://htmllessons.io/premium</a></p><p>❤️ Отзывы тут - <a href=\"https://t.me/htmllessons_reviews\" target=\"_blank\">https://t.me/htmllessons_reviews</a></p><p>🚀 МК Авторизация 3.0: Совершенство - <a href=\"https://t.me/pay_auth_perfection_bot\" target=\"_blank\">https://t.me/pay_auth_perfection_bot</a></p><p>🦋 Наш ТГ канал - <a href=\"https://t.me/redgroupchannel\" target=\"_blank\">https://t.me/redgroupchannel</a></p><p>Поддержи видео лайком, 1000 лайков 👍 и я делаю следующий полный курс!</p><p>Добро пожаловать в полный курс по Nest.js! Узнаем, как работать с базами данных через Prisma, создавать микросервисы и тестировать контроллеры и сервисы.</p>","<p>🔥 Оформить премиум подписку - <a href=\"https://htmllessons.io/premium?utm_so...\" target=\"_blank\">https://htmllessons.io/premium</a></p><p>❤️ Отзывы тут - <a href=\"https://t.me/htmllessons_reviews\" target=\"_blank\">https://t.me/htmllessons_reviews</a></p><p>🚀 МК Авторизация 3.0: Совершенство - <a href=\"https://t.me/pay_auth_perfection_bot\" target=\"_blank\">https://t.me/pay_auth_perfection_bot</a></p><p>Готовы к космическому ускорению вашей разработки? WebStorm 2.0 здесь, чтобы ускорить вашу разработку! Узнайте, как превратить WebStorm в ракету для кодинга: оптимизация расширений, космические темы, продвинутые настройки редактора.</p>","<p>🔥 Оформить премиум подписку - <a href=\"https://htmllessons.io/premium?utm_so...\" target=\"_blank\">https://htmllessons.io/premium</a></p><p>❤️ Отзывы тут - <a href=\"https://t.me/htmllessons_reviews\" target=\"_blank\">https://t.me/htmllessons_reviews</a></p><p>🚀 МК Авторизация 3.0: Совершенство - <a href=\"https://t.me/pay_auth_perfection_bot\" target=\"_blank\">https://t.me/pay_auth_perfection_bot</a></p><p>Поддержи видео лайком, 1000 лайков 👍 и я делаю новое видео!</p><p>Добро пожаловать на свежую настройку Visual Studio Code 2024 2.0. В этом видео мы покажем, как настроить редактор, чтобы он соответствовал вашим потребностям, а также, как установить расширения, чтобы расширить функциональность редактора.</p>","<p>🔥 Оформить премиум подписку - <a href=\"https://htmllessons.io/premium?utm_so...\" target=\"_blank\">https://htmllessons.io/premium</a></p><p>❤️ Отзывы тут - <a href=\"https://t.me/htmllessons_reviews\" target=\"_blank\">https://t.me/htmllessons_reviews</a></p><p>🦋 Наш ТГ канал - <a href=\"https://t.me/redgroupchannel\" target=\"_blank\">https://t.me/redgroupchannel</a></p><p>Поддержи видео лайком, 1000 лайков 👍 и я делаю видео про разработку игры с нуля!</p><p>Почему я закрыл веб студию? В этом видео я делюсь опытом и рассказываю, что повлияло на мое решение.</p>","<p>🔥 Оформить премиум подписку - <a href=\"https://htmllessons.io/premium?utm_so...\" target=\"_blank\">https://htmllessons.io/premium</a></p><p>❤️ Отзывы тут - <a href=\"https://t.me/htmllessons_reviews\" target=\"_blank\">https://t.me/htmllessons_reviews</a></p><p>🦋 Наш ТГ канал - <a href=\"https://t.me/redgroupchannel\" target=\"_blank\">https://t.me/redgroupchannel</a></p><p>Поддержи видео лайком, 500 лайков 👍 и я делаю новый полный курс!</p><p>В этом видео мы рассмотрим реальные примеры адаптации сайтов, используя CSS, SCSS и Tailwind. Узнаем, как эффективно адаптировать проекты под разные устройства и улучшить навыки в CSS, SCSS и Tailwind.</p>","<p>🔥 Оформить премиум подписку - <a href=\"https://htmllessons.ru/premium?utm_so...\" target=\"_blank\">https://htmllessons.ru/premium</a></p><p>❤️ Отзывы тут - <a href=\"https://t.me/htmllessons_reviews\" target=\"_blank\">https://t.me/htmllessons_reviews</a></p><p>🦋 Наш ТГ канал - <a href=\"https://t.me/redgroupchannel\" target=\"_blank\">https://t.me/redgroupchannel</a></p><p>В этом ролике мы создадим full-stack приложение Red Planner на популярном фреймворке React. Мы начнем с создания фронтенда, а затем перейдем к созданию бэкенда с использованием фреймворка Nest.</p>","<p>🔥 Оформить премиум подписку - <a href=\"https://htmllessons.ru/premium?utm_so...\" target=\"_blank\">https://htmllessons.ru/premium</a></p><p>❤️ Отзывы тут - <a href=\"https://t.me/htmllessons_reviews\" target=\"_blank\">https://t.me/htmllessons_reviews</a></p><p>Поддержи видео лайком, 2000 лайков 👍 и я делаю полный курс по Next.js 2024!</p><p>Новый большое видео на канале! Сегодня я публикую полный курс React JS для начинающих. Этот материал позволит тебе изучить Реакт за 2 часа с нуля.</p>","A car flies over a futuristic Cyberpunk / Bladerunner style city at night, mixed to some synthwave music, 12 hours, enjoy!","A showreel of my best work so far. Thanks for watching.","John Summit - Tears (with Paige Cavell) [Max Styler Remix]",Mountaints,"The best PS5 accessories to buy right now. Just bought a PlayStation 5 or want to upgrade your PS5 gaming setup with some new items? Here are my top, favourite and cheapest PS5 accessories I use.","The best games to play in October 2024 on PS5, Xbox Series, PC and Switch. There are also some games in here you’ve probably never heard of.","Welcome to my channel! This is a Day In The Life with the iPhone 16 Pro Max in Desert Titanium. I really enjoyed setting up my iPhone 16 Pro Max with the new customization features in iOS 18. I share many iOS 18 shortcuts & tips, new iPhone MagSafe cases & neat accessories, as well as testing out the new Camera Control & camera.",description,"my set from madison square garden is now live! we put so much time & energy into bringing this show together in real life so we’re stoked to share this experience with u on youtube 🙌 <br /> massive thanks to the incredible team that brought the comfort in chaos vision to life","without music !","В этом выпуске я превратил мастера по заточке в миллионера, нашел ему бесплатную рабочую силу и сделал его самым успешным человеком в спальном районе. Моим помощником стал певец, актер, шоумен и любимец всех женщин Прохор Шаляпин.","В этом выпуске я отправился на окраину Петербурга и превратил обычную Автомойку в бизнес мирового масштаба. А лицо Стас Костюшкина впервые украсило ТаймСквер."}'::text,
	'correlation', '0.44444445'::real
);
SELECT * FROM pg_catalog.pg_restore_attribute_stats(
	'version', '180000'::integer,
	'schemaname', 'public',
	'relname', 'video',
	'attname', 'id',
	'inherited', 'f'::boolean,
	'null_frac', '0'::real,
	'avg_width', '26'::integer,
	'n_distinct', '-1'::real,
	'histogram_bounds', '{cmawwzvz4000l4wt9zrxi2iwe,cmawwzwjx00224wt9t8q7kpgp,cmawwzwsu00324wt96rnd6hm0,cmawwzx55004a4wt9c8fsokbr,cmawwzxqt00614wt9oeruk8dx,cmawwzy9q007o4wt9xhmlilnb,cmawwzyfi008c4wt9jtn3qcrs,cmawwzyhv008s4wt9oma34pg0,cmawwzyvh00a14wt9cj7f36vb,cmawwzz6t00b44wt90h6ua44t,cmawwzzm900ca4wt93qtus3e5,cmawx006l00dy4wt9j9hdbiaz,cmawx00or00fj4wt9wtc8azz4,cmawx012x00gm4wt9bzlnwl97,cmawx01ph00ia4wt9oj70r7v0,cmawx026c00js4wt9t45otcch,cmawx028p00k64wt9u1hmtoh4,cmawx02ob00lj4wt9rqrd4trk,cmawx039n00ne4wt96w5xleul,cmawx03sg00p04wt9vpd3ggrw,cmawx045k00q74wt9igaq26lw,cmawx04ot00rs4wt93cg994tl,cmawx04zu00sr4wt90ejbktsa,cmawx058p00tn4wt980t6tgzf,cmawx05c600u54wt9mg02c50q,cmawx05v000vs4wt9i59jkfuz,cmawx06ah00x74wt9ydhtje39,cmawx06vz00yu4wt9bc7s0gml,cmawx075500zp4wt9vhrtayh9,cmawx07mb01164wt9y44dhos0,cmccnongc000wc7xfsyd8hr37,cmcd9m4w0001cc7xfi6w9f09r,cmcdfac4c002gc7xfocmkpodv}'::text,
	'correlation', '0.7677139'::real
);
SELECT * FROM pg_catalog.pg_restore_attribute_stats(
	'version', '180000'::integer,
	'schemaname', 'public',
	'relname', 'video',
	'attname', 'is_public',
	'inherited', 'f'::boolean,
	'null_frac', '0'::real,
	'avg_width', '1'::integer,
	'n_distinct', '1'::real,
	'most_common_vals', '{t}'::text,
	'most_common_freqs', '{1}'::real[],
	'correlation', '1'::real
);
SELECT * FROM pg_catalog.pg_restore_attribute_stats(
	'version', '180000'::integer,
	'schemaname', 'public',
	'relname', 'video',
	'attname', 'max_resolution',
	'inherited', 'f'::boolean,
	'null_frac', '0'::real,
	'avg_width', '4'::integer,
	'n_distinct', '3'::real,
	'most_common_vals', '{1080p,4K,720p}'::text,
	'most_common_freqs', '{0.4848485,0.3939394,0.121212125}'::real[],
	'correlation', '0.39872995'::real
);
SELECT * FROM pg_catalog.pg_restore_attribute_stats(
	'version', '180000'::integer,
	'schemaname', 'public',
	'relname', 'video',
	'attname', 'public_id',
	'inherited', 'f'::boolean,
	'null_frac', '0'::real,
	'avg_width', '11'::integer,
	'n_distinct', '-1'::real,
	'histogram_bounds', '{0Clv1hczxe,0aWMIy9fhy,3cr9BJ5Y8f,4iK9BXMzSI,5K5i_-TuU9,6YqfRGUag8,9Ryg3JYYLH,BEi5rIeRLe,BJk-NmleoH,BSnm3wl-Wq,EKcfTzhn7H,FfEEGmyKN4,FlYJEFihn1,HwauBF6EXs,KDGc4ZQC56,KcrIzZe2dB,MK5n5-onzb,NZa3sx3zAA,QKJujq6QPV,QssF24fWI5,RdXNh5I8bc,_gOO4Xec9B,cRL5lnmlOO,h6IYpaw_P_,k6jBqaRpqM,kduYPAlRhr,l4KfQXrDbv,qS_Xj-WcA4,r-VUVrJ8iQ,r8Tnc3zhRl,raWzYp9qyg,uLOjyC6o3B,zlWfAb74aa}'::text,
	'correlation', '-0.09124332'::real
);
SELECT * FROM pg_catalog.pg_restore_attribute_stats(
	'version', '180000'::integer,
	'schemaname', 'public',
	'relname', 'video',
	'attname', 'thumbnail_url',
	'inherited', 'f'::boolean,
	'null_frac', '0'::real,
	'avg_width', '38'::integer,
	'n_distinct', '-1'::real,
	'histogram_bounds', '{/uploads/thumbnails/-2maTnnyfVc-MQ.jpg,/uploads/thumbnails/-7K_0NRLCu4-MQ.jpg,/uploads/thumbnails/-eSIGOeg0Pw-MQ.jpg,/uploads/thumbnails/-jj5yVFf9LY-MQ.jpg,/uploads/thumbnails/-k_59yF_5GA-MQ.jpg,/uploads/thumbnails/1eDyOdo0Lsc-MQ.jpg,/uploads/thumbnails/4lwwwt4QXqE-MQ.jpg,/uploads/thumbnails/9617785d4a49.png,/uploads/thumbnails/9bf33999b726.png,/uploads/thumbnails/DJQbLwcJBmI-MQ.jpg,/uploads/thumbnails/EA8d31RSX8g-MQ.jpg,/uploads/thumbnails/Fbsusu0xfpY-MQ.jpg,/uploads/thumbnails/J4bJ118vWKo-MQ.jpg,/uploads/thumbnails/M4aaRoLDWsc-MQ.jpg,/uploads/thumbnails/OcKq7KqgL7g-MQ.jpg,/uploads/thumbnails/T-pA-wW8yJk-MQ.jpg,/uploads/thumbnails/Tbu5oECgPI4-MQ.jpg,/uploads/thumbnails/WJ9ycIyiBR4-MQ.jpg,/uploads/thumbnails/XKcyh0I0wXM-MQ.jpg,/uploads/thumbnails/_oKVkJj6C6Y-MQ.jpg,/uploads/thumbnails/b61a020abf23.png,/uploads/thumbnails/bJlp0Pcn8BA-MQ.jpg,/uploads/thumbnails/dSK13X9oGi8-MQ.jpg,/uploads/thumbnails/gqC0IZVAlsk-MQ.jpg,/uploads/thumbnails/i5-Cw07kBtQ-MQ.jpg,/uploads/thumbnails/ibqj6xGdi3M-MQ.jpg,/uploads/thumbnails/japaWd9Q0Lk-MQ.jpg,/uploads/thumbnails/nfJKsQNcZWo-MQ.jpg,/uploads/thumbnails/pMPo_huyY4o-MQ.jpg,/uploads/thumbnails/pwuFTsvJL34-MQ.jpg,/uploads/thumbnails/rYX5l8A5KyQ-MQ.jpg,/uploads/thumbnails/tfIwl9uJ8hY-MQ.jpg,/uploads/thumbnails/zAX6GWpG34s-MQ.jpg}'::text,
	'correlation', '-0.1821524'::real
);
SELECT * FROM pg_catalog.pg_restore_attribute_stats(
	'version', '180000'::integer,
	'schemaname', 'public',
	'relname', 'video',
	'attname', 'title',
	'inherited', 'f'::boolean,
	'null_frac', '0'::real,
	'avg_width', '68'::integer,
	'n_distinct', '-1'::real,
	'histogram_bounds', '{"Above The Neon City - 12 Hours - 4K Ultra HD 60fps","Anyma WE1 | Tomorrowland 2024",Dance,"Day in the Life with iPhone 16 Pro Max | iOS 18 Setup, Camera Tips & MagSafe Must-Haves","Frankyeffe & MOTVS - Fall Down","John Summit - Tears (with Paige Cavell) [Max Styler Remix]","John Summit Live @ Madison Square Garden","Maddix presents XTTC Radio 001","My 2024 Cozy Desk Setup | Standing Desk, Ergonomic Chair, 5K Monitor, Desk Accessories, Zen & Earthy",Nature,Road,"Swedish House Mafia WE2 | Tomorrowland 2024","The 10 Best PS5 Accessories Worth Buying!","Top 10 MUST-PLAY Games Coming in October","VISUALDON - Showreel 🌌","WEBSTORM 2.0: РАЗГОНЯЕМ IDE до космических скоростей!","🚀 Full-stack разработка Trello 2.0 | RED PLANNER [Next.js 14 / React / Nest / TypeScript / Prisma]","В какие часы лучше работать? Уникальный метод расчета","🚀 РАЗРАБОТКА ИГРЫ с НУЛЯ за 10 часов! [React / TS / Zustand]","Как Помодоро 25/5 Изменил Мою Продуктивность: Почему Я Вернулся?","Курс по Next js 14 - Без воды за 40 минут! RED Essence","Хобби vs. быстрый дофамин: путь к долгосрочному счастью","Почему я закрыл веб студию?","ПОЛНЫЙ КУРС NEST JS за 3 часа - С НУЛЯ до ПРОФИ!","ПОЛНЫЙ КУРС NODE JS / EXPRESS за 2 часа - С НУЛЯ до ПРОФИ!","ПОЛНЫЙ КУРС REACT JS для начинающих - Изучи Реакт за 2 часа с нуля!","ПОЛНЫЙ КУРС TAILWIND CSS за 30 минут с нуля! RED Course","СОЗДАЛ ИГРУ С НУЛЯ и исполнил мечту детства!","Свежая НАСТРОЙКА VS CODE 2.0 [Расширения / Снипеты / Хоткеи]","НАСТАВНИК ПО БИЗНЕСУ #1 АВТОМОЙКА ПОПАЛА НА ТАЙМСКВЕР","НАСТАВНИК ПО БИЗНЕСУ #2 ПРОХОР ШАЛЯПИН НАКОРМИЛ ВЕСЬ РАЙОН","АДАПТАЦИЯ САЙТА на примере РЕАЛЬНОГО проекта | CSS, SCSS, Tailwind","Анимированный сайдбар за 40 минут! React / Framer-motion / Jotai"}'::text,
	'correlation', '-0.3970588'::real
);
SELECT * FROM pg_catalog.pg_restore_attribute_stats(
	'version', '180000'::integer,
	'schemaname', 'public',
	'relname', 'video',
	'attname', 'updated_at',
	'inherited', 'f'::boolean,
	'null_frac', '0'::real,
	'avg_width', '8'::integer,
	'n_distinct', '-1'::real,
	'histogram_bounds', '{"2025-05-20 19:36:13.216","2025-05-20 19:36:13.966","2025-05-20 19:36:14.286","2025-05-20 19:36:14.73","2025-05-20 19:36:15.51","2025-05-20 19:36:16.398","2025-05-20 19:36:16.484","2025-05-20 19:36:16.974","2025-05-20 19:36:17.937","2025-05-20 19:36:18.669","2025-05-20 19:36:19.324","2025-05-20 19:36:19.834","2025-05-20 19:36:20.645","2025-05-20 19:36:21.253","2025-05-20 19:36:21.338","2025-05-20 19:36:21.9","2025-05-20 19:36:23.345","2025-05-20 19:36:24.509","2025-05-20 19:36:24.907","2025-05-20 19:36:26.586","2025-05-20 19:36:27.359","2025-06-20 20:44:23.844","2025-06-22 00:10:49.785","2025-06-22 13:01:21.199","2025-06-25 15:53:21.927","2025-06-26 00:07:23.364","2025-06-26 14:04:17.694","2025-06-27 16:12:32.104","2025-06-27 16:13:13.7","2025-06-27 16:27:12.986","2025-06-27 17:30:16.924","2025-06-27 19:02:56.978","2025-06-27 19:15:39.932"}'::text,
	'correlation', '0.9281417'::real
);
SELECT * FROM pg_catalog.pg_restore_attribute_stats(
	'version', '180000'::integer,
	'schemaname', 'public',
	'relname', 'video',
	'attname', 'video_file_name',
	'inherited', 'f'::boolean,
	'null_frac', '0'::real,
	'avg_width', '17'::integer,
	'n_distinct', '-0.3939394'::real,
	'most_common_vals', '{0eb61a8131f0.mp4,496709250ca9.mp4,f3d594a6af3f.mp4,0d9aaca6a564.mp4,0e9f86b38cdb.mp4,2ada0ace97d5.mp4,7924f3132f0c.mp4,8600fc2dbc9e.mp4,97cce9f49787.mp4,a501e9639efa.mp4}'::text,
	'most_common_freqs', '{0.21212122,0.18181819,0.09090909,0.060606062,0.060606062,0.060606062,0.060606062,0.060606062,0.060606062,0.060606062}'::real[],
	'histogram_bounds', '{136be48a45f0.mp4,9f8a0b5ab23b.mp4,cf1cc2a5b83b.mp4}'::text,
	'correlation', '0.054144386'::real
);
SELECT * FROM pg_catalog.pg_restore_attribute_stats(
	'version', '180000'::integer,
	'schemaname', 'public',
	'relname', 'video',
	'attname', 'views_count',
	'inherited', 'f'::boolean,
	'null_frac', '0'::real,
	'avg_width', '4'::integer,
	'n_distinct', '-1'::real,
	'histogram_bounds', '{5,21,40,801,1400,1600,2303,4753,5862,7443,7452,12206,12992,14112,17367,21388,22000,29700,35619,46329,50514,52354,58181,62938,63811,75605,85431,97212,104061,174188,575564,1155242,2694486}'::text,
	'correlation', '0.2720588'::real
);


--
-- Statistics for Name: video_comment; Type: STATISTICS DATA; Schema: public; Owner: -
--

SELECT * FROM pg_catalog.pg_restore_relation_stats(
	'version', '180000'::integer,
	'schemaname', 'public',
	'relname', 'video_comment',
	'relpages', '8'::integer,
	'reltuples', '186'::real,
	'relallvisible', '0'::integer,
	'relallfrozen', '0'::integer
);
SELECT * FROM pg_catalog.pg_restore_attribute_stats(
	'version', '180000'::integer,
	'schemaname', 'public',
	'relname', 'video_comment',
	'attname', 'created_at',
	'inherited', 'f'::boolean,
	'null_frac', '0'::real,
	'avg_width', '8'::integer,
	'n_distinct', '-1'::real,
	'histogram_bounds', '{"2024-07-28 13:56:03.675","2024-08-13 12:18:12.567","2024-09-17 22:32:38.066","2024-10-31 18:22:07.235","2024-12-09 22:26:41.4","2024-12-20 07:38:30.019","2025-01-11 19:03:59.335","2025-01-12 22:24:43.109","2025-02-02 23:25:21.811","2025-02-10 22:16:59.215","2025-02-12 05:29:16.861","2025-02-15 03:30:11.323","2025-02-23 03:31:03.287","2025-02-27 07:25:53.696","2025-02-28 10:49:16.61","2025-02-28 20:28:28.244","2025-03-14 04:23:00.949","2025-03-17 08:22:29.019","2025-03-18 01:03:13.924","2025-03-19 22:55:52.734","2025-03-20 08:18:34.515","2025-03-21 07:40:06.518","2025-03-23 14:28:51.122","2025-03-25 13:45:53.039","2025-03-27 11:55:18.555","2025-03-28 22:50:24.651","2025-04-01 02:02:50.281","2025-04-01 14:06:43.451","2025-04-02 01:05:58.682","2025-04-02 15:23:05.196","2025-04-03 23:24:35.109","2025-04-04 17:12:01.552","2025-04-05 18:19:30.847","2025-04-07 18:38:35.072","2025-04-09 11:32:42.382","2025-04-10 11:25:16.902","2025-04-12 08:41:52.927","2025-04-12 23:13:59.369","2025-04-14 01:15:05.442","2025-04-14 15:04:53.41","2025-04-18 03:38:39.044","2025-04-18 20:08:09.322","2025-04-19 06:13:22.999","2025-04-21 18:28:06.986","2025-04-23 14:19:04.783","2025-04-24 03:40:09.085","2025-04-25 03:50:54.026","2025-04-25 22:16:27.575","2025-04-27 10:05:42.304","2025-04-27 13:50:37.016","2025-04-28 19:29:09.535","2025-04-29 14:42:46.736","2025-05-01 00:38:14.974","2025-05-01 12:13:30.238","2025-05-01 17:30:05.44","2025-05-02 07:54:03.116","2025-05-03 09:12:47.906","2025-05-03 14:59:54.265","2025-05-04 04:50:03.1","2025-05-04 08:50:41.666","2025-05-04 21:16:14.343","2025-05-05 22:02:00.364","2025-05-07 09:01:16.386","2025-05-08 07:10:57.476","2025-05-08 07:50:48.098","2025-05-09 00:39:55.357","2025-05-09 17:45:30.974","2025-05-09 17:48:23.532","2025-05-10 10:13:34.279","2025-05-10 17:25:45.765","2025-05-11 15:30:24.292","2025-05-12 03:36:08.658","2025-05-12 06:49:41.653","2025-05-12 08:08:35.463","2025-05-13 03:56:49.019","2025-05-13 17:49:03.842","2025-05-14 03:29:04.703","2025-05-14 11:02:15.786","2025-05-14 13:05:11.249","2025-05-14 17:26:54.746","2025-05-15 13:36:00.637","2025-05-15 16:06:10.024","2025-05-15 22:42:05.11","2025-05-16 00:20:45.955","2025-05-16 11:45:06.056","2025-05-16 18:20:18.58","2025-05-16 22:47:47.284","2025-05-17 00:08:41.777","2025-05-17 23:53:20.966","2025-05-18 13:58:11.242","2025-05-18 19:31:39.671","2025-05-19 07:21:34.981","2025-05-19 10:59:37.603","2025-05-19 17:54:07.041","2025-05-19 23:47:17.437","2025-05-20 04:19:38.051","2025-05-20 13:07:46.01","2025-05-20 14:18:19.545","2025-05-20 15:01:01.44","2025-05-20 17:43:25.424","2025-05-20 19:15:14.011"}'::text,
	'correlation', '0.07884693'::real
);
SELECT * FROM pg_catalog.pg_restore_attribute_stats(
	'version', '180000'::integer,
	'schemaname', 'public',
	'relname', 'video_comment',
	'attname', 'id',
	'inherited', 'f'::boolean,
	'null_frac', '0'::real,
	'avg_width', '26'::integer,
	'n_distinct', '-1'::real,
	'histogram_bounds', '{cmawwzw0p000x4wt9f36jujr6,cmawwzw2m00104wt95tqrws03,cmawwzw6n00164wt9i1m7dalg,cmawwzwlc002f4wt987x5jsb7,cmawwzwvc003h4wt9evj0xp2y,cmawwzwxj003n4wt90tvmg5qk,cmawwzwzq003t4wt9kig7oy8b,cmawwzx0u003w4wt9t19et2cz,cmawwzx7m004n4wt9xegh7f2d,cmawwzx9r004t4wt9dwr18y16,cmawwzxc2004z4wt91v1mxl2s,cmawwzxfi00554wt97pqf6zq8,cmawwzxs5006a4wt9qiyl7agu,cmawwzxud006g4wt9jq1e4tlv,cmawwzxvg006j4wt9byf5p1n1,cmawwzxxn006p4wt977j5kngb,cmawwzxzy006v4wt9j7dnlrzr,cmawwzyc700814wt9kzqivp0k,cmawwzygs008n4wt9xce6pomo,cmawwzyk800954wt9xzvqrdit,cmawwzyme009b4wt980wmcz8l,cmawwzynh009e4wt9upkwoyph,cmawwzyq1009k4wt9sbf01pxf,cmawwzywq00ab4wt9ktrqh7b8,cmawwzyyx00ah4wt9z2vy1l4v,cmawwzz1300an4wt9rmyaqfqs,cmawwzz8300be4wt9arvhl8do,cmawwzz9800bh4wt9vqf3awcn,cmawwzzoz00cn4wt960nz0035,cmawwzzri00ct4wt9wz6nw8qc,cmawwzztr00cz4wt96k1tmdv5,cmawwzzw500d54wt9ukejqdt3,cmawwzzyn00db4wt9kb5uftdk,cmawx009200eb4wt9qvm792me,cmawx00a700ee4wt976lea6pt,cmawx00ce00ek4wt90qcynf8q,cmawx00em00eq4wt9xfe6dhal,cmawx00q200ft4wt9tvvzjpfo,cmawx00sb00fz4wt9lrqsncob,cmawx00ul00g54wt9w9qf05t1,cmawx00xs00gb4wt9ptnygmg9,cmawx00zz00ge4wt9e73x9p9p,cmawx014f00gw4wt9qkw0n7lv,cmawx017a00h24wt93oxmkg9b,cmawx01a400h84wt9xxj401q1,cmawx01ck00he4wt9sp4iw8wl,cmawx01ry00in4wt946gchkxs,cmawx01t500iq4wt93ke84bq5,cmawx01vc00iw4wt9f9c5q30h,cmawx01xj00j24wt9kop0uu33,cmawx01zq00j84wt974q8mazx,cmawx02a100ke4wt905iraaoc,cmawx02c700kk4wt9o2mw3ujg,cmawx02pl00lu4wt9aejhndem,cmawx02qp00lx4wt96i3lwu2v,cmawx02st00m34wt94b3yguao,cmawx02v000m94wt9773nz7w6,cmawx02x800mf4wt90tcudtkz,cmawx03av00nm4wt95hl1yqa3,cmawx03d200ns4wt9wxejhn2j,cmawx03f800ny4wt9b5ui1158,cmawx03gb00o14wt9k4j96wvp,cmawx03in00o74wt9jtmjtjzg,cmawx03ks00od4wt98kxx1i94,cmawx03ut00pb4wt9lgrefpks,cmawx03wz00ph4wt94bpkky12,cmawx047w00qh4wt9zesza2rd,cmawx049400qk4wt9tarti9jl,cmawx04bi00qq4wt9ankbulns,cmawx04do00qw4wt9bvwm1w61,cmawx04fx00r24wt9lstrtbks,cmawx04q400ry4wt9fam7m7ss,cmawx04sc00s44wt9fiw802my,cmawx04uh00sa4wt9me92ndz1,cmawx04vk00sd4wt9stzmcrf2,cmawx051400t04wt9wbn894rc,cmawx053a00t64wt9kqv7xuvp,cmawx055g00tc4wt9v67yg7mn,cmawx059z00tx4wt9l8zuho8e,cmawx05de00ue4wt95oydk94g,cmawx05fo00uk4wt9gs1i75yy,cmawx05gq00un4wt9q6lswanj,cmawx05iw00ut4wt952q0i4f9,cmawx05l100uz4wt9r8jld5qp,cmawx05xg00w54wt9ov4ytkw3,cmawx05zn00wb4wt946co1hiv,cmawx061t00wh4wt93cfql3vq,cmawx062w00wk4wt9faj8pcm8,cmawx065100wq4wt9smu29cqz,cmawx06c600xg4wt9a3zvlu52,cmawx06fg00xm4wt9klruq87b,cmawx06i500xs4wt9k45wjtu5,cmawx06kb00xy4wt9buonuf67,cmawx06yi00z54wt9p4boqibm,cmawx06zo00z84wt9fnxwt377,cmawx076i00zy4wt96gujsahn,cmawx078p01044wt9zsynzz4e,cmawx07ay010a4wt9oo53zbey,cmawx07dh010g4wt9ou2hvexj,cmawx07fn010m4wt97om6tas5,cmawx07nm011f4wt96rvbstwb}'::text,
	'correlation', '0.997156'::real
);
SELECT * FROM pg_catalog.pg_restore_attribute_stats(
	'version', '180000'::integer,
	'schemaname', 'public',
	'relname', 'video_comment',
	'attname', 'text',
	'inherited', 'f'::boolean,
	'null_frac', '0'::real,
	'avg_width', '202'::integer,
	'n_distinct', '-1'::real,
	'histogram_bounds', '{"Ab defendo curtus venia adicio statua tepidus. Sono nobis adamo solium quaerat suppono callide. Tergeo cribro vicinus.","Absque numquam commodo. Totus id voco aequus pectus. Cuppedia cribro confugo. Aggredior acceptus officiis bis arma ulciscor audentia temperantia comitatus. Vulnero sapiente eum trans.","Abutor decens auctor curriculum appello atrocitas cupio alienus. Amplitudo repellendus taedium infit conor sapiente comptus. Spes consequuntur curatio admoneo ager facilis molestias administratio abbas tabula. Ciminatio balbus acerbitas vulpes officia vis sponte verecundia ulciscor volo.","Accendo arto amplitudo eum placeat strenuus copia depono quod communis. Nam sordeo ab ipsam. Reprehenderit turpis subito temptatio appono usque tredecim. Soluta volup ratione amplus cras. Depulso conicio soluta somnus denique substantia defetiscor subseco apud arcesso. Ventus deficio vulticulus xiphias ut ulciscor solutio tempore.","Acquiro curvo ultio aestivus custodia currus. Earum solio uter sponte strues. Dicta tempore eos victus.","Adfectus defero color acidus. Summopere ducimus solutio perferendis abstergo tantillus. Amet tergiversatio suscipit supellex. Nisi aspernatur utrimque cruentus commemoro molestiae tamquam.","Admoveo aeternus arma amor. Sursum officia verbum certe. Copia odit vesco caelum creo dapifer verumtamen substantia at argentum. Calculus magnam bene catena terror consequuntur abscido ipsum.","Adnuo conspergo victoria suscipit. Careo surgo accommodo sono ducimus adeptio quae summopere a. Arbitro tergo truculenter adnuo angustus conservo baiulus nobis varius vesper.","Aegre altus talis sumo denique tres. Odit demens ars ventito tero vindico teneo voco. Demulceo summa impedit una torqueo abduco. Suadeo cubitum ascisco. Clarus laboriosam acies carcer contra desipio clarus.","Aegrotatio damnatio defero. Apostolus tendo collum capitulus turpis quo non laboriosam colo. Vado cubo iure textus stultus valeo contra laborum. Agnitio calco accusantium. Vicinus sulum cubitum.","Aequus absque nostrum celebrer sub antepono. Ademptio viridis deporto tabernus audax in amita argentum natus tersus. Denique tubineus amet numquam sui ulterius nihil. Desparatus id aurum demoror. Amita adipiscor tergum amplitudo angulus crustulum error dolor cilicium.","Aeternus vero vulgus copiose eos admiratio cohors vilicus repudiandae tempus. Certus combibo defetiscor dignissimos acies stella.","Alveus asperiores minus. Viscus creta colo accendo urbs terga alius. Cubitum civitas antepono voluntarius titulus ver. Temperantia denuncio bene nobis cattus desidero ubi tepesco eum. Temptatio cognomen alius vel basium cattus aperte coadunatio. Cumque crustulum sit.","Animadverto suppono ea accommodo torrens angulus minus collum. Stabilis aequitas perferendis sperno vestigium uter depopulo. Surculus curia aeternus viriliter voluptas molestiae. Itaque voluptatum vestigium callide. Tempus sponte cibus beatae suus una tutamen supellex canis valde.","Animus patior ascisco cohibeo conscendo versus vae. Venustas repudiandae viduo ante non appositus coerceo. Caste cubitum volubilis vita tamisium doloremque cubo. Adipiscor appositus spectaculum ago decor admiratio. Delibero vesica traho administratio aetas velut creator custodia beatus.","Apto amita supplanto quod. Acidus causa viridis usitas denique dolor contabesco. Cupiditas harum illum comes coniecto ocer.","Argentum venio civitas. Acervus desipio tribuo blandior admitto tollo dolorem. Canis statua repudiandae ulterius. Cavus amet curtus tum corpus uredo laudantium cunctatio.","Armarium subvenio appello dapifer magnam termes. Administratio cubo adnuo argumentum depono confugo tutamen tremo. Corrigo decimus illum creber cognomen. Doloribus thymbra copia substantia cogito. Suggero volaticus vulgus absorbeo.","Atrox vulnus certus ventus nulla administratio velum vestigium. Vigor delectus angelus bestia audio eos volubilis. Vester arma conor comes vero depraedor delego annus astrum suasoria. Tutis solio mollitia cohibeo tamquam curis caste.","Attero summisse vindico. Ipsa ustulo tergum vesper apto timor argentum cenaculum.","Auctor deripio tempore curso aegre comburo aestas. Defaeco tabula tollo utique alii admoneo cometes xiphias constans libero. Vaco totus eveniet vinitor cultura defendo tredecim iste. Arca conatus quibusdam corrupti argumentum cauda totus. Aranea deleo arto blandior celo officia argentum veniam. Apto tergum animus avarus.","Beatus vesco clamo verto. Angelus virgo adhuc campana viridis repudiandae atavus ascit adduco.","Bos vesper consequuntur ipsum demergo valde depereo culpa. Thymbra vobis cerno sub consequatur aegre voco conatus. Aranea amo cribro. Hic suffoco vester cito cubicularis. Theologus deficio clementia cornu. Vado cattus color.","Calco patruus cultura derideo. Arx turpis ancilla validus aurum vilitas adicio sed patrocinor vulnero. Vulgo crastinus abutor curvo accommodo tabesco. Desidero umerus aeger doloribus vado occaecati aedificium.","Capitulus agnosco delectus suscipit. Ter sublime solitudo. Currus commemoro vigilo cubicularis vir aetas tepesco antiquus pectus. Concido spoliatio trepide advoco adiuvo.","Cauda spoliatio agnosco. Rerum correptius cilicium antiquus. Voluptatum conspergo videlicet tantum attollo statim crustulum accusamus ante studio. Timidus officia traho vel utroque adduco. Vitium abstergo speculum sophismata tabesco. Vix sordeo ullus curis conitor tener sufficio cui patria verus.","Centum uredo corrumpo vulgo cervus via adiuvo incidunt. Surgo solitudo acceptus. Cilicium vorax auxilium coma totidem stabilis aperio sublime cattus eaque.","Cervus patria deficio vulgo coniecto currus tergiversatio thalassinus verbera. Nostrum aestus cetera casso curtus audentia patrocinor vorago possimus. Trepide cunctatio deludo conitor colo angulus. Patruus aperiam vitae accommodo arca vergo. Dolorem valde cerno sono.","Cilicium tonsor tunc spargo sustineo adopto iure autus sit ea. Facilis laudantium tubineus veritatis amissio.","Clementia calculus voro solvo speciosus usque peior tero paens. Alii casus tertius amita pectus ciminatio assentator usus thymum. Degero victoria suasoria talio.","Cohaero ambulo paulatim odit. Occaecati ad acer vilicus. Non color stips arbustum. Tot eligendi bonus suasoria et quibusdam defleo testimonium. Eveniet absque turpis. Tenax consuasor voluptatibus cubicularis audax natus pariatur mollitia absorbeo.","Coma credo vindico capio. Neque aptus tricesimus calco optio utpote causa deprecator approbo aliquid. Acervus subseco accedo eos communis derelinquo adaugeo.","Complectus veritas consequuntur. Universe alienus aliquid temptatio. Thorax quod amiculum quidem coniuratio custodia.","Conduco adopto acidus. Benevolentia dicta aeternus. Adficio cras nostrum careo.","Conforto ea campana verto. Animus arcus viduo cresco textus amet thesaurus conicio in culpa.","Conscendo copiose basium tempore terror praesentium candidus. Balbus voluptate communis temperantia asper capio volup arceo. Viridis decens voco.","Constans curis animadverto congregatio vorago vulgus velum totam facilis stabilis. Tergeo valens tutis cribro anser autem centum tersus.","Cotidie cilicium aliquam ut praesentium. Tergeo adipiscor defessus vesica patior celo.","Cruciamentum tutamen astrum tres statim pauper cito nesciunt clarus curia. Collum acervus calamitas deludo cubicularis delectatio vacuus ter velociter. Pel cui sufficio vulticulus recusandae vulticulus aveho urbanus rem audentia. Trucido utique voveo voco supplanto ager. Tabella creptio officiis.","Cupiditas deficio acervus tenuis stultus stips cur. Consequuntur arbitro antea ceno victus. Deleo vestigium abundans verus vix crux tibi cuius ex tres.","Cura audax debeo urbanus. Suscipit vis thymbra canonicus uterque. Vulgaris caute saepe cultellus suggero conforto omnis ascit sonitus. Error cognomen cognomen provident.","Cura doloremque vergo aeneus. Coadunatio dedecor decipio. Illum laborum sursum comis.","Debilito amor bellum. Nihil coma crudelis aurum celer vomito templum cultura turbo. Tabernus nam doloribus soluta bellicus peior tametsi. Usitas coaegresco traho voluptatum tremo vestigium aveho creo. Nihil curvo absque quae ver patrocinor harum ventus.","Decet deorsum coma distinctio sufficio. Crepusculum trans tui. Adamo id asper vallum volva corroboro arguo tamen numquam. Sopor conitor delibero.","Defero magni surgo acies facilis corrumpo delibero ter aegre. Convoco sortitus vulgus corrumpo iste vereor id magni sub.","Demens absum abundans adversus subiungo deserunt contego convoco porro arbor. Amaritudo cubitum suus curriculum volutabrum deleo alias cohaero condico considero. Curiositas allatus chirographum odit.","Demulceo textus soleo volaticus. Sint fuga cursim arbustum aegrotatio valde attonbitus minus aeneus. Atrox molestiae tres tego. Beatus architecto adhaero vinum vicissitudo paens tracto vulgaris atque alo. Rem adfectus communis desino vulnero tenus tonsor atavus sollers versus. Peior error cunctatio vicissitudo sortitus recusandae ut coniuratio claro tempore.","Denego saepe chirographum suscipio vulgus utilis apostolus. Verto sono confero canto sublime alter pectus repellat constans cornu. Conitor abeo sunt spes corrigo curia appono. Earum deserunt artificiose temptatio vulgaris curriculum uberrime quae. Delego statua texo validus.","Depromo coruscus cribro sumo vetus solvo velut aptus valens tertius. Sollicito accusantium somnus. Summa valens civitas dignissimos aro. Provident succedo temporibus tremo derideo doloremque temperantia.","Eligendi tenetur volup mollitia. Deludo depereo allatus. Conduco aqua voluptatum abeo.","Et despecto tandem capto sui copiose. Confugo adamo ultio comis ago. Conforto vae comitatus quod tempora curriculum expedita. Vicissitudo vindico careo aestus vulticulus tum derelinquo fugiat sumo apud.","Explicabo conduco cogito recusandae cilicium solum. Tenuis suffragium cursim tardus currus aedificium.","Ipsam perferendis ventito delectus surculus reiciendis certe tribuo beatae. Capitulus creo strenuus absorbeo adsuesco adeptio argentum tollo.","Laudantium cupio voluptates claudeo animadverto. Ascit subiungo quae sufficio assentator tergum. Charisma pax videlicet vulgivagus tres tenetur suadeo tenuis ventus velociter.","Maiores reprehenderit cubo advoco solio caute administratio. Rerum demum alias debitis terga suggero asper vorax tandem utpote. Cicuta amita appello animi asperiores capillus cubicularis tolero certus defessus. Spes accedo voluptatibus atrox nobis dicta convoco.","Mollitia tenax demulceo cedo caste soluta adimpleo supellex tempus valde. Alter amor nobis subvenio templum.","Nobis artificiose cunctatio saepe decens campana uberrime adulescens ratione itaque. Eos arceo tonsor vester arx talio. Congregatio ait corporis truculenter.","Pel vesper patrocinor animus. Video tamen casso acies tollo spiritus.","Placeat saepe ventosus angelus pectus alo ab urbs. Ago vicissitudo tergo ver sequi tantum vita neque. Deserunt arca eligendi tenus candidus eaque vigor. Earum officiis curtus considero tantum textilis autem. Terminatio tenus tabgo bos architecto vetus taedium.","Saepe tricesimus vix tamisium canis. Carpo coniuratio desparatus allatus vilicus suscipit terreo fuga accusator tumultus. Vulgo adulescens convoco alius coaegresco quidem. Soleo unus alioqui fugit reiciendis altus quaerat. Autem pel animadverto. Adfero cursim quod atque totus.","Socius adfectus crustulum ager. Amicitia volutabrum condico vomer arcesso culpa sequi stabilis. Aegre nam caput contego.","Solitudo voro stillicidium corrigo pecco stultus tego verus viriliter placeat. Corrupti traho ad vestrum voluntarius undique. Bene demens corrumpo advoco volutabrum sequi sustineo. Inventore tenuis deficio totus curia. Denique voro usus defendo vindico.","Spiculum synagoga clam accusantium comminor demitto constans delectatio degenero una. Aut audacia undique tantillus sperno unde vereor vulpes annus correptius. Tunc caput absens admoneo creo ventosus tondeo trucido copiose aestus. Tempora corona undique. Ab bos ambulo. Ex arx spectaculum beneficium strues aspernatur defessus stillicidium dedecor.","Stabilis tamisium amor ascit vitiosus sublime vinum concido. Despecto solvo suffragium admiratio iusto. Tabesco admiratio auxilium accusantium ad corrumpo tabgo vehemens sumptus. Architecto spiritus animadverto adulatio nemo alias cubicularis.","Stillicidium consuasor appello iusto textus ustilo studio tendo ver. Auctor video absum vinculum triumphus cura defaeco thema aegre temptatio.","Suasoria accusamus suspendo caterva sit asperiores. Incidunt atavus brevis bene. Verbera delicate doloremque molestiae. Solitudo vorago attollo comprehendo repellat tendo. Asper bibo patrocinor tunc calculus vulnus. Distinctio labore adicio desipio delectus.","Succedo vobis cohibeo currus deduco modi certe aperte stips. Viscus labore vix solio atqui cuius tergum conitor est teneo. Fuga animi abutor odio deprecator nisi corpus angelus pel. Vel nobis iusto consuasor uterque cibus quia certe. Virgo perspiciatis ab tollo appositus stabilis omnis aegrus.","Suffragium colo civis dicta. Denuo vesco termes carpo deprecator conservo quaerat. Absconditus capto constans concido. Clibanus tergo sub deputo cohaero nisi sophismata. Coma cicuta iure adaugeo patior. Usitas ut temptatio.","Suppellex cogo tabgo quos argentum ullus. Sufficio accusamus tui minima bibo.","Tabgo talio aegrus alioqui. Eius adflicto tabula angustus valens libero anser somniculosus. Stabilis aeneus adeptio vulgo aestivus urbs custodia studio.","Taceo adimpleo consequuntur totidem culpo error rem sodalitas sit. Tandem cur ademptio adeptio beatae. Confido desidero acer amiculum deludo beneficium. Nemo traho cimentarius virga. Auctor callide deprimo sollicito patrocinor vir adaugeo consuasor usque. Velociter ultio tantillus videlicet comprehendo cena delicate collum sum repellat.","Taedium nemo sto patior subvenio. Vociferor approbo aegre adfectus torqueo absque vito conventus. Earum venio summisse delectus.","Tego sublime cotidie. Aetas ratione decens careo addo commodi traho. Aro compello libero depulso titulus ter verumtamen et uter. Temptatio chirographum vito.","Tenax vereor advenio auditor beatae apud labore. Argumentum corrupti vapulus aedificium cultellus consequatur. Nam censura adflicto ceno cado. Vigor earum decor.","Teneo synagoga venia avarus avarus clarus audentia velum arcesso substantia. Canto volutabrum porro suadeo decet tempus velit.","Timor combibo valeo demitto. Ars vapulus accusamus clamo derelinquo vesper amor advenio.","Torrens certe turpis sum tunc conturbo teneo vito vox. Reprehenderit dignissimos thymum degusto condico cavus.","Traho auctor soleo. Ver modi accusantium conspergo aqua ipsum verus conspergo voco. Earum capto tabella celer ademptio comparo sperno alii. Tunc surculus vulticulus adsuesco ex adficio. Cura communis deripio.","Tres compono cena bos aedificium vir ait accommodo aduro aduro. Decet aggero vesco delibero corroboro taceo sequi delicate. Valde temporibus tyrannus alioqui viridis deficio viduo cursim. Taceo carcer sulum tricesimus vestrum cito id versus.","Tui volutabrum terminatio. Sui artificiose quisquam cuius. Commemoro repellat vitae. Voveo tantillus caveo.","Tutamen cohaero quo. Vomito tener cunctatio ullus.","Tutis cervus absum impedit porro. Cunctatio bellum carus bardus vomito tandem delicate contra aspernatur ascit. Caveo clibanus perferendis argumentum concido damnatio. Cito crux cotidie perspiciatis aestivus arma versus inventore auditor textus. Expedita vinum pariatur.","Ubi maxime cinis atavus vito amplitudo crux territo. Clam defleo necessitatibus. Abeo tremo amiculum tam adsuesco celer textor. Vulgus cado ventus.","Ulterius thymum concedo. Vado audio provident blandior copia ascisco aspernatur sono virga. Vivo ab thema facere admiratio voluptatibus suppono arx.","Umerus careo quia clibanus alius. Supplanto demo coruscus apud copiose ars substantia. Decens tergiversatio tam conicio bellicus subiungo studio. Totidem crudelis vae tyrannus asper calculus auctor acerbitas summisse tripudio. Cruciamentum eligendi trucido degenero sui talus cruciamentum colligo.","Unde accusamus comprehendo avaritia vestigium. Vester infit utroque adfero corrigo occaecati cernuus nihil villa.","Utrimque ustulo caelestis. Benigne eius vigilo absum sollicito sollicito porro corona. Circumvenio arca sunt terebro virga cohibeo atrox. Aspicio subiungo thymbra denique cunctatio corporis natus.","Utrum conventus aestus. Asperiores torqueo teres occaecati cubitum paulatim tamquam desipio virga delectatio. Desipio solum caecus viscus theca virtus. Optio confero triumphus laborum brevis ciminatio asporto desino vester.","Vae eius iste nisi patria autem summisse sol circumvenio suppellex. Defessus universe adfero tenetur claustrum unde varius corporis. Teneo bos pariatur. Tolero necessitatibus comptus civis. Admoneo confido complectus beatae arcus spiculum laudantium vestigium adhaero. Ultra canonicus cubo itaque tendo vespillo enim benigne vespillo.","Velociter vito strues antiquus nesciunt. Venio caelestis fugiat caste suspendo antiquus thymbra. Acies occaecati quo quaerat quisquam canto porro cur vestrum.","Veniam aeneus tergo correptius atque beatae. Depereo denuncio teneo acerbitas. Aegrotatio tres adipiscor reprehenderit abbas. Unde decens summopere stipes textor facere balbus. Curtus surgo tricesimus aestivus provident deinde patria acidus fugiat similique. Quos voluptas curo clam stella atqui.","Ventosus cotidie aegrotatio vesica contra conscendo tondeo tabgo. Conturbo vomito advoco pecco. Spero tabesco spoliatio.","Versus utroque voluptatem ex adicio. Caterva tandem viriliter vomito. Tutamen sponte officiis sit utor crustulum defungo. Claro vomica cunabula magni tolero admiratio conicio pauci dicta. Non reprehenderit degenero cum deorsum calculus avaritia unde absum.","Vestrum esse est pauper. Ducimus tamquam unde tempus utpote tenetur placeat. Stillicidium agnosco adipisci sopor uredo.","Victoria casso angustus vita strenuus conservo. Decet denuo tribuo absque carcer aptus bonus comis. Cogo trans cedo alioqui dens culpa tripudio. Vulgaris thymum contra repellendus terra. Constans cinis barba coniuratio astrum sustineo alii tendo theca curiositas.","Vinculum harum dolores. Clementia absconditus crur cubicularis votum sublime allatus. Arcus cunabula cunabula totus bis fugit. Conatus vesper tredecim mollitia appello necessitatibus. Adflicto dignissimos ustilo somnus ars cotidie delectus casso sodalitas torrens.","Viscus cognomen benigne tutis pel. Venio cibo amiculum trado bestia torrens. Timor aeneus summa tactus rerum maiores.","Vita ventus bardus cohaero viridis sollers animi. Valde ducimus vel accendo surculus. Creta perferendis verbera dolores suspendo delinquo celebrer. Desino quibusdam amor vespillo canis.","Vix alienus vorax comes damno pecco sui. Votum mollitia vix testimonium sursum delectatio textus aperiam thymbra. Tabernus vero umerus similique aperte amplus sollicito somnus adicio. Tergum supra atqui casus clibanus taceo utique carpo tam. Clibanus comptus verto altus uxor qui tolero aureus. Correptius dedico patrocinor deludo crur curia cometes celer decumbo.","Volup copiose aer curvo conicio. Coadunatio suasoria vinco comburo quibusdam cometes thesaurus tersus. Cumque veritas sunt aduro. Amicitia timidus cognomen crapula ago. Auditor consequuntur altus antea patrocinor.","Vomer maxime celer vinum dolor sollicito. Usus admitto admoveo arguo. Autus amoveo pauper contra curatio vero blanditiis natus ager defendo. Cresco dedico caelum canis demum voluptatem video dolorem architecto cedo."}'::text,
	'correlation', '0.020815054'::real
);
SELECT * FROM pg_catalog.pg_restore_attribute_stats(
	'version', '180000'::integer,
	'schemaname', 'public',
	'relname', 'video_comment',
	'attname', 'updated_at',
	'inherited', 'f'::boolean,
	'null_frac', '0'::real,
	'avg_width', '8'::integer,
	'n_distinct', '-1'::real,
	'histogram_bounds', '{"2025-05-20 19:36:13.274","2025-05-20 19:36:13.343","2025-05-20 19:36:13.487","2025-05-20 19:36:14.016","2025-05-20 19:36:14.377","2025-05-20 19:36:14.455","2025-05-20 19:36:14.535","2025-05-20 19:36:14.575","2025-05-20 19:36:14.819","2025-05-20 19:36:14.896","2025-05-20 19:36:14.978","2025-05-20 19:36:15.102","2025-05-20 19:36:15.558","2025-05-20 19:36:15.637","2025-05-20 19:36:15.677","2025-05-20 19:36:15.755","2025-05-20 19:36:15.838","2025-05-20 19:36:16.28","2025-05-20 19:36:16.444","2025-05-20 19:36:16.568","2025-05-20 19:36:16.646","2025-05-20 19:36:16.685","2025-05-20 19:36:16.778","2025-05-20 19:36:17.019","2025-05-20 19:36:17.097","2025-05-20 19:36:17.175","2025-05-20 19:36:17.428","2025-05-20 19:36:17.468","2025-05-20 19:36:18.035","2025-05-20 19:36:18.127","2025-05-20 19:36:18.208","2025-05-20 19:36:18.294","2025-05-20 19:36:18.383","2025-05-20 19:36:18.759","2025-05-20 19:36:18.799","2025-05-20 19:36:18.878","2025-05-20 19:36:18.958","2025-05-20 19:36:19.371","2025-05-20 19:36:19.451","2025-05-20 19:36:19.534","2025-05-20 19:36:19.649","2025-05-20 19:36:19.727","2025-05-20 19:36:19.887","2025-05-20 19:36:19.991","2025-05-20 19:36:20.093","2025-05-20 19:36:20.18","2025-05-20 19:36:20.735","2025-05-20 19:36:20.777","2025-05-20 19:36:20.856","2025-05-20 19:36:20.935","2025-05-20 19:36:21.014","2025-05-20 19:36:21.385","2025-05-20 19:36:21.463","2025-05-20 19:36:21.945","2025-05-20 19:36:21.985","2025-05-20 19:36:22.062","2025-05-20 19:36:22.14","2025-05-20 19:36:22.221","2025-05-20 19:36:22.712","2025-05-20 19:36:22.79","2025-05-20 19:36:22.868","2025-05-20 19:36:22.908","2025-05-20 19:36:22.991","2025-05-20 19:36:23.069","2025-05-20 19:36:23.43","2025-05-20 19:36:23.507","2025-05-20 19:36:23.901","2025-05-20 19:36:23.944","2025-05-20 19:36:24.03","2025-05-20 19:36:24.109","2025-05-20 19:36:24.189","2025-05-20 19:36:24.556","2025-05-20 19:36:24.636","2025-05-20 19:36:24.714","2025-05-20 19:36:24.753","2025-05-20 19:36:24.952","2025-05-20 19:36:25.031","2025-05-20 19:36:25.109","2025-05-20 19:36:25.271","2025-05-20 19:36:25.394","2025-05-20 19:36:25.476","2025-05-20 19:36:25.514","2025-05-20 19:36:25.593","2025-05-20 19:36:25.669","2025-05-20 19:36:26.117","2025-05-20 19:36:26.195","2025-05-20 19:36:26.273","2025-05-20 19:36:26.313","2025-05-20 19:36:26.389","2025-05-20 19:36:26.646","2025-05-20 19:36:26.764","2025-05-20 19:36:26.862","2025-05-20 19:36:26.94","2025-05-20 19:36:27.451","2025-05-20 19:36:27.493","2025-05-20 19:36:27.739","2025-05-20 19:36:27.818","2025-05-20 19:36:27.898","2025-05-20 19:36:27.989","2025-05-20 19:36:28.068","2025-05-20 19:36:28.355"}'::text,
	'correlation', '0.997156'::real
);
SELECT * FROM pg_catalog.pg_restore_attribute_stats(
	'version', '180000'::integer,
	'schemaname', 'public',
	'relname', 'video_comment',
	'attname', 'user_id',
	'inherited', 'f'::boolean,
	'null_frac', '0'::real,
	'avg_width', '26'::integer,
	'n_distinct', '-1'::real,
	'histogram_bounds', '{cmawwzw0o000v4wt9ok2a006k,cmawwzw2l000y4wt90j5gor81,cmawwzw6m00144wt9220jqruw,cmawwzwlb002d4wt9ed24xyya,cmawwzwvb003f4wt9qjz18ez4,cmawwzwxi003l4wt9y0i3cpcc,cmawwzwzq003r4wt9omsrjpfl,cmawwzx0u003u4wt9247k9qmp,cmawwzx7m004l4wt9oh5kk86c,cmawwzx9r004r4wt9y4jp7x9n,cmawwzxc1004x4wt9yoiexeq2,cmawwzxfh00534wt91b4tlabr,cmawwzxs500684wt98ol1e7w6,cmawwzxuc006e4wt9f6dlzeq5,cmawwzxvf006h4wt9nrxzxney,cmawwzxxm006n4wt9ahqxlwhe,cmawwzxzx006t4wt9u41oqd9j,cmawwzyc6007z4wt9y5c4w61l,cmawwzygr008l4wt95ape2nh7,cmawwzyk700934wt9grv58ybr,cmawwzymd00994wt9s24nhb9q,cmawwzyng009c4wt9owep36ld,cmawwzyq1009i4wt9xmd6my1u,cmawwzywp00a94wt9lrsycrkc,cmawwzyyw00af4wt9d1uahh8z,cmawwzz1200al4wt9ljxtcfxb,cmawwzz8200bc4wt9aobn915v,cmawwzz9700bf4wt9dcpv2z0l,cmawwzzoy00cl4wt944itdt07,cmawwzzri00cr4wt9o5lwk497,cmawwzztr00cx4wt9qq5rw4um,cmawwzzw400d34wt95jlmrxpt,cmawwzzym00d94wt9k2ttvs4u,cmawx009100e94wt9p5dc9idx,cmawx00a600ec4wt9inlayf7u,cmawx00cd00ei4wt989viqgew,cmawx00el00eo4wt9n6yeeua7,cmawx00q200fr4wt9sc6npexh,cmawx00sa00fx4wt9p4ejnyu7,cmawx00uk00g34wt9p1sorixj,cmawx00xr00g94wt9muhxlxht,cmawx00zx00gc4wt9txem89gr,cmawx014e00gu4wt9dlkf0jl8,cmawx017900h04wt95t94jzbu,cmawx01a400h64wt9sfovsfxd,cmawx01cj00hc4wt9z1hfo0rs,cmawx01rx00il4wt99scxm9gf,cmawx01t400io4wt9t8d89kfq,cmawx01vb00iu4wt9891it6b7,cmawx01xi00j04wt9n7chcyoo,cmawx01zp00j64wt9tlnmkq1t,cmawx02a000kc4wt9auc6lspx,cmawx02c600ki4wt9up7ucp0c,cmawx02pk00ls4wt98izmx00g,cmawx02qo00lv4wt903hb8d1a,cmawx02ss00m14wt9bbk5ps3s,cmawx02uz00m74wt9xrlzakgz,cmawx02x800md4wt9les8cr94,cmawx03av00nk4wt9l36xdtfk,cmawx03d100nq4wt9nkexizxm,cmawx03f700nw4wt9ckw0430u,cmawx03ga00nz4wt94g5jq6qx,cmawx03im00o54wt9x5ylcbnz,cmawx03kr00ob4wt9viy5lc0j,cmawx03us00p94wt9kgus02sl,cmawx03wy00pf4wt94qrjgnou,cmawx047w00qf4wt9u70jfqoj,cmawx049300qi4wt9230ekkyh,cmawx04bh00qo4wt9t5df4jyw,cmawx04do00qu4wt95ooq595w,cmawx04fw00r04wt9fg9jh4jl,cmawx04q300rw4wt94d5nk6kx,cmawx04sb00s24wt9p13gxw6o,cmawx04ug00s84wt9ku1xeq3c,cmawx04vj00sb4wt93cvoe750,cmawx051300sy4wt95ji90a35,cmawx053900t44wt9yqo6qob7,cmawx055g00ta4wt9s8eacatg,cmawx059y00tv4wt9c2ds6rfh,cmawx05dd00uc4wt9t6553z53,cmawx05fn00ui4wt9ntdx5003,cmawx05gp00ul4wt95uyqv9bd,cmawx05iv00ur4wt9jde3cpw1,cmawx05l000ux4wt9jggtoajj,cmawx05xf00w34wt9rhyxt643,cmawx05zm00w94wt925die3zs,cmawx061s00wf4wt98mrzxula,cmawx062v00wi4wt9ewngfxpb,cmawx065000wo4wt9s5xeorcn,cmawx06c500xe4wt9uuxtzqli,cmawx06ff00xk4wt9wd7r8a4e,cmawx06i400xq4wt9lmjcotce,cmawx06ka00xw4wt9vm5iq68v,cmawx06yh00z34wt974zrlh1k,cmawx06zo00z64wt9ycnj74be,cmawx076g00zw4wt9sb8jcc20,cmawx078o01024wt9oyqefots,cmawx07ax01084wt98gbq4p2m,cmawx07dg010e4wt9o77mnqfc,cmawx07fm010k4wt9rkutqy2c,cmawx07nl011d4wt9djcdb48a}'::text,
	'correlation', '0.997156'::real
);
SELECT * FROM pg_catalog.pg_restore_attribute_stats(
	'version', '180000'::integer,
	'schemaname', 'public',
	'relname', 'video_comment',
	'attname', 'video_id',
	'inherited', 'f'::boolean,
	'null_frac', '0'::real,
	'avg_width', '26'::integer,
	'n_distinct', '-0.16129032'::real,
	'most_common_vals', '{cmawwzzm900ca4wt93qtus3e5,cmawx039n00ne4wt96w5xleul,cmawx045k00q74wt9igaq26lw,cmawx05v000vs4wt9i59jkfuz,cmawx075500zp4wt9vhrtayh9,cmawwzx55004a4wt9c8fsokbr,cmawx00or00fj4wt9wtc8azz4,cmawx01ph00ia4wt9oj70r7v0,cmawx02ob00lj4wt9rqrd4trk,cmawwzxqt00614wt9oeruk8dx,cmawwzyhv008s4wt9oma34pg0,cmawx006l00dy4wt9j9hdbiaz,cmawx05c600u54wt9mg02c50q,cmawwzwsu00324wt96rnd6hm0,cmawx012x00gm4wt9bzlnwl97,cmawx04ot00rs4wt93cg994tl,cmawx06ah00x74wt9ydhtje39,cmawwzyvh00a14wt9cj7f36vb,cmawx04zu00sr4wt90ejbktsa,cmawwzvz4000l4wt9zrxi2iwe,cmawx028p00k64wt9u1hmtoh4,cmawx03sg00p04wt9vpd3ggrw,cmawx06vz00yu4wt9bc7s0gml,cmawwzy9q007o4wt9xhmlilnb,cmawwzz6t00b44wt90h6ua44t,cmawx058p00tn4wt980t6tgzf}'::text,
	'most_common_freqs', '{0.05376344,0.05376344,0.05376344,0.05376344,0.05376344,0.048387095,0.048387095,0.048387095,0.048387095,0.043010753,0.043010753,0.043010753,0.043010753,0.03763441,0.03763441,0.03763441,0.03763441,0.032258064,0.032258064,0.02688172,0.021505376,0.021505376,0.021505376,0.016129032,0.010752688,0.010752688}'::real[],
	'histogram_bounds', '{cmawwzwjx00224wt9t8q7kpgp,cmawwzyfi008c4wt9jtn3qcrs,cmawx026c00js4wt9t45otcch,cmawx07mb01164wt9y44dhos0}'::text,
	'correlation', '0.9975924'::real
);


--
-- Statistics for Name: video_like; Type: STATISTICS DATA; Schema: public; Owner: -
--

SELECT * FROM pg_catalog.pg_restore_relation_stats(
	'version', '180000'::integer,
	'schemaname', 'public',
	'relname', 'video_like',
	'relpages', '3'::integer,
	'reltuples', '189'::real,
	'relallvisible', '0'::integer,
	'relallfrozen', '0'::integer
);
SELECT * FROM pg_catalog.pg_restore_attribute_stats(
	'version', '180000'::integer,
	'schemaname', 'public',
	'relname', 'video_like',
	'attname', 'created_at',
	'inherited', 'f'::boolean,
	'null_frac', '0'::real,
	'avg_width', '8'::integer,
	'n_distinct', '-1'::real,
	'histogram_bounds', '{"2024-08-16 20:24:32.975","2024-10-02 17:52:57.816","2024-11-08 03:30:22.625","2024-11-22 08:25:23.715","2024-11-27 14:11:19.424","2024-12-08 16:30:38.686","2024-12-21 03:31:11.308","2024-12-30 12:02:49.624","2025-01-04 11:49:08.669","2025-01-07 03:42:44.104","2025-02-07 08:53:18.648","2025-02-16 00:13:07.643","2025-02-20 15:04:40.175","2025-02-23 16:50:15.657","2025-02-25 16:23:28.905","2025-02-26 04:03:31.415","2025-02-28 09:59:34.684","2025-03-01 17:03:54.783","2025-03-05 09:59:03.185","2025-03-12 18:45:57.026","2025-03-18 16:59:45.8","2025-03-19 18:26:16.662","2025-03-22 14:05:10.478","2025-03-25 02:52:26.498","2025-03-26 18:21:49.005","2025-03-26 19:52:20.863","2025-03-27 04:45:32.663","2025-04-01 16:07:09.298","2025-04-01 17:28:47.13","2025-04-02 21:40:55.255","2025-04-03 07:53:38.849","2025-04-05 20:14:07.744","2025-04-09 03:12:52.901","2025-04-10 17:36:12.08","2025-04-12 19:11:39.515","2025-04-13 05:27:54.053","2025-04-15 05:01:32.903","2025-04-15 17:43:44.174","2025-04-18 18:03:10.065","2025-04-21 19:09:33.431","2025-04-23 04:06:05.998","2025-04-24 03:05:52.755","2025-04-24 03:51:29.477","2025-04-25 11:01:23.255","2025-04-26 10:51:10.475","2025-04-26 21:01:26.261","2025-04-27 10:09:07.94","2025-04-28 00:48:21.52","2025-04-28 16:19:40.997","2025-04-29 15:55:14.131","2025-05-01 22:56:10.957","2025-05-02 06:00:44.268","2025-05-02 07:59:00.848","2025-05-03 17:39:59.495","2025-05-04 03:37:48.864","2025-05-04 11:26:12.292","2025-05-04 18:42:44.917","2025-05-05 19:23:40.497","2025-05-06 09:15:19.444","2025-05-06 10:54:08.559","2025-05-07 00:47:40.736","2025-05-09 00:28:02.676","2025-05-09 13:31:32.195","2025-05-09 15:11:41.477","2025-05-09 20:52:07.486","2025-05-10 14:29:40.874","2025-05-11 14:01:23.584","2025-05-11 16:27:27.536","2025-05-12 06:36:47.172","2025-05-12 17:10:44.95","2025-05-13 11:55:16.215","2025-05-13 20:08:45.698","2025-05-14 03:07:37.177","2025-05-14 12:34:44.585","2025-05-14 19:26:41.26","2025-05-14 23:10:09.269","2025-05-15 01:34:47.959","2025-05-16 07:50:35.922","2025-05-17 10:48:54.958","2025-05-17 20:56:16.877","2025-05-18 01:23:02.908","2025-05-19 03:05:14.072","2025-05-19 04:21:18.397","2025-05-19 09:22:30.616","2025-05-19 11:49:49.183","2025-05-19 16:42:12.803","2025-05-19 19:09:18.565","2025-05-20 05:45:09.771","2025-05-20 07:15:08.352","2025-05-20 11:30:47.261","2025-05-20 13:12:53.689","2025-05-20 13:40:52.136","2025-05-20 13:41:16.714","2025-05-20 15:32:57.82","2025-05-20 16:13:58.367","2025-05-20 17:42:04.962","2025-06-15 19:08:46.515","2025-06-20 20:53:00.047","2025-06-26 11:48:04.59","2025-06-26 14:04:06.935","2025-06-26 14:04:18.565"}'::text,
	'correlation', '0.010860484'::real
);
SELECT * FROM pg_catalog.pg_restore_attribute_stats(
	'version', '180000'::integer,
	'schemaname', 'public',
	'relname', 'video_like',
	'attname', 'id',
	'inherited', 'f'::boolean,
	'null_frac', '0'::real,
	'avg_width', '26'::integer,
	'n_distinct', '-1'::real,
	'histogram_bounds', '{cmawwzwae001c4wt9l3qqfxji,cmawwzwc2001f4wt9402pd90c,cmawwzwed001l4wt95uvd1tv1,cmawwzwgm001r4wt9p3fxl5p9,cmawwzwit001x4wt9ml8rlo5c,cmawwzwmf002i4wt9rgzn2z2k,cmawwzwok002o4wt9bqmzq2en,cmawwzwqp002u4wt9lb0mpvlj,cmawwzwst00304wt9sk6qhos2,cmawwzx1x003z4wt9h6voco8b,cmawwzx4300454wt9cxq8a306,cmawwzxi1005b4wt9r67rl00f,cmawwzxk8005h4wt9yc4av23d,cmawwzxme005n4wt99bgjpv46,cmawwzxoj005t4wt99libe3c6,cmawwzxqq005z4wt9l8u5k82o,cmawwzy2400714wt9k65khbo7,cmawwzy3700744wt9pwhhwcwn,cmawwzy5e007a4wt9j7xdx3ev,cmawwzy7j007g4wt91rh6b3jg,cmawwzy9p007m4wt9fbl4h829,cmawwzyfh008a4wt9hvvrjrph,cmawwzys7009q4wt9ig615zy4,cmawwzyud009w4wt9z8lo2f0j,cmawwzz3900at4wt96dqszrpe,cmawwzz5h00az4wt9ht4oc4zz,cmawwzz6s00b24wt9e798gt21,cmawwzzbg00bn4wt9w397mfpf,cmawwzzdm00bt4wt9j5sfj544,cmawwzzhl00bz4wt91wnj05dv,cmawwzzkq00c54wt9cwswl3os,cmawwzzzs00de4wt958cml01e,cmawx001z00dk4wt9a322r0gq,cmawx004800dq4wt94h7w7npt,cmawx005e00dt4wt9eiw4yc8f,cmawx00gw00ew4wt97iemlslo,cmawx00j200f24wt96ou19xt7,cmawx00la00f84wt9o2mighvl,cmawx00nl00fe4wt9t8btz8yh,cmawx012x00gk4wt9kx4fy9qs,cmawx01ez00hk4wt930l819iw,cmawx01hi00hq4wt9ern7j9bi,cmawx01j700ht4wt9ajb8jiti,cmawx01m100hz4wt9tthdrsfl,cmawx01ob00i54wt90s2mh8n8,cmawx020s00jb4wt9mcxuba7r,cmawx022x00jh4wt9st1iqf95,cmawx025700jn4wt9efjobhpb,cmawx028p00k44wt9u5pjtn4e,cmawx02fg00kt4wt9ftvb1ssw,cmawx02hm00kz4wt9rz3acuec,cmawx02iq00l24wt9ntsnb4kv,cmawx02kz00l84wt9q4r7cw8f,cmawx02n600le4wt9ulr60yy0,cmawx02zf00ml4wt9wx174yoz,cmawx031w00mr4wt9893s752o,cmawx034400mx4wt9moli1mbb,cmawx036b00n34wt9uq9ythza,cmawx038j00n94wt9l68t210c,cmawx039m00nc4wt9vnn78m42,cmawx03mx00oj4wt9jyegjjfl,cmawx03p500op4wt9qaronqg3,cmawx03rc00ov4wt93vxoibyw,cmawx03y100pk4wt9a2gud37t,cmawx040700pq4wt9i3fd8xi5,cmawx042c00pw4wt9vpc1l0qq,cmawx044h00q24wt952blbdsu,cmawx045k00q54wt9mvtxwqcx,cmawx04j700rb4wt9v3lh6opk,cmawx04lf00rh4wt9ic5jg45k,cmawx04nn00rn4wt9p7v9z6z3,cmawx04xp00sj4wt9u0e95hd9,cmawx04zu00sp4wt9gqu9mt90,cmawx058p00tl4wt94lyz30mb,cmawx05m400v24wt9qpwxh4st,cmawx05oa00v84wt9qnp6x1b4,cmawx05pe00vb4wt9u40ehmkf,cmawx05rn00vh4wt93vt9ol91,cmawx05tw00vn4wt9k6sca4x5,cmawx067600ww4wt9h7ejphkn,cmawx069d00x24wt9wtaecfnq,cmawx06ld00y14wt963mwfs4u,cmawx06ns00y74wt9a68b5843,cmawx06q800yd4wt9gxj3megm,cmawx06rd00yg4wt9d4ohsb5g,cmawx06tp00ym4wt93kkvspdq,cmawx06vy00ys4wt9h4780vp5,cmawx072y00zh4wt9v1bhqv2j,cmawx075400zn4wt9ea5box0e,cmawx07ix010v4wt9e4wj9tfi,cmawx07l601114wt931hwknvf,cmawx07oq011i4wt90idrmey8,cmawx07pt011l4wt9y8rw3j36,cmawx07sd011r4wt95r6tah14,cmawx07w5011x4wt9vit9vndj,cmawx07yk01234wt9ctjeq4ei,cmby1gqpe000k6bsoohms7egt,cmc5ae1am0027ag45k70djkt8,cmcdbkdbi002fc7xfkv3azry3,cmcdgfbfb003wc7xfp6m6ubw8,cmcdgfked0048c7xf7hv5buqn}'::text,
	'correlation', '1'::real
);
SELECT * FROM pg_catalog.pg_restore_attribute_stats(
	'version', '180000'::integer,
	'schemaname', 'public',
	'relname', 'video_like',
	'attname', 'user_id',
	'inherited', 'f'::boolean,
	'null_frac', '0'::real,
	'avg_width', '26'::integer,
	'n_distinct', '-0.96825397'::real,
	'most_common_vals', '{cmawwzvog00004wt9mwvejbx1,cmbhzh70200028ljx91rnqmnl}'::text,
	'most_common_freqs', '{0.026455026,0.015873017}'::real[],
	'histogram_bounds', '{cmawwzvs700064wt9b2g2pz3k,cmawwzwad001a4wt9nbwzbeh8,cmawwzwd8001g4wt9m1liwtuf,cmawwzwfg001m4wt99r70ca6f,cmawwzwhp001s4wt9la95mavd,cmawwzwjw001y4wt9jsqfdxoi,cmawwzwme002g4wt9roohv6vj,cmawwzwoi002m4wt94o4p5jnm,cmawwzwqo002s4wt9lrdvr2t5,cmawwzwss002y4wt9yatyy4fz,cmawwzx2z00404wt9rq0euynj,cmawwzx4200434wt9llisglvn,cmawwzxi000594wt9s2jcmzu1,cmawwzxk7005f4wt9ebphhn2v,cmawwzxmd005l4wt9y4klb4gm,cmawwzxoi005r4wt9rt9j132n,cmawwzxpl005u4wt9adfretnw,cmawwzy10006w4wt90ohf4w58,cmawwzy3700724wt905kzm4a4,cmawwzy5d00784wt954t6t2ww,cmawwzy7j007e4wt9b0fri5uf,cmawwzy8m007h4wt92ux6p8rp,cmawwzyec00854wt99gqmshjf,cmawwzyhu008o4wt95jm1a7gr,cmawwzyt9009r4wt9ondjbnap,cmawwzyvg009x4wt99pkp6u6h,cmawwzz3900ar4wt9iakvoifa,cmawwzz5h00ax4wt9b6bbw8wr,cmawwzzac00bi4wt9xi9n0rey,cmawwzzci00bo4wt9xcxya2oi,cmawwzzet00bu4wt9vc6ngyae,cmawwzzhk00bx4wt90ek5vhnz,cmawwzzkp00c34wt9fm494xkg,cmawwzzzr00dc4wt907pi1pde,cmawx001y00di4wt92p5825qz,cmawx004700do4wt9s8rdhh70,cmawx005d00dr4wt9auazbdxc,cmawx00gv00eu4wt9vqhnpuvx,cmawx00j100f04wt9f3wbx135,cmawx00l900f64wt9xn3k31kg,cmawx00nk00fc4wt9ep2bl537,cmawx00oq00ff4wt9bxdsegik,cmawx01du00hf4wt9zz1xga5p,cmawx01g100hl4wt9beu7igxv,cmawx01j700hr4wt9ya769qtu,cmawx01m100hx4wt9dt8jpd17,cmawx01n600i04wt9jq2de9fo,cmawx01pf00i64wt9vxwto9ug,cmawx021u00jc4wt9yxpkqmna,cmawx024100ji4wt9y7x51tm7,cmawx026b00jo4wt9huyl5p3a,cmawx028o00k24wt90cvmvnrh,cmawx02ff00kr4wt9dw490wev,cmawx02hm00kx4wt9zeuirv6y,cmawx02jt00l34wt983i99buv,cmawx02m200l94wt9ne00mnrp,cmawx02n500lc4wt98xsqx31n,cmawx02ze00mj4wt9365xdo95,cmawx031v00mp4wt984fzm03v,cmawx034300mv4wt9r1gaxyeu,cmawx036a00n14wt97jx9gmur,cmawx037f00n44wt9fhip1xeo,cmawx039l00na4wt9emy2iq5y,cmawx03mw00oh4wt9tqe186jx,cmawx03p400on4wt9d7p3zh88,cmawx03rc00ot4wt9qqavdmib,cmawx03sf00ow4wt9a4dr97y1,cmawx03z400pl4wt9zomo904o,cmawx041800pr4wt9b7mri4rk,cmawx043d00px4wt9tvdogb2c,cmawx045j00q34wt9sc9qavn4,cmawx04i200r64wt9x8htg37q,cmawx04kb00rc4wt9g05odpgn,cmawx04mj00ri4wt9m2m8vur7,cmawx04or00ro4wt95v1b9okj,cmawx04yq00sk4wt9gdtjnjqm,cmawx04zt00sn4wt96inxyiss,cmawx058o00tj4wt977z4l0hm,cmawx05m400v04wt9s6dh57r2,cmawx05o900v64wt970ad8wrs,cmawx05qi00vc4wt95gshele6,cmawx05rm00vf4wt9x2aos7w4,cmawx05tv00vl4wt9u2xkpi1m,cmawx067600wu4wt93e4kdpvm,cmawx069c00x04wt9wlex1guq,cmawx06lc00xz4wt9jlmzjyg3,cmawx06mi00y24wt9posp68bs,cmawx06ou00y84wt9hwfeou64,cmawx06rc00ye4wt9nyn84hrz,cmawx06to00yk4wt9zbaa64fz,cmawx06vx00yq4wt99szi34yr,cmawx071u00zc4wt9zoz77xv2,cmawx074100zi4wt96fblj3vo,cmawx07hs010q4wt9um6qjskw,cmawx07k1010w4wt92040f2pe,cmawx07m901124wt93pzp00wt,cmawx07op011g4wt9wt7tktst,cmawx07qv011m4wt9vpqmfvle,cmawx07ts011s4wt9n5y2er8t,cmawx07xe011y4wt9rnd12nfh,cmawx07zn01244wt96f9fxrhr}'::text,
	'correlation', '0.81851435'::real
);
SELECT * FROM pg_catalog.pg_restore_attribute_stats(
	'version', '180000'::integer,
	'schemaname', 'public',
	'relname', 'video_like',
	'attname', 'video_id',
	'inherited', 'f'::boolean,
	'null_frac', '0'::real,
	'avg_width', '26'::integer,
	'n_distinct', '-0.17460318'::real,
	'most_common_vals', '{cmawx012x00gm4wt9bzlnwl97,cmawx028p00k64wt9u1hmtoh4,cmawx02ob00lj4wt9rqrd4trk,cmawx05c600u54wt9mg02c50q,cmawx06ah00x74wt9ydhtje39,cmawx07mb01164wt9y44dhos0,cmawwzvz4000l4wt9zrxi2iwe,cmawwzx55004a4wt9c8fsokbr,cmawwzxqt00614wt9oeruk8dx,cmawwzz6t00b44wt90h6ua44t,cmawx006l00dy4wt9j9hdbiaz,cmawx039n00ne4wt96w5xleul,cmawx03sg00p04wt9vpd3ggrw,cmawx045k00q74wt9igaq26lw,cmawwzwjx00224wt9t8q7kpgp,cmawwzzm900ca4wt93qtus3e5,cmawx01ph00ia4wt9oj70r7v0,cmawx075500zp4wt9vhrtayh9,cmawwzwsu00324wt96rnd6hm0,cmawwzyhv008s4wt9oma34pg0,cmawwzyvh00a14wt9cj7f36vb,cmawx05v000vs4wt9i59jkfuz,cmawx06vz00yu4wt9bc7s0gml,cmawx04ot00rs4wt93cg994tl,cmawwzy9q007o4wt9xhmlilnb,cmawx04zu00sr4wt90ejbktsa,cmcd9m4w0001cc7xfi6w9f09r,cmcdfac4c002gc7xfocmkpodv}'::text,
	'most_common_freqs', '{0.052910052,0.052910052,0.052910052,0.052910052,0.052910052,0.052910052,0.04761905,0.04761905,0.04761905,0.04761905,0.04232804,0.04232804,0.04232804,0.04232804,0.037037037,0.037037037,0.031746034,0.026455026,0.02116402,0.02116402,0.02116402,0.02116402,0.02116402,0.015873017,0.01058201,0.01058201,0.01058201,0.01058201}'::real[],
	'histogram_bounds', '{cmawwzyfi008c4wt9jtn3qcrs,cmawx00or00fj4wt9wtc8azz4,cmawx026c00js4wt9t45otcch,cmawx058p00tn4wt980t6tgzf,cmccnongc000wc7xfsyd8hr37}'::text,
	'correlation', '0.99325085'::real
);


--
-- Statistics for Name: video_tag; Type: STATISTICS DATA; Schema: public; Owner: -
--

SELECT * FROM pg_catalog.pg_restore_relation_stats(
	'version', '180000'::integer,
	'schemaname', 'public',
	'relname', 'video_tag',
	'relpages', '2'::integer,
	'reltuples', '134'::real,
	'relallvisible', '0'::integer,
	'relallfrozen', '0'::integer
);
SELECT * FROM pg_catalog.pg_restore_attribute_stats(
	'version', '180000'::integer,
	'schemaname', 'public',
	'relname', 'video_tag',
	'attname', 'created_at',
	'inherited', 'f'::boolean,
	'null_frac', '0'::real,
	'avg_width', '8'::integer,
	'n_distinct', '-0.20895523'::real,
	'most_common_vals', '{"2025-05-20 19:36:13.216","2025-05-20 19:36:14.73","2025-05-20 19:36:16.19","2025-05-20 19:36:16.398","2025-05-20 19:36:15.51","2025-05-20 19:36:16.484","2025-05-20 19:36:17.937","2025-05-20 19:36:18.669","2025-05-20 19:36:19.324","2025-05-20 19:36:21.9","2025-05-20 19:36:24.907","2025-05-20 19:36:26.586","2025-05-20 19:36:17.381","2025-05-20 19:36:21.338","2025-05-20 19:36:27.359","2025-05-20 19:36:14.286","2025-05-20 19:36:25.226","2025-05-20 19:36:25.351","2025-05-20 19:36:26.029","2025-05-20 19:36:27.69","2025-05-20 19:36:13.966","2025-05-20 19:36:16.974","2025-05-20 19:36:20.645","2025-05-20 19:36:22.667","2025-05-20 19:36:23.817","2025-05-20 19:36:21.253","2025-05-20 19:36:24.509","2025-05-20 19:36:28.308"}'::text,
	'most_common_freqs', '{0.06716418,0.052238807,0.052238807,0.052238807,0.04477612,0.04477612,0.04477612,0.04477612,0.04477612,0.04477612,0.04477612,0.04477612,0.03731343,0.03731343,0.03731343,0.029850746,0.029850746,0.029850746,0.029850746,0.029850746,0.02238806,0.02238806,0.02238806,0.02238806,0.02238806,0.014925373,0.014925373,0.014925373}'::real[],
	'correlation', '1'::real
);
SELECT * FROM pg_catalog.pg_restore_attribute_stats(
	'version', '180000'::integer,
	'schemaname', 'public',
	'relname', 'video_tag',
	'attname', 'id',
	'inherited', 'f'::boolean,
	'null_frac', '0'::real,
	'avg_width', '26'::integer,
	'n_distinct', '-1'::real,
	'histogram_bounds', '{cmawwzvz4000m4wt9cocl4os9,cmawwzvz4000n4wt9lo8vkyrv,cmawwzvz4000o4wt9ju73sis1,cmawwzvz4000p4wt9ko7iu84e,cmawwzvz4000r4wt9igt7hcwr,cmawwzvz4000s4wt9v7kgf4s3,cmawwzvz4000t4wt9jqlk94yt,cmawwzwjx00274wt9299lw8sj,cmawwzwjx00284wt9plhi1d59,cmawwzwjy00294wt9ijdwttp8,cmawwzwsu00374wt9s0vi40li,cmawwzwsu00384wt944rsphiv,cmawwzwsu00394wt9dnq8y0hu,cmawwzx55004c4wt9r5lb024c,cmawwzx55004d4wt9mlfie51z,cmawwzx55004e4wt9kilnae4y,cmawwzx55004g4wt9j3thatpz,cmawwzx56004h4wt9uwx9e5b8,cmawwzxqt00624wt94oajdo9a,cmawwzxqt00644wt963242lvv,cmawwzxqt00654wt9ydo2ixyd,cmawwzxqt00664wt9re7yad8i,cmawwzy9q007p4wt923ood4kd,cmawwzy9q007q4wt9eifyog5h,cmawwzy9q007r4wt9yv4zwggz,cmawwzy9q007t4wt9djdwbycs,cmawwzy9q007u4wt94r8hfoog,cmawwzy9q007v4wt9ezumozgk,cmawwzyfi008f4wt91xz8sjpq,cmawwzyfi008g4wt9rjs1bjzj,cmawwzyfi008h4wt99lr69z9x,cmawwzyfi008j4wt9ftey6jhp,cmawwzyfi008k4wt9wj5ejimk,cmawwzyhw008t4wt9iihgob9j,cmawwzyhw008v4wt9bl4c8dq0,cmawwzyhw008x4wt9ekh0o30d,cmawwzyhw008y4wt92cdz663l,cmawwzyvi00a24wt9sa35mx2s,cmawwzyvi00a34wt9kfl81reh,cmawwzyvi00a44wt9hdtv1nfl,cmawwzz6t00b84wt9edkwusba,cmawwzz6t00b94wt9dhpmled8,cmawwzz6t00ba4wt9vtkou8vu,cmawwzzm900cc4wt9qbip2fpj,cmawwzzm900cd4wt9azjauzva,cmawwzzm900ce4wt9rl6kuhg3,cmawwzzm900cg4wt9jyeiurg9,cmawwzzm900ch4wt9ed0x9gxu,cmawx006l00dz4wt9ackv0j7x,cmawx006l00e14wt90526xir3,cmawx006l00e34wt9ai4z8w9l,cmawx006l00e44wt9luyuoc1c,cmawx00or00fk4wt9viwhqrdu,cmawx00or00fl4wt92r03w4u7,cmawx00or00fm4wt9jx1tzps4,cmawx00or00fo4wt9ht8t35k0,cmawx00or00fp4wt94y93emh0,cmawx01ph00id4wt9zv7dy3rp,cmawx01ph00ih4wt9m6toz3lc,cmawx026c00jx4wt9jfd4tf9o,cmawx026c00jy4wt92z08eln3,cmawx028q00k84wt9mm9x7ker,cmawx028q00k94wt92jdo2jdo,cmawx028q00ka4wt9si1i0epl,cmawx02ob00lk4wt9zz3kvli1,cmawx02ob00ll4wt93ub7n5az,cmawx02ob00lm4wt9px5roe6n,cmawx02ob00lo4wt9795xwjlk,cmawx02ob00lp4wt906ggya1q,cmawx039n00nf4wt9lrpxl1ol,cmawx039n00nh4wt92oabomvk,cmawx045k00q94wt9p1fptj2u,cmawx045l00qa4wt9je9hgpbn,cmawx04ot00ru4wt9c6i0z9qd,cmawx04ot00rv4wt93y94gswt,cmawx04zu00ss4wt91q0kz2q5,cmawx04zu00su4wt96ky11u6t,cmawx04zu00sv4wt9su77i5xe,cmawx04zu00sw4wt9285epod0,cmawx058q00to4wt9xg8o9g8y,cmawx058q00tr4wt9kyx8ftp4,cmawx058q00ts4wt9y34jt546,cmawx05c600u64wt9w1tnbtw2,cmawx05c600u74wt90e9ad489,cmawx05c600u84wt9rp22ahgj,cmawx05v000vu4wt9ugk5vp3t,cmawx05v000vv4wt9wkfzl5br,cmawx05v000vw4wt93t9eaphi,cmawx06ah00x84wt9xqgarj3j,cmawx06ah00x94wt92fn55rpr,cmawx06ah00xa4wt99mq6700p,cmawx06ah00xc4wt995j3w071,cmawx06ah00xd4wt9ewvdlima,cmawx06vz00yv4wt9rgke9mea,cmawx06vz00yx4wt9b81asscq,cmawx06vz00yy4wt9ofu7d6mm,cmawx06vz00yz4wt9xp9gj2rr,cmawx075500zr4wt9hmflijp1,cmawx075500zs4wt9rjo87tn7,cmawx075500zt4wt9vo1hijjb,cmawx07mb01184wt98gk8qaxn}'::text,
	'correlation', '1'::real
);
SELECT * FROM pg_catalog.pg_restore_attribute_stats(
	'version', '180000'::integer,
	'schemaname', 'public',
	'relname', 'video_tag',
	'attname', 'name',
	'inherited', 'f'::boolean,
	'null_frac', '0'::real,
	'avg_width', '14'::integer,
	'n_distinct', '-1'::real,
	'histogram_bounds', '{001,"12 hours",2024,accessories,anyma,api,best,city,"comfort in chaos",css,"desk setup",edm,"eli brown","fall down",framer-motion,frankyeffe,game,games,gaming,it,javascript,"john summit","lilly palmer","live set","madison square garden",motvs,music,nest,next.js,night,"nintendo switch","paige cavell",pc,playstation,portfolio,prisma,productivity,radio,react,"react js",scss,showreel,"swedish house mafia",tailwind,tears,tomorrowland,typescript,ui,visual,vscode,we1,we2,"webstorm 2.0",work,"work from home","xbox series x",xttc,zustand,"веб студия","веб разработка",веб-разработка,игры,сайт,"игра с нуля",хобби,"уроки next js","уроки next.js","уроки по next js","уроки по react","уроки по react js",бизнес,бэкенд,дизайн,"хоткеи vscode","хоткеи webstorm","мастер по заточке","прохор шаляпин",дофамин,проекты,стартап,счастье,анимации,помодоро,фронтенд,"изучение next js","сниппеты vscode","сниппеты webstorm",автомойка,мотивация,петербург,"настройка visual studio code","настройка webstorm",библиотеки,разработка,"расширения webstorm","разработка игры",программист,саморазвитие,удовольствие,продуктивность,программирование}'::text,
	'correlation', '-0.5768177'::real
);
SELECT * FROM pg_catalog.pg_restore_attribute_stats(
	'version', '180000'::integer,
	'schemaname', 'public',
	'relname', 'video_tag',
	'attname', 'updated_at',
	'inherited', 'f'::boolean,
	'null_frac', '0'::real,
	'avg_width', '8'::integer,
	'n_distinct', '-0.20895523'::real,
	'most_common_vals', '{"2025-05-20 19:36:13.216","2025-05-20 19:36:14.73","2025-05-20 19:36:16.19","2025-05-20 19:36:16.398","2025-05-20 19:36:15.51","2025-05-20 19:36:16.484","2025-05-20 19:36:17.937","2025-05-20 19:36:18.669","2025-05-20 19:36:19.324","2025-05-20 19:36:21.9","2025-05-20 19:36:24.907","2025-05-20 19:36:26.586","2025-05-20 19:36:17.381","2025-05-20 19:36:21.338","2025-05-20 19:36:27.359","2025-05-20 19:36:14.286","2025-05-20 19:36:25.226","2025-05-20 19:36:25.351","2025-05-20 19:36:26.029","2025-05-20 19:36:27.69","2025-05-20 19:36:13.966","2025-05-20 19:36:16.974","2025-05-20 19:36:20.645","2025-05-20 19:36:22.667","2025-05-20 19:36:23.817","2025-05-20 19:36:21.253","2025-05-20 19:36:24.509","2025-05-20 19:36:28.308"}'::text,
	'most_common_freqs', '{0.06716418,0.052238807,0.052238807,0.052238807,0.04477612,0.04477612,0.04477612,0.04477612,0.04477612,0.04477612,0.04477612,0.04477612,0.03731343,0.03731343,0.03731343,0.029850746,0.029850746,0.029850746,0.029850746,0.029850746,0.02238806,0.02238806,0.02238806,0.02238806,0.02238806,0.014925373,0.014925373,0.014925373}'::real[],
	'correlation', '1'::real
);


--
-- Statistics for Name: watch_history; Type: STATISTICS DATA; Schema: public; Owner: -
--

SELECT * FROM pg_catalog.pg_restore_relation_stats(
	'version', '180000'::integer,
	'schemaname', 'public',
	'relname', 'watch_history',
	'relpages', '1'::integer,
	'reltuples', '26'::real,
	'relallvisible', '0'::integer,
	'relallfrozen', '0'::integer
);
SELECT * FROM pg_catalog.pg_restore_attribute_stats(
	'version', '180000'::integer,
	'schemaname', 'public',
	'relname', 'watch_history',
	'attname', 'id',
	'inherited', 'f'::boolean,
	'null_frac', '0'::real,
	'avg_width', '26'::integer,
	'n_distinct', '-1'::real,
	'histogram_bounds', '{cmc58aqsx0001ag45l0emeox4,cmc58j36f0007ag4559dpwkcd,cmc59biv8000bag450ke7ak36,cmc59ddm0000jag45fsaxp6pd,cmc59dhxo000pag45ahvwvm6p,cmc5a8cs0001rag45gernltf5,cmc5a9pv3001vag45dvrpkioi,cmc5azjnt002bag45gu5xr4ti,cmc6vt6170003hxs9ysauuk2t,cmc6wbvtf000phxs9m8h6tof8,cmc6woenm0015hxs99bced9hr,cmc6wp9dp0019hxs9tpgpu3u2,cmc6wwwel001ihxs963riqviy,cmcc4vyo1000dkovgiwnmkv25,cmcciacmc0013kovgz9is7f9m,cmccmja6q000hc7xf11bzat6e,cmccmlhtz000lc7xfb3guc0fa,cmccn36dw000pc7xf1k3c0ut5,cmccpe7lv001bc7xfqtolifjq,cmcd9m7mr001hc7xfqdcd83f3,cmcdfane1002oc7xfk8q2w46n,cmcdgfamy003sc7xfwk7tl11y,cmcdgfgm40040c7xf2ppwyan2,cmcdgfjrc0046c7xfe7bo7l8l,cmcf0h7jg000kgoh0twmy2x1z,cmcf32nf60018goh0v0c1mx1u}'::text,
	'correlation', '0.20888889'::real
);
SELECT * FROM pg_catalog.pg_restore_attribute_stats(
	'version', '180000'::integer,
	'schemaname', 'public',
	'relname', 'watch_history',
	'attname', 'user_id',
	'inherited', 'f'::boolean,
	'null_frac', '0'::real,
	'avg_width', '26'::integer,
	'n_distinct', '-0.115384616'::real,
	'most_common_vals', '{cmawwzvog00004wt9mwvejbx1,cmawwzvs700064wt9b2g2pz3k,cmbhzh70200028ljx91rnqmnl}'::text,
	'most_common_freqs', '{0.3846154,0.30769232,0.30769232}'::real[],
	'correlation', '0.31555554'::real
);
SELECT * FROM pg_catalog.pg_restore_attribute_stats(
	'version', '180000'::integer,
	'schemaname', 'public',
	'relname', 'watch_history',
	'attname', 'video_id',
	'inherited', 'f'::boolean,
	'null_frac', '0'::real,
	'avg_width', '26'::integer,
	'n_distinct', '-0.5'::real,
	'most_common_vals', '{cmawx039n00ne4wt96w5xleul,cmawx05c600u54wt9mg02c50q,cmawx075500zp4wt9vhrtayh9,cmawx07mb01164wt9y44dhos0,cmcd9m4w0001cc7xfi6w9f09r,cmawx05v000vs4wt9i59jkfuz,cmccnongc000wc7xfsyd8hr37,cmcdfac4c002gc7xfocmkpodv}'::text,
	'most_common_freqs', '{0.115384616,0.115384616,0.115384616,0.115384616,0.115384616,0.07692308,0.07692308,0.07692308}'::real[],
	'histogram_bounds', '{cmawwzy9q007o4wt9xhmlilnb,cmawwzz6t00b44wt90h6ua44t,cmawx02ob00lj4wt9rqrd4trk,cmawx045k00q74wt9igaq26lw,cmawx058p00tn4wt980t6tgzf}'::text,
	'correlation', '0.39760685'::real
);
SELECT * FROM pg_catalog.pg_restore_attribute_stats(
	'version', '180000'::integer,
	'schemaname', 'public',
	'relname', 'watch_history',
	'attname', 'watched_at',
	'inherited', 'f'::boolean,
	'null_frac', '0'::real,
	'avg_width', '8'::integer,
	'n_distinct', '-1'::real,
	'histogram_bounds', '{"2025-06-20 20:24:00.921","2025-06-20 20:24:29.736","2025-06-20 20:24:35.337","2025-06-20 20:44:23.878","2025-06-20 20:53:06.155","2025-06-22 00:10:49.812","2025-06-22 00:11:17.897","2025-06-22 00:16:53.797","2025-06-22 13:01:21.243","2025-06-25 09:28:06.403","2025-06-25 15:53:21.983","2025-06-25 16:37:22.786","2025-06-25 22:08:28.164","2025-06-26 00:07:23.421","2025-06-26 00:09:06.696","2025-06-26 11:47:21.776","2025-06-26 13:32:27.668","2025-06-26 14:04:05.922","2025-06-26 14:04:13.649","2025-06-26 14:04:17.735","2025-06-27 16:13:13.709","2025-06-27 16:15:08.985","2025-06-27 16:27:12.99","2025-06-27 17:30:16.93","2025-06-27 19:07:57.866","2025-06-27 19:14:08.191"}'::text,
	'correlation', '0.6533333'::real
);


--
-- Name: _ChannelToUser_AB_unique; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX "_ChannelToUser_AB_unique" ON public."_ChannelToUser" USING btree ("A", "B");


--
-- Name: _ChannelToUser_B_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "_ChannelToUser_B_index" ON public."_ChannelToUser" USING btree ("B");


--
-- Name: _PlaylistToVideo_AB_unique; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX "_PlaylistToVideo_AB_unique" ON public."_PlaylistToVideo" USING btree ("A", "B");


--
-- Name: _PlaylistToVideo_B_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "_PlaylistToVideo_B_index" ON public."_PlaylistToVideo" USING btree ("B");


--
-- Name: _video_tags_AB_unique; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX "_video_tags_AB_unique" ON public._video_tags USING btree ("A", "B");


--
-- Name: _video_tags_B_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "_video_tags_B_index" ON public._video_tags USING btree ("B");


--
-- Name: channel channel_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.channel
    ADD CONSTRAINT channel_pkey PRIMARY KEY (id);


--
-- Name: channel_slug_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX channel_slug_key ON public.channel USING btree (slug);


--
-- Name: channel_user_id_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX channel_user_id_key ON public.channel USING btree (user_id);


--
-- Name: playlist playlist_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.playlist
    ADD CONSTRAINT playlist_pkey PRIMARY KEY (id);


--
-- Name: user_email_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX user_email_key ON public."user" USING btree (email);


--
-- Name: user user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."user"
    ADD CONSTRAINT user_pkey PRIMARY KEY (id);


--
-- Name: video_comment video_comment_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.video_comment
    ADD CONSTRAINT video_comment_pkey PRIMARY KEY (id);


--
-- Name: video_like video_like_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.video_like
    ADD CONSTRAINT video_like_pkey PRIMARY KEY (id);


--
-- Name: video_like_user_id_video_id_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX video_like_user_id_video_id_key ON public.video_like USING btree (user_id, video_id);


--
-- Name: video video_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.video
    ADD CONSTRAINT video_pkey PRIMARY KEY (id);


--
-- Name: video_public_id_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX video_public_id_key ON public.video USING btree (public_id);


--
-- Name: video_tag_name_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX video_tag_name_key ON public.video_tag USING btree (name);


--
-- Name: video_tag video_tag_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.video_tag
    ADD CONSTRAINT video_tag_pkey PRIMARY KEY (id);


--
-- Name: watch_history watch_history_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.watch_history
    ADD CONSTRAINT watch_history_pkey PRIMARY KEY (id);


--
-- Name: watch_history_user_id_video_id_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX watch_history_user_id_video_id_key ON public.watch_history USING btree (user_id, video_id);


--
-- Name: _ChannelToUser _ChannelToUser_A_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."_ChannelToUser"
    ADD CONSTRAINT "_ChannelToUser_A_fkey" FOREIGN KEY ("A") REFERENCES public.channel(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: _ChannelToUser _ChannelToUser_B_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."_ChannelToUser"
    ADD CONSTRAINT "_ChannelToUser_B_fkey" FOREIGN KEY ("B") REFERENCES public."user"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: _PlaylistToVideo _PlaylistToVideo_A_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."_PlaylistToVideo"
    ADD CONSTRAINT "_PlaylistToVideo_A_fkey" FOREIGN KEY ("A") REFERENCES public.playlist(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: _PlaylistToVideo _PlaylistToVideo_B_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."_PlaylistToVideo"
    ADD CONSTRAINT "_PlaylistToVideo_B_fkey" FOREIGN KEY ("B") REFERENCES public.video(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: _video_tags _video_tags_A_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public._video_tags
    ADD CONSTRAINT "_video_tags_A_fkey" FOREIGN KEY ("A") REFERENCES public.video(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: _video_tags _video_tags_B_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public._video_tags
    ADD CONSTRAINT "_video_tags_B_fkey" FOREIGN KEY ("B") REFERENCES public.video_tag(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: channel channel_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.channel
    ADD CONSTRAINT channel_user_id_fkey FOREIGN KEY (user_id) REFERENCES public."user"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: playlist playlist_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.playlist
    ADD CONSTRAINT playlist_user_id_fkey FOREIGN KEY (user_id) REFERENCES public."user"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: video video_channel_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.video
    ADD CONSTRAINT video_channel_id_fkey FOREIGN KEY (channel_id) REFERENCES public.channel(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: video_comment video_comment_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.video_comment
    ADD CONSTRAINT video_comment_user_id_fkey FOREIGN KEY (user_id) REFERENCES public."user"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: video_comment video_comment_video_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.video_comment
    ADD CONSTRAINT video_comment_video_id_fkey FOREIGN KEY (video_id) REFERENCES public.video(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: video_like video_like_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.video_like
    ADD CONSTRAINT video_like_user_id_fkey FOREIGN KEY (user_id) REFERENCES public."user"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: video_like video_like_video_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.video_like
    ADD CONSTRAINT video_like_video_id_fkey FOREIGN KEY (video_id) REFERENCES public.video(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: watch_history watch_history_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.watch_history
    ADD CONSTRAINT watch_history_user_id_fkey FOREIGN KEY (user_id) REFERENCES public."user"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: watch_history watch_history_video_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.watch_history
    ADD CONSTRAINT watch_history_video_id_fkey FOREIGN KEY (video_id) REFERENCES public.video(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Statistics for Name: _ChannelToUser_AB_unique; Type: STATISTICS DATA; Schema: public; Owner: -
--

SELECT * FROM pg_catalog.pg_restore_relation_stats(
	'version', '180000'::integer,
	'schemaname', 'public',
	'relname', '_ChannelToUser_AB_unique',
	'relpages', '2'::integer,
	'reltuples', '11'::real,
	'relallvisible', '0'::integer,
	'relallfrozen', '0'::integer
);


--
-- Statistics for Name: _ChannelToUser_B_index; Type: STATISTICS DATA; Schema: public; Owner: -
--

SELECT * FROM pg_catalog.pg_restore_relation_stats(
	'version', '180000'::integer,
	'schemaname', 'public',
	'relname', '_ChannelToUser_B_index',
	'relpages', '2'::integer,
	'reltuples', '11'::real,
	'relallvisible', '0'::integer,
	'relallfrozen', '0'::integer
);


--
-- Statistics for Name: _PlaylistToVideo_AB_unique; Type: STATISTICS DATA; Schema: public; Owner: -
--

SELECT * FROM pg_catalog.pg_restore_relation_stats(
	'version', '180000'::integer,
	'schemaname', 'public',
	'relname', '_PlaylistToVideo_AB_unique',
	'relpages', '1'::integer,
	'reltuples', '0'::real,
	'relallvisible', '0'::integer,
	'relallfrozen', '0'::integer
);


--
-- Statistics for Name: _PlaylistToVideo_B_index; Type: STATISTICS DATA; Schema: public; Owner: -
--

SELECT * FROM pg_catalog.pg_restore_relation_stats(
	'version', '180000'::integer,
	'schemaname', 'public',
	'relname', '_PlaylistToVideo_B_index',
	'relpages', '1'::integer,
	'reltuples', '0'::real,
	'relallvisible', '0'::integer,
	'relallfrozen', '0'::integer
);


--
-- Statistics for Name: _video_tags_AB_unique; Type: STATISTICS DATA; Schema: public; Owner: -
--

SELECT * FROM pg_catalog.pg_restore_relation_stats(
	'version', '180000'::integer,
	'schemaname', 'public',
	'relname', '_video_tags_AB_unique',
	'relpages', '4'::integer,
	'reltuples', '197'::real,
	'relallvisible', '0'::integer,
	'relallfrozen', '0'::integer
);


--
-- Statistics for Name: _video_tags_B_index; Type: STATISTICS DATA; Schema: public; Owner: -
--

SELECT * FROM pg_catalog.pg_restore_relation_stats(
	'version', '180000'::integer,
	'schemaname', 'public',
	'relname', '_video_tags_B_index',
	'relpages', '2'::integer,
	'reltuples', '197'::real,
	'relallvisible', '0'::integer,
	'relallfrozen', '0'::integer
);


--
-- Statistics for Name: channel_pkey; Type: STATISTICS DATA; Schema: public; Owner: -
--

SELECT * FROM pg_catalog.pg_restore_relation_stats(
	'version', '180000'::integer,
	'schemaname', 'public',
	'relname', 'channel_pkey',
	'relpages', '1'::integer,
	'reltuples', '0'::real,
	'relallvisible', '0'::integer,
	'relallfrozen', '0'::integer
);


--
-- Statistics for Name: channel_slug_key; Type: STATISTICS DATA; Schema: public; Owner: -
--

SELECT * FROM pg_catalog.pg_restore_relation_stats(
	'version', '180000'::integer,
	'schemaname', 'public',
	'relname', 'channel_slug_key',
	'relpages', '1'::integer,
	'reltuples', '0'::real,
	'relallvisible', '0'::integer,
	'relallfrozen', '0'::integer
);


--
-- Statistics for Name: channel_user_id_key; Type: STATISTICS DATA; Schema: public; Owner: -
--

SELECT * FROM pg_catalog.pg_restore_relation_stats(
	'version', '180000'::integer,
	'schemaname', 'public',
	'relname', 'channel_user_id_key',
	'relpages', '1'::integer,
	'reltuples', '0'::real,
	'relallvisible', '0'::integer,
	'relallfrozen', '0'::integer
);


--
-- Statistics for Name: playlist_pkey; Type: STATISTICS DATA; Schema: public; Owner: -
--

SELECT * FROM pg_catalog.pg_restore_relation_stats(
	'version', '180000'::integer,
	'schemaname', 'public',
	'relname', 'playlist_pkey',
	'relpages', '1'::integer,
	'reltuples', '0'::real,
	'relallvisible', '0'::integer,
	'relallfrozen', '0'::integer
);


--
-- Statistics for Name: user_email_key; Type: STATISTICS DATA; Schema: public; Owner: -
--

SELECT * FROM pg_catalog.pg_restore_relation_stats(
	'version', '180000'::integer,
	'schemaname', 'public',
	'relname', 'user_email_key',
	'relpages', '5'::integer,
	'reltuples', '376'::real,
	'relallvisible', '0'::integer,
	'relallfrozen', '0'::integer
);


--
-- Statistics for Name: user_pkey; Type: STATISTICS DATA; Schema: public; Owner: -
--

SELECT * FROM pg_catalog.pg_restore_relation_stats(
	'version', '180000'::integer,
	'schemaname', 'public',
	'relname', 'user_pkey',
	'relpages', '5'::integer,
	'reltuples', '376'::real,
	'relallvisible', '0'::integer,
	'relallfrozen', '0'::integer
);


--
-- Statistics for Name: video_comment_pkey; Type: STATISTICS DATA; Schema: public; Owner: -
--

SELECT * FROM pg_catalog.pg_restore_relation_stats(
	'version', '180000'::integer,
	'schemaname', 'public',
	'relname', 'video_comment_pkey',
	'relpages', '4'::integer,
	'reltuples', '186'::real,
	'relallvisible', '0'::integer,
	'relallfrozen', '0'::integer
);


--
-- Statistics for Name: video_like_pkey; Type: STATISTICS DATA; Schema: public; Owner: -
--

SELECT * FROM pg_catalog.pg_restore_relation_stats(
	'version', '180000'::integer,
	'schemaname', 'public',
	'relname', 'video_like_pkey',
	'relpages', '4'::integer,
	'reltuples', '189'::real,
	'relallvisible', '0'::integer,
	'relallfrozen', '0'::integer
);


--
-- Statistics for Name: video_like_user_id_video_id_key; Type: STATISTICS DATA; Schema: public; Owner: -
--

SELECT * FROM pg_catalog.pg_restore_relation_stats(
	'version', '180000'::integer,
	'schemaname', 'public',
	'relname', 'video_like_user_id_video_id_key',
	'relpages', '4'::integer,
	'reltuples', '189'::real,
	'relallvisible', '0'::integer,
	'relallfrozen', '0'::integer
);


--
-- Statistics for Name: video_pkey; Type: STATISTICS DATA; Schema: public; Owner: -
--

SELECT * FROM pg_catalog.pg_restore_relation_stats(
	'version', '180000'::integer,
	'schemaname', 'public',
	'relname', 'video_pkey',
	'relpages', '2'::integer,
	'reltuples', '33'::real,
	'relallvisible', '0'::integer,
	'relallfrozen', '0'::integer
);


--
-- Statistics for Name: video_public_id_key; Type: STATISTICS DATA; Schema: public; Owner: -
--

SELECT * FROM pg_catalog.pg_restore_relation_stats(
	'version', '180000'::integer,
	'schemaname', 'public',
	'relname', 'video_public_id_key',
	'relpages', '2'::integer,
	'reltuples', '33'::real,
	'relallvisible', '0'::integer,
	'relallfrozen', '0'::integer
);


--
-- Statistics for Name: video_tag_name_key; Type: STATISTICS DATA; Schema: public; Owner: -
--

SELECT * FROM pg_catalog.pg_restore_relation_stats(
	'version', '180000'::integer,
	'schemaname', 'public',
	'relname', 'video_tag_name_key',
	'relpages', '2'::integer,
	'reltuples', '134'::real,
	'relallvisible', '0'::integer,
	'relallfrozen', '0'::integer
);


--
-- Statistics for Name: video_tag_pkey; Type: STATISTICS DATA; Schema: public; Owner: -
--

SELECT * FROM pg_catalog.pg_restore_relation_stats(
	'version', '180000'::integer,
	'schemaname', 'public',
	'relname', 'video_tag_pkey',
	'relpages', '2'::integer,
	'reltuples', '134'::real,
	'relallvisible', '0'::integer,
	'relallfrozen', '0'::integer
);


--
-- Statistics for Name: watch_history_pkey; Type: STATISTICS DATA; Schema: public; Owner: -
--

SELECT * FROM pg_catalog.pg_restore_relation_stats(
	'version', '180000'::integer,
	'schemaname', 'public',
	'relname', 'watch_history_pkey',
	'relpages', '2'::integer,
	'reltuples', '26'::real,
	'relallvisible', '0'::integer,
	'relallfrozen', '0'::integer
);


--
-- Statistics for Name: watch_history_user_id_video_id_key; Type: STATISTICS DATA; Schema: public; Owner: -
--

SELECT * FROM pg_catalog.pg_restore_relation_stats(
	'version', '180000'::integer,
	'schemaname', 'public',
	'relname', 'watch_history_user_id_video_id_key',
	'relpages', '2'::integer,
	'reltuples', '26'::real,
	'relallvisible', '0'::integer,
	'relallfrozen', '0'::integer
);


--
-- PostgreSQL database dump complete
--

