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
-- Name: _ChannelToUser; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."_ChannelToUser" (
    "A" text NOT NULL,
    "B" text NOT NULL
);


--
-- Name: _PlaylistToVideo; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."_PlaylistToVideo" (
    "A" text NOT NULL,
    "B" text NOT NULL
);


--
-- Name: _video_tags; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public._video_tags (
    "A" text NOT NULL,
    "B" text NOT NULL
);


--
-- Name: channel; Type: TABLE; Schema: public; Owner: -
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


--
-- Name: playlist; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.playlist (
    id text NOT NULL,
    title text NOT NULL,
    user_id text NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL
);


--
-- Name: user; Type: TABLE; Schema: public; Owner: -
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


--
-- Name: video; Type: TABLE; Schema: public; Owner: -
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


--
-- Name: video_comment; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.video_comment (
    id text NOT NULL,
    text text NOT NULL,
    user_id text NOT NULL,
    video_id text NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL
);


--
-- Name: video_like; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.video_like (
    id text NOT NULL,
    user_id text NOT NULL,
    video_id text NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


--
-- Name: video_tag; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.video_tag (
    id text NOT NULL,
    name text NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL
);


--
-- Name: watch_history; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.watch_history (
    id text NOT NULL,
    user_id text NOT NULL,
    video_id text NOT NULL,
    watched_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


--
-- Name: channel channel_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.channel
    ADD CONSTRAINT channel_pkey PRIMARY KEY (id);


--
-- Name: playlist playlist_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.playlist
    ADD CONSTRAINT playlist_pkey PRIMARY KEY (id);


--
-- Name: user user_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."user"
    ADD CONSTRAINT user_pkey PRIMARY KEY (id);


--
-- Name: video_comment video_comment_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.video_comment
    ADD CONSTRAINT video_comment_pkey PRIMARY KEY (id);


--
-- Name: video_like video_like_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.video_like
    ADD CONSTRAINT video_like_pkey PRIMARY KEY (id);


--
-- Name: video video_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.video
    ADD CONSTRAINT video_pkey PRIMARY KEY (id);


--
-- Name: video_tag video_tag_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.video_tag
    ADD CONSTRAINT video_tag_pkey PRIMARY KEY (id);


--
-- Name: watch_history watch_history_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.watch_history
    ADD CONSTRAINT watch_history_pkey PRIMARY KEY (id);


--
-- Name: _ChannelToUser_AB_unique; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX "_ChannelToUser_AB_unique" ON public."_ChannelToUser" USING btree ("A", "B");


--
-- Name: _ChannelToUser_B_index; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "_ChannelToUser_B_index" ON public."_ChannelToUser" USING btree ("B");


--
-- Name: _PlaylistToVideo_AB_unique; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX "_PlaylistToVideo_AB_unique" ON public."_PlaylistToVideo" USING btree ("A", "B");


--
-- Name: _PlaylistToVideo_B_index; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "_PlaylistToVideo_B_index" ON public."_PlaylistToVideo" USING btree ("B");


--
-- Name: _video_tags_AB_unique; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX "_video_tags_AB_unique" ON public._video_tags USING btree ("A", "B");


--
-- Name: _video_tags_B_index; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "_video_tags_B_index" ON public._video_tags USING btree ("B");


--
-- Name: channel_slug_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX channel_slug_key ON public.channel USING btree (slug);


--
-- Name: channel_user_id_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX channel_user_id_key ON public.channel USING btree (user_id);


--
-- Name: user_email_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX user_email_key ON public."user" USING btree (email);


--
-- Name: video_like_user_id_video_id_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX video_like_user_id_video_id_key ON public.video_like USING btree (user_id, video_id);


--
-- Name: video_public_id_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX video_public_id_key ON public.video USING btree (public_id);


--
-- Name: video_tag_name_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX video_tag_name_key ON public.video_tag USING btree (name);


--
-- Name: watch_history_user_id_video_id_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX watch_history_user_id_video_id_key ON public.watch_history USING btree (user_id, video_id);


--
-- Name: _ChannelToUser _ChannelToUser_A_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."_ChannelToUser"
    ADD CONSTRAINT "_ChannelToUser_A_fkey" FOREIGN KEY ("A") REFERENCES public.channel(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: _ChannelToUser _ChannelToUser_B_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."_ChannelToUser"
    ADD CONSTRAINT "_ChannelToUser_B_fkey" FOREIGN KEY ("B") REFERENCES public."user"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: _PlaylistToVideo _PlaylistToVideo_A_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."_PlaylistToVideo"
    ADD CONSTRAINT "_PlaylistToVideo_A_fkey" FOREIGN KEY ("A") REFERENCES public.playlist(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: _PlaylistToVideo _PlaylistToVideo_B_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."_PlaylistToVideo"
    ADD CONSTRAINT "_PlaylistToVideo_B_fkey" FOREIGN KEY ("B") REFERENCES public.video(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: _video_tags _video_tags_A_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._video_tags
    ADD CONSTRAINT "_video_tags_A_fkey" FOREIGN KEY ("A") REFERENCES public.video(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: _video_tags _video_tags_B_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._video_tags
    ADD CONSTRAINT "_video_tags_B_fkey" FOREIGN KEY ("B") REFERENCES public.video_tag(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: channel channel_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.channel
    ADD CONSTRAINT channel_user_id_fkey FOREIGN KEY (user_id) REFERENCES public."user"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: playlist playlist_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.playlist
    ADD CONSTRAINT playlist_user_id_fkey FOREIGN KEY (user_id) REFERENCES public."user"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: video video_channel_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.video
    ADD CONSTRAINT video_channel_id_fkey FOREIGN KEY (channel_id) REFERENCES public.channel(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: video_comment video_comment_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.video_comment
    ADD CONSTRAINT video_comment_user_id_fkey FOREIGN KEY (user_id) REFERENCES public."user"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: video_comment video_comment_video_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.video_comment
    ADD CONSTRAINT video_comment_video_id_fkey FOREIGN KEY (video_id) REFERENCES public.video(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: video_like video_like_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.video_like
    ADD CONSTRAINT video_like_user_id_fkey FOREIGN KEY (user_id) REFERENCES public."user"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: video_like video_like_video_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.video_like
    ADD CONSTRAINT video_like_video_id_fkey FOREIGN KEY (video_id) REFERENCES public.video(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: watch_history watch_history_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.watch_history
    ADD CONSTRAINT watch_history_user_id_fkey FOREIGN KEY (user_id) REFERENCES public."user"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: watch_history watch_history_video_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.watch_history
    ADD CONSTRAINT watch_history_video_id_fkey FOREIGN KEY (video_id) REFERENCES public.video(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

