--
-- PostgreSQL database dump
--

-- Dumped from database version 10.4
-- Dumped by pg_dump version 10.4

-- Started on 2019-11-04 02:16:50

--
-- TOC entry 198 (class 1259 OID 16397)
-- Name: ArticleCategories; Type: TABLE; Schema: public; Owner: Eliud
--

CREATE TABLE "ArticleCategories" (
    "ArticleCategoryId" bigint NOT NULL,
    "CategoryName" character varying(50),
    "Details" character varying(255)
);


ALTER TABLE "ArticleCategories" OWNER TO "Eliud";

--
-- TOC entry 197 (class 1259 OID 16395)
-- Name: ArticleCategories_ArticleCategoryId_seq; Type: SEQUENCE; Schema: public; Owner: Eliud
--

CREATE SEQUENCE "ArticleCategories_ArticleCategoryId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "ArticleCategories_ArticleCategoryId_seq" OWNER TO "Eliud";

--
-- TOC entry 2912 (class 0 OID 0)
-- Dependencies: 197
-- Name: ArticleCategories_ArticleCategoryId_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Eliud
--

ALTER SEQUENCE "ArticleCategories_ArticleCategoryId_seq" OWNED BY "ArticleCategories"."ArticleCategoryId";


--
-- TOC entry 200 (class 1259 OID 16405)
-- Name: ArticleComments; Type: TABLE; Schema: public; Owner: Eliud
--

CREATE TABLE "ArticleComments" (
    "CommentId" bigint NOT NULL,
    "ArticleId" bigint,
    "Comments" character varying(255)
);


ALTER TABLE "ArticleComments" OWNER TO "Eliud";

--
-- TOC entry 199 (class 1259 OID 16403)
-- Name: ArticleComments_CommentId_seq; Type: SEQUENCE; Schema: public; Owner: Eliud
--

CREATE SEQUENCE "ArticleComments_CommentId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "ArticleComments_CommentId_seq" OWNER TO "Eliud";

--
-- TOC entry 2913 (class 0 OID 0)
-- Dependencies: 199
-- Name: ArticleComments_CommentId_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Eliud
--

ALTER SEQUENCE "ArticleComments_CommentId_seq" OWNED BY "ArticleComments"."CommentId";


--
-- TOC entry 202 (class 1259 OID 16413)
-- Name: Articles; Type: TABLE; Schema: public; Owner: Eliud
--

CREATE TABLE "Articles" (
    "ArticleId" bigint NOT NULL,
    "Article" character varying(50),
    "ArticleTitle" character varying(50),
    "IsInAppropriate" boolean,
    "ArticleCategoryId" bigint,
    "Comment" character varying(255),
    "AuthorId" bigint,
    "CreatedOn" timestamp without time zone
);


ALTER TABLE "Articles" OWNER TO "Eliud";

--
-- TOC entry 201 (class 1259 OID 16411)
-- Name: Articles_ArticleId_seq; Type: SEQUENCE; Schema: public; Owner: Eliud
--

CREATE SEQUENCE "Articles_ArticleId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "Articles_ArticleId_seq" OWNER TO "Eliud";

--
-- TOC entry 2914 (class 0 OID 0)
-- Dependencies: 201
-- Name: Articles_ArticleId_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Eliud
--

ALTER SEQUENCE "Articles_ArticleId_seq" OWNED BY "Articles"."ArticleId";


--
-- TOC entry 204 (class 1259 OID 16421)
-- Name: GifCategories; Type: TABLE; Schema: public; Owner: Eliud
--

CREATE TABLE "GifCategories" (
    "GifCategoryId" bigint NOT NULL,
    "CategoryName" character varying(50),
    "Details" character varying(255)
);


ALTER TABLE "GifCategories" OWNER TO "Eliud";

--
-- TOC entry 203 (class 1259 OID 16419)
-- Name: GifCategories_GifCategoryId_seq; Type: SEQUENCE; Schema: public; Owner: Eliud
--

CREATE SEQUENCE "GifCategories_GifCategoryId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "GifCategories_GifCategoryId_seq" OWNER TO "Eliud";

--
-- TOC entry 2915 (class 0 OID 0)
-- Dependencies: 203
-- Name: GifCategories_GifCategoryId_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Eliud
--

ALTER SEQUENCE "GifCategories_GifCategoryId_seq" OWNED BY "GifCategories"."GifCategoryId";


--
-- TOC entry 206 (class 1259 OID 16429)
-- Name: GifComments; Type: TABLE; Schema: public; Owner: Eliud
--

CREATE TABLE "GifComments" (
    "CommentId" bigint NOT NULL,
    "GifId" bigint,
    "Comments" character varying(255)
);


ALTER TABLE "GifComments" OWNER TO "Eliud";

--
-- TOC entry 205 (class 1259 OID 16427)
-- Name: GifComments_CommentId_seq; Type: SEQUENCE; Schema: public; Owner: Eliud
--

CREATE SEQUENCE "GifComments_CommentId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "GifComments_CommentId_seq" OWNER TO "Eliud";

--
-- TOC entry 2916 (class 0 OID 0)
-- Dependencies: 205
-- Name: GifComments_CommentId_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Eliud
--

ALTER SEQUENCE "GifComments_CommentId_seq" OWNED BY "GifComments"."CommentId";


--
-- TOC entry 208 (class 1259 OID 16437)
-- Name: Gifs; Type: TABLE; Schema: public; Owner: Eliud
--

CREATE TABLE "Gifs" (
    "GifId" bigint NOT NULL,
    "Url" character varying(255),
    "GifTitle" character varying(50),
    "Comment" character varying(255),
    "IsInAppropriate" boolean,
    "GifCategoryId" bigint,
    "AuthorId" bigint,
    "CreatedOn" timestamp without time zone
);


ALTER TABLE "Gifs" OWNER TO "Eliud";

--
-- TOC entry 207 (class 1259 OID 16435)
-- Name: Gifs_GifId_seq; Type: SEQUENCE; Schema: public; Owner: Eliud
--

CREATE SEQUENCE "Gifs_GifId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "Gifs_GifId_seq" OWNER TO "Eliud";

--
-- TOC entry 2917 (class 0 OID 0)
-- Dependencies: 207
-- Name: Gifs_GifId_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Eliud
--

ALTER SEQUENCE "Gifs_GifId_seq" OWNED BY "Gifs"."GifId";


--
-- TOC entry 210 (class 1259 OID 16448)
-- Name: Users; Type: TABLE; Schema: public; Owner: Eliud
--

CREATE TABLE "Users" (
    "UserID" bigint NOT NULL,
    "FirstName" character varying(25),
    "LastName" character varying(25),
    "Email" character varying(100),
    "Password" character varying(255),
    "IsAdmin" boolean,
    "Gender" character varying(20),
    "JobRole" character varying(50),
    "Department" character varying(100),
    "Address" character varying(255),
    "IsEnabled" boolean
);


ALTER TABLE "Users" OWNER TO "Eliud";

--
-- TOC entry 209 (class 1259 OID 16446)
-- Name: Users_UserID_seq; Type: SEQUENCE; Schema: public; Owner: Eliud
--

CREATE SEQUENCE "Users_UserID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "Users_UserID_seq" OWNER TO "Eliud";

--
-- TOC entry 2918 (class 0 OID 0)
-- Dependencies: 209
-- Name: Users_UserID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Eliud
--

ALTER SEQUENCE "Users_UserID_seq" OWNED BY "Users"."UserID";


--
-- TOC entry 2709 (class 2604 OID 16400)
-- Name: ArticleCategories ArticleCategoryId; Type: DEFAULT; Schema: public; Owner: Eliud
--

ALTER TABLE ONLY "ArticleCategories" ALTER COLUMN "ArticleCategoryId" SET DEFAULT nextval('"ArticleCategories_ArticleCategoryId_seq"'::regclass);


--
-- TOC entry 2710 (class 2604 OID 16408)
-- Name: ArticleComments CommentId; Type: DEFAULT; Schema: public; Owner: Eliud
--

ALTER TABLE ONLY "ArticleComments" ALTER COLUMN "CommentId" SET DEFAULT nextval('"ArticleComments_CommentId_seq"'::regclass);


--
-- TOC entry 2711 (class 2604 OID 16416)
-- Name: Articles ArticleId; Type: DEFAULT; Schema: public; Owner: Eliud
--

ALTER TABLE ONLY "Articles" ALTER COLUMN "ArticleId" SET DEFAULT nextval('"Articles_ArticleId_seq"'::regclass);


--
-- TOC entry 2712 (class 2604 OID 16424)
-- Name: GifCategories GifCategoryId; Type: DEFAULT; Schema: public; Owner: Eliud
--

ALTER TABLE ONLY "GifCategories" ALTER COLUMN "GifCategoryId" SET DEFAULT nextval('"GifCategories_GifCategoryId_seq"'::regclass);


--
-- TOC entry 2713 (class 2604 OID 16432)
-- Name: GifComments CommentId; Type: DEFAULT; Schema: public; Owner: Eliud
--

ALTER TABLE ONLY "GifComments" ALTER COLUMN "CommentId" SET DEFAULT nextval('"GifComments_CommentId_seq"'::regclass);


--
-- TOC entry 2714 (class 2604 OID 16440)
-- Name: Gifs GifId; Type: DEFAULT; Schema: public; Owner: Eliud
--

ALTER TABLE ONLY "Gifs" ALTER COLUMN "GifId" SET DEFAULT nextval('"Gifs_GifId_seq"'::regclass);


--
-- TOC entry 2715 (class 2604 OID 16451)
-- Name: Users UserID; Type: DEFAULT; Schema: public; Owner: Eliud
--

ALTER TABLE ONLY "Users" ALTER COLUMN "UserID" SET DEFAULT nextval('"Users_UserID_seq"'::regclass);


--
-- TOC entry 2919 (class 0 OID 0)
-- Dependencies: 197
-- Name: ArticleCategories_ArticleCategoryId_seq; Type: SEQUENCE SET; Schema: public; Owner: Eliud
--

SELECT pg_catalog.setval('"ArticleCategories_ArticleCategoryId_seq"', 1, false);


--
-- TOC entry 2920 (class 0 OID 0)
-- Dependencies: 199
-- Name: ArticleComments_CommentId_seq; Type: SEQUENCE SET; Schema: public; Owner: Eliud
--

SELECT pg_catalog.setval('"ArticleComments_CommentId_seq"', 1, false);


--
-- TOC entry 2921 (class 0 OID 0)
-- Dependencies: 201
-- Name: Articles_ArticleId_seq; Type: SEQUENCE SET; Schema: public; Owner: Eliud
--

SELECT pg_catalog.setval('"Articles_ArticleId_seq"', 1, false);


--
-- TOC entry 2922 (class 0 OID 0)
-- Dependencies: 203
-- Name: GifCategories_GifCategoryId_seq; Type: SEQUENCE SET; Schema: public; Owner: Eliud
--

SELECT pg_catalog.setval('"GifCategories_GifCategoryId_seq"', 1, false);


--
-- TOC entry 2923 (class 0 OID 0)
-- Dependencies: 205
-- Name: GifComments_CommentId_seq; Type: SEQUENCE SET; Schema: public; Owner: Eliud
--

SELECT pg_catalog.setval('"GifComments_CommentId_seq"', 1, false);


--
-- TOC entry 2924 (class 0 OID 0)
-- Dependencies: 207
-- Name: Gifs_GifId_seq; Type: SEQUENCE SET; Schema: public; Owner: Eliud
--

SELECT pg_catalog.setval('"Gifs_GifId_seq"', 1, false);


--
-- TOC entry 2925 (class 0 OID 0)
-- Dependencies: 209
-- Name: Users_UserID_seq; Type: SEQUENCE SET; Schema: public; Owner: Eliud
--

SELECT pg_catalog.setval('"Users_UserID_seq"', 1, false);


--
-- TOC entry 2717 (class 2606 OID 16571)
-- Name: ArticleCategories ArticleCategories_ArticleCategoryId_key; Type: CONSTRAINT; Schema: public; Owner: Eliud
--

ALTER TABLE ONLY "ArticleCategories"
    ADD CONSTRAINT "ArticleCategories_ArticleCategoryId_key" UNIQUE ("ArticleCategoryId");


--
-- TOC entry 2719 (class 2606 OID 16402)
-- Name: ArticleCategories ArticleCategories_pkey; Type: CONSTRAINT; Schema: public; Owner: Eliud
--

ALTER TABLE ONLY "ArticleCategories"
    ADD CONSTRAINT "ArticleCategories_pkey" PRIMARY KEY ("ArticleCategoryId");


--
-- TOC entry 2722 (class 2606 OID 16410)
-- Name: ArticleComments ArticleComments_pkey; Type: CONSTRAINT; Schema: public; Owner: Eliud
--

ALTER TABLE ONLY "ArticleComments"
    ADD CONSTRAINT "ArticleComments_pkey" PRIMARY KEY ("CommentId");


--
-- TOC entry 2726 (class 2606 OID 16578)
-- Name: Articles Articles_ArticleId_key; Type: CONSTRAINT; Schema: public; Owner: Eliud
--

ALTER TABLE ONLY "Articles"
    ADD CONSTRAINT "Articles_ArticleId_key" UNIQUE ("ArticleId");


--
-- TOC entry 2728 (class 2606 OID 16418)
-- Name: Articles Articles_pkey; Type: CONSTRAINT; Schema: public; Owner: Eliud
--

ALTER TABLE ONLY "Articles"
    ADD CONSTRAINT "Articles_pkey" PRIMARY KEY ("ArticleId");


--
-- TOC entry 2733 (class 2606 OID 16581)
-- Name: GifCategories GifCategories_GifCategoryId_key; Type: CONSTRAINT; Schema: public; Owner: Eliud
--

ALTER TABLE ONLY "GifCategories"
    ADD CONSTRAINT "GifCategories_GifCategoryId_key" UNIQUE ("GifCategoryId");


--
-- TOC entry 2735 (class 2606 OID 16426)
-- Name: GifCategories GifCategories_pkey; Type: CONSTRAINT; Schema: public; Owner: Eliud
--

ALTER TABLE ONLY "GifCategories"
    ADD CONSTRAINT "GifCategories_pkey" PRIMARY KEY ("GifCategoryId");


--
-- TOC entry 2738 (class 2606 OID 16434)
-- Name: GifComments GifComments_pkey; Type: CONSTRAINT; Schema: public; Owner: Eliud
--

ALTER TABLE ONLY "GifComments"
    ADD CONSTRAINT "GifComments_pkey" PRIMARY KEY ("CommentId");


--
-- TOC entry 2742 (class 2606 OID 16588)
-- Name: Gifs Gifs_GifId_key; Type: CONSTRAINT; Schema: public; Owner: Eliud
--

ALTER TABLE ONLY "Gifs"
    ADD CONSTRAINT "Gifs_GifId_key" UNIQUE ("GifId");


--
-- TOC entry 2744 (class 2606 OID 16445)
-- Name: Gifs Gifs_pkey; Type: CONSTRAINT; Schema: public; Owner: Eliud
--

ALTER TABLE ONLY "Gifs"
    ADD CONSTRAINT "Gifs_pkey" PRIMARY KEY ("GifId");


--
-- TOC entry 2749 (class 2606 OID 16458)
-- Name: Users Users_Email_key; Type: CONSTRAINT; Schema: public; Owner: Eliud
--

ALTER TABLE ONLY "Users"
    ADD CONSTRAINT "Users_Email_key" UNIQUE ("Email");


--
-- TOC entry 2751 (class 2606 OID 16592)
-- Name: Users Users_Email_key1; Type: CONSTRAINT; Schema: public; Owner: Eliud
--

ALTER TABLE ONLY "Users"
    ADD CONSTRAINT "Users_Email_key1" UNIQUE ("Email");


--
-- TOC entry 2753 (class 2606 OID 16590)
-- Name: Users Users_UserID_key; Type: CONSTRAINT; Schema: public; Owner: Eliud
--

ALTER TABLE ONLY "Users"
    ADD CONSTRAINT "Users_UserID_key" UNIQUE ("UserID");


--
-- TOC entry 2755 (class 2606 OID 16456)
-- Name: Users Users_pkey; Type: CONSTRAINT; Schema: public; Owner: Eliud
--

ALTER TABLE ONLY "Users"
    ADD CONSTRAINT "Users_pkey" PRIMARY KEY ("UserID");


--
-- TOC entry 2736 (class 1259 OID 16579)
-- Name: index_ArticleCategorieIdy; Type: INDEX; Schema: public; Owner: Eliud
--

CREATE INDEX "index_ArticleCategorieIdy" ON "GifCategories" USING btree ("GifCategoryId");


--
-- TOC entry 2720 (class 1259 OID 16569)
-- Name: index_ArticleCategorieIgd; Type: INDEX; Schema: public; Owner: Eliud
--

CREATE INDEX "index_ArticleCategorieIgd" ON "ArticleCategories" USING btree ("ArticleCategoryId");


--
-- TOC entry 2723 (class 1259 OID 16572)
-- Name: index_ArticleId1; Type: INDEX; Schema: public; Owner: Eliud
--

CREATE INDEX "index_ArticleId1" ON "ArticleComments" USING btree ("ArticleId");


--
-- TOC entry 2729 (class 1259 OID 16574)
-- Name: index_ArticleId2; Type: INDEX; Schema: public; Owner: Eliud
--

CREATE INDEX "index_ArticleId2" ON "Articles" USING btree ("ArticleId");


--
-- TOC entry 2739 (class 1259 OID 16582)
-- Name: index_ArticleId3; Type: INDEX; Schema: public; Owner: Eliud
--

CREATE INDEX "index_ArticleId3" ON "GifComments" USING btree ("GifId");


--
-- TOC entry 2745 (class 1259 OID 16584)
-- Name: index_ArticleId4; Type: INDEX; Schema: public; Owner: Eliud
--

CREATE INDEX "index_ArticleId4" ON "Gifs" USING btree ("GifId");


--
-- TOC entry 2746 (class 1259 OID 16585)
-- Name: index_AuthhgorIda; Type: INDEX; Schema: public; Owner: Eliud
--

CREATE INDEX "index_AuthhgorIda" ON "Gifs" USING btree ("AuthorId");


--
-- TOC entry 2730 (class 1259 OID 16575)
-- Name: index_AuthorjId; Type: INDEX; Schema: public; Owner: Eliud
--

CREATE INDEX "index_AuthorjId" ON "Articles" USING btree ("AuthorId");


--
-- TOC entry 2724 (class 1259 OID 16573)
-- Name: index_CommehntId; Type: INDEX; Schema: public; Owner: Eliud
--

CREATE INDEX "index_CommehntId" ON "ArticleComments" USING btree ("CommentId");


--
-- TOC entry 2740 (class 1259 OID 16583)
-- Name: index_CommhentId; Type: INDEX; Schema: public; Owner: Eliud
--

CREATE INDEX "index_CommhentId" ON "GifComments" USING btree ("CommentId");


--
-- TOC entry 2731 (class 1259 OID 16576)
-- Name: index_GifCahhtegoryId; Type: INDEX; Schema: public; Owner: Eliud
--

CREATE INDEX "index_GifCahhtegoryId" ON "Articles" USING btree ("ArticleCategoryId");


--
-- TOC entry 2747 (class 1259 OID 16586)
-- Name: index_GifCatehgjgoryId; Type: INDEX; Schema: public; Owner: Eliud
--

CREATE INDEX "index_GifCatehgjgoryId" ON "Gifs" USING btree ("GifCategoryId");


--
-- TOC entry 2756 (class 2606 OID 16460)
-- Name: ArticleComments ArticleComments_ArticleId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: Eliud
--

ALTER TABLE ONLY "ArticleComments"
    ADD CONSTRAINT "ArticleComments_ArticleId_fkey" FOREIGN KEY ("ArticleId") REFERENCES "Articles"("ArticleId");


--
-- TOC entry 2757 (class 2606 OID 16593)
-- Name: ArticleComments ArticleComments_ArticleId_fkey1; Type: FK CONSTRAINT; Schema: public; Owner: Eliud
--

ALTER TABLE ONLY "ArticleComments"
    ADD CONSTRAINT "ArticleComments_ArticleId_fkey1" FOREIGN KEY ("ArticleId") REFERENCES "Articles"("ArticleId");


--
-- TOC entry 2758 (class 2606 OID 16466)
-- Name: Articles Articles_ArticleCategoryId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: Eliud
--

ALTER TABLE ONLY "Articles"
    ADD CONSTRAINT "Articles_ArticleCategoryId_fkey" FOREIGN KEY ("ArticleCategoryId") REFERENCES "ArticleCategories"("ArticleCategoryId");


--
-- TOC entry 2760 (class 2606 OID 16598)
-- Name: Articles Articles_ArticleCategoryId_fkey1; Type: FK CONSTRAINT; Schema: public; Owner: Eliud
--

ALTER TABLE ONLY "Articles"
    ADD CONSTRAINT "Articles_ArticleCategoryId_fkey1" FOREIGN KEY ("ArticleCategoryId") REFERENCES "ArticleCategories"("ArticleCategoryId");


--
-- TOC entry 2759 (class 2606 OID 16471)
-- Name: Articles Articles_AuthorId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: Eliud
--

ALTER TABLE ONLY "Articles"
    ADD CONSTRAINT "Articles_AuthorId_fkey" FOREIGN KEY ("AuthorId") REFERENCES "Users"("UserID");


--
-- TOC entry 2761 (class 2606 OID 16603)
-- Name: Articles Articles_AuthorId_fkey1; Type: FK CONSTRAINT; Schema: public; Owner: Eliud
--

ALTER TABLE ONLY "Articles"
    ADD CONSTRAINT "Articles_AuthorId_fkey1" FOREIGN KEY ("AuthorId") REFERENCES "Users"("UserID");


--
-- TOC entry 2762 (class 2606 OID 16478)
-- Name: GifComments GifComments_GifId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: Eliud
--

ALTER TABLE ONLY "GifComments"
    ADD CONSTRAINT "GifComments_GifId_fkey" FOREIGN KEY ("GifId") REFERENCES "Gifs"("GifId");


--
-- TOC entry 2763 (class 2606 OID 16608)
-- Name: GifComments GifComments_GifId_fkey1; Type: FK CONSTRAINT; Schema: public; Owner: Eliud
--

ALTER TABLE ONLY "GifComments"
    ADD CONSTRAINT "GifComments_GifId_fkey1" FOREIGN KEY ("GifId") REFERENCES "Gifs"("GifId");


--
-- TOC entry 2765 (class 2606 OID 16489)
-- Name: Gifs Gifs_AuthorId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: Eliud
--

ALTER TABLE ONLY "Gifs"
    ADD CONSTRAINT "Gifs_AuthorId_fkey" FOREIGN KEY ("AuthorId") REFERENCES "Users"("UserID");


--
-- TOC entry 2766 (class 2606 OID 16613)
-- Name: Gifs Gifs_AuthorId_fkey1; Type: FK CONSTRAINT; Schema: public; Owner: Eliud
--

ALTER TABLE ONLY "Gifs"
    ADD CONSTRAINT "Gifs_AuthorId_fkey1" FOREIGN KEY ("AuthorId") REFERENCES "Users"("UserID");


--
-- TOC entry 2764 (class 2606 OID 16484)
-- Name: Gifs Gifs_GifCategoryId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: Eliud
--

ALTER TABLE ONLY "Gifs"
    ADD CONSTRAINT "Gifs_GifCategoryId_fkey" FOREIGN KEY ("GifCategoryId") REFERENCES "GifCategories"("GifCategoryId");


--
-- TOC entry 2767 (class 2606 OID 16618)
-- Name: Gifs Gifs_GifCategoryId_fkey1; Type: FK CONSTRAINT; Schema: public; Owner: Eliud
--

ALTER TABLE ONLY "Gifs"
    ADD CONSTRAINT "Gifs_GifCategoryId_fkey1" FOREIGN KEY ("GifCategoryId") REFERENCES "GifCategories"("GifCategoryId");


-- Completed on 2019-11-04 02:17:03

--
-- PostgreSQL database dump complete
--

