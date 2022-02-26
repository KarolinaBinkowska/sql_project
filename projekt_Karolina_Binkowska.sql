-----------------------------------słowniki-----------------------------------

CREATE TABLE s311506.egb_funkcja_budynku(
	id_fb text primary key,
	nazwa text not null
);
INSERT INTO s311506.egb_funkcja_budynku VALUES ('1110.Dj','budynekJednorodzinny');
INSERT INTO s311506.egb_funkcja_budynku VALUES ('1110.Dl' ,'domLetniskowy');
INSERT INTO s311506.egb_funkcja_budynku VALUES ('1110.Ls','lesniczowka');
INSERT INTO s311506.egb_funkcja_budynku VALUES ('1130.Bs','bursaSzkolna');
INSERT INTO s311506.egb_funkcja_budynku VALUES ('1130.Dd','domDziecka');
INSERT INTO s311506.egb_funkcja_budynku VALUES ('1211.Ht','hotel');
INSERT INTO s311506.egb_funkcja_budynku VALUES ('1211.Rj','restauracja');
INSERT INTO s311506.egb_funkcja_budynku VALUES ('1220.Bk','bank');
INSERT INTO s311506.egb_funkcja_budynku VALUES ('1230.Ch','centrumHandlowe');


CREATE TABLE s311506.egb_status_budynku(
	id_sb serial primary key,
	nazwa text not null
);
INSERT INTO s311506.egb_status_budynku VALUES ('1','wybudowany');
INSERT INTO s311506.egb_status_budynku VALUES ('2' ,'wBudowie');
INSERT INTO s311506.egb_status_budynku VALUES ('3','budynekDoRozbiork');
INSERT INTO s311506.egb_status_budynku VALUES ('4','projektowany');


CREATE TABLE s311506.egb_rodzaj_wg_kst(
	id_kst integer primary key,
	nazwa text not null
);
INSERT INTO s311506.egb_rodzaj_wg_kst VALUES ('101','budynekPrzemyslowy');
INSERT INTO s311506.egb_rodzaj_wg_kst VALUES ('102' ,'budynekTransportuILacznosci');
INSERT INTO s311506.egb_rodzaj_wg_kst VALUES ('103','budynekHandlowoUslugowy');
INSERT INTO s311506.egb_rodzaj_wg_kst VALUES ('104','zbiornikSilosIBudynekMagazynowy');
INSERT INTO s311506.egb_rodzaj_wg_kst VALUES ('105','budynekBiurowy');
INSERT INTO s311506.egb_rodzaj_wg_kst VALUES ('106','budynekSzpitalaIInneBudynkiOpiekiZdrowotnej');
INSERT INTO s311506.egb_rodzaj_wg_kst VALUES ('107','restabudynekOswiatyNaukiIKulturyOrazSportuuracja');
INSERT INTO s311506.egb_rodzaj_wg_kst VALUES ('108','budynekProdukcyjnyUslugowyIGospodarczy');
INSERT INTO s311506.egb_rodzaj_wg_kst VALUES ('109','pozostalyBudynekNiemieszkalny');
INSERT INTO s311506.egb_rodzaj_wg_kst VALUES ('110','budynekMieszkalny');


CREATE TABLE s311506.egb_zakres_przebudowy_budynku(
	id_zpb integer primary key,
	nazwa text not null
);
INSERT INTO s311506.egb_zakres_przebudowy_budynku VALUES ('1','przebudowa'),('2','nadbudowaBezZmian')
,('3','czesciowaRozbiurkaBezZmian'),('4','nadbudowazmiana'),('5','czesciowaRozbiurkaZmiana'),('6','inny');


CREATE TABLE s311506.egb_zrodlo_daty_budowy(
	id_zdb integer primary key,
	nazwa text not null
);
INSERT INTO s311506.egb_zrodlo_daty_budowy VALUES ('1','dokument'),
('2','zrodloNiepotwierdzone'),('3','szacowana');

CREATE TABLE s311506.egb_klasa_wg_pkob(
	id_pkob integer primary key,
	nazwa text not null
);
INSERT INTO s311506.egb_klasa_wg_pkob VALUES('1110','budynkiMiszkalneJednorodzinne'),
('1121','budynkiODwochMieszkaniach '),('1122','budynkiOTrzechIWiecejMieszkaniach')
,('1130','budynkiZbiorowegoZamieszkania'),('1211','budynkiHoteli');


CREATE TABLE s311506.egb_material_scian_zewnbudynku(
	id_msz integer primary key,
	nazwa text not null
);
INSERT INTO s311506.egb_material_scian_zewnbudynku VALUES ('1','mur'),('2','drewno'),('3','inny');


CREATE TABLE s311506.egb_stan_uzytkowania_budynku(
	id_sub integer primary key,
	nazwa text not null
);
INSERT INTO s311506.egb_stan_uzytkowania_budynku VALUES
('1','budynekOddanyDoUzytkowaniaWCalosci '),('2','budynekOddanyDoUzytkowaniaWCzesci ');


CREATE TABLE s311506.egb_przyczyna_rozbiorki(
	id_pr integer primary key,
	nazwa text not null
);
INSERT INTO s311506.egb_przyczyna_rozbiorki VALUES
('1','zlyStanBudynku'),('2','kolizjaZNowaInwestycja'),('3','inna');

CREATE TABLE s311506.egb_reprezentacja_pow_dzialki(
	id_rpd integer primary key,
	nazwa text not null
);
INSERT INTO s311506.egb_reprezentacja_pow_dzialki VALUES ('1','doklDoM '),('2','doklDoAra');

CREATE TABLE s311506.egb_ofu
(
	id_ofu text primary key,
	nazwa text not null
);
INSERT INTO s311506.egb_ofu VALUES ('R','gruntOrny')
,('S','sad'),('Ls','las'),('dr','droga');

CREATE TABLE s311506.egb_ozu
(
	id_ozu text primary key,
	nazwa text not null
);
INSERT INTO s311506.egb_ozu VALUES ('R','gruntOrny'), ('Ł','lakaTrwala'),
 ('Ps','pastwiskoTrwale'), ('Ls','las');
 
CREATE TABLE s311506.egb_ozk
(
	id_ozk integer primary key,
	nazwa text not null
);
INSERT INTO s311506.egb_ozk VALUES ('1','I'),('2','II'),
('3','III'),('4','IIIa');

CREATE TABLE s311506.egb_rodzaj_pomieszczenia_przynaleznego 
(
	id_rpp integer PRIMARY KEY,
	nazwa text not null
);

INSERT INTO s311506.egb_rodzaj_pomieszczenia_przynaleznego VALUES
('1','piwnica'),('2','garaz'),('3','miejscePostojoweWGarazuWielostanowiskowym'),('4','strych');

CREATE TABLE s311506.egb_rodzaj_obiektu_zwiazanego_zbudynkiem
(
	id_rozzb integer PRIMARY KEY,
	nazwa text not null
);

INSERT INTO s311506.egb_rodzaj_obiektu_zwiazanego_zbudynkiem VALUES
('1','taras'),('2','werandaGanek'),('3','wiatrolap'),('4','schody');


CREATE TABLE s311506.egb_rodzaj_bloku
(
	id_rb integer primary key,
	nazwa text not null
);
INSERT INTO s311506.egb_rodzaj_bloku VALUES
('1','kondygnacjeNadziemne'),('2','kondygnacjePodziemne'),('3','lacznik'),('4','nawis');
CREATE TABLE s311506.egb_rodzaj_lokalu (
	id_rl integer primary key,
	nazwa text not null
);

INSERT INTO s311506.egb_rodzaj_lokalu VALUES ('1','mieszkalny'),('2','niemieszkalny');
----------------------------------słowniki----------------------------------
--***************data type**********--------
CREATE TABLE s311506.egb_info_czesci_budynku(
	id_icb integer primary key,
	oznaczenie_czesci_budynku text not null,
	data_oddania_do_uzytkowania date not null,
	data_rozbiorki date,
	przyczyna_rozbioru integer REFERENCES s311506.egb_przyczyna_rozbiorki (id_pr)
); 

--------------------inne tabele--------------------------------------
CREATE TABLE s311506.egb_arkusz_ewidencyjny (
	id_ae integer primary key,
	geometria geometry (MultiPolygon,2180),
	id_arkusza text not null
);

CREATE TABLE s311506.egb_obreb_ewidencyjny (
	id_oe integer primary key
);

CREATE TABLE s311506.egb_jednostka_rejestrowa_gruntow (
	id_jrg integer primary key
);

CREATE TABLE s311506.egb_jednostka_rejestrowa_budynkow
(
	id_jrb integer primary key
);
CREATE TABLE s311506.egb_budynek 
(		
	lokal_id text primary key,
	przestrzen_nazw text not null,
	wersja_id date not null,
	startObiekt date not null,
	startWersjaObiekt date not null,
	koniecWersjiObiekt date,
	koniecObiekt date,
	id_budynku text not null,
	status_budynku integer references s311506.egb_status_budynku (id_sb) not null,
	rodzaj_wg_kst integer references s311506.egb_rodzaj_wg_kst (id_kst)not null,
	laczna_pow_uzytk_lokali_niewyodrebnionych double precision,
	laczna_pow_uzytk_lokali_wyodrebnionych double precision,
	powierzchnia_uzytkowa_budynku_zobmiarow double precision,
	powierzchnia_uzytkowa_budynku_wg_projektu_budowlanego double precision,
	powierzchnia_uzytkowa_pomieszczen_przynaleznych_dolokali double precision,
	dodatkowe_informacje text,
	rok_zakonczenia_przebudowy date,
	wiek_zakonczenia_budowy integer,
	wiekZakonczeniaPrzebudowy integer,
	zakres_przebudowy integer REFERENCES s311506.egb_zakres_przebudowy_budynku (id_zpb),
	stopien_pewnosci_ustalenia_daty_przebudowy integer REFERENCES s311506.egb_zrodlo_daty_budowy (id_zdb), 
	georeferencja geometry (point,2180),
	inna_funkcja_budynku text REFERENCES s311506.egb_funkcja_budynku (id_fb) ,
	geometria geometry (multipolygon,2180) not null,
	klasa_wg_pkob integer REFERENCES s311506.egb_klasa_wg_pkob,
	glowna_funkcja_budynku text REFERENCES s311506.egb_funkcja_budynku (id_fb),
	data_wyceny date,
	liczba_kondygnacji_nadziemnych integer,
	liczba_kondygnacji_podziemnych integer,
	liczba_ujawnionych_samodzielnych_lokali integer,
	material_scian_zewn integer REFERENCES s311506.egb_material_scian_zewnbudynku (id_msz),
	numer_rejestru_zabytkow text,
	pow_zabudowy double precision,
	rok_zakonczenia_budowy date,
	wartosc_budynku double precision,
	stopien_pewnosci_ustalenia_daty_budowy integer REFERENCES s311506.egb_zrodlo_daty_budowy (id_zdb),
	stan_uzytkowania_budynku integer REFERENCES s311506.egb_stan_uzytkowania_budynku (id_sub),
	data_oddania_do_uzytkowania_budynku date,
	data_rozbiorki_budynku date,
	przyczyna_rozbioru integer REFERENCES s311506.egb_przyczyna_rozbiorki (id_pr),
	informacja_dotyczaca_czesci_budynku integer unique,
	liczba_mieszkan1izbowych integer,
	liczba_mieszkan2izbowych integer,
	liczba_mieszkan3izbowych integer,
	liczba_Mieszkan4izbowych integer,
	liczba_mieszkan5izbowych integer,
	liczba_mieszkan6izbowych integer,
	liczba_mieszkan7izbowych integer,
	liczba_mieszkan8izbowych integer,
	liczba_mieszkan9izbowych integer,
	liczba_mieszkan10izbowych integer,
	liczba_mieszkan_zponad10izbami integer,
	laczna_Liczba_izb_wbudynku integer,
	numer_kw text,
	id_jednostka_rejestrowa_budynkow integer REFERENCES s311506.egb_jednostka_rejestrowa_budynkow (id_jrb) not null	
);

CREATE TABLE s311506.int_info_info (
	id_datatype_info INTEGER REFERENCES s311506.egb_info_czesci_budynku (id_icb),
	id_budynektable_info INTEGER REFERENCES s311506.egb_budynek(informacja_dotyczaca_czesci_budynku),
	primary key (id_datatype_info,id_budynektable_info)
);


CREATE TABLE s311506.egb_dzialka_ewidencyjna
(
	lokal_id text primary key,
	przestrzen_nazw text not null,
	wersja_id date not null,
	startObiekt date not null,
	startWersjaObiekt date not null,
	koniecWersjiObiekt date,
	koniecObiekt date,
	id_dzialki text not null,
	geometria geometry (MultiPolygon,2180) not null,
	georeferencja geometry (point,2180),
	powierzchnia_ewidencyjna double precision not null,
	informacja_odokladn_reprezentacji_pola integer REFERENCES s311506.egb_reprezentacja_pow_dzialki (id_rpd) not null,
	dodatkowe_informacje text,
	waznosc_od date,
	Waznosc_do date,
	wartosc_gruntu double precision ,
	data_wyceny date,
	numer_kw text ,
	nr_rejestru_zabytkow text,
	id_rejonu_statystycznego text,
	inne_dokumenty_okreslajace_prawa text,
	id_egb_arkusz_ewidencyjny integer references s311506.egb_arkusz_ewidencyjny (id_ae) not null,
	id_egb_obreb_ewidencyjny integer references s311506.egb_obreb_ewidencyjny (id_oe) not null,
	id_egb_jednostka_rejestrowa_gruntow integer REFERENCES s311506.egb_jednostka_rejestrowa_gruntow (id_jrg) not null
);

CREATE TABLE s311506.egb_klaso_uzytek (
	id_klasouzytku integer primary key,
	oznaczenie_klasouzytku_egb_ofu text REFERENCES s311506.egb_ofu (id_ofu) not null,
	oznaczenie_klasouzytku_egb_ozu text REFERENCES s311506.egb_ozu(id_ozu),
	oznaczenie_klasouzytku_egb_ozk integer REFERENCES s311506.egb_ozk (id_ozk),
	powierzchnia_ewidencyjna_klasouzytku double precision,
	id_dzialka_ew text REFERENCES s311506.egb_dzialka_ewidencyjna (lokal_id)  on update cascade on delete cascade not null
);



CREATE TABLE s311506.egb__lokal_samodzielny (
	id_lokalu text primary key,
	rodzaj_lokalu integer REFERENCES s311506.egb_rodzaj_lokalu (id_rl) not null,
	pow_uzytk_lokalu double precision not null,
	liczba_izb integer not null check(liczba_izb>0),
	liczba_pomieszczen_przynaleznych integer not null check (liczba_pomieszczen_przynaleznych>0),
	dodatkowe_informacje text,
	numer_kw text,
	pow_pomieszczen_przynaleznych_dolokalu double precision,
	nr_kondygnacji integer,
	wartosc_lokalu double precision,
	data_wyceny date,
	id_budynek text REFERENCES s311506.egb_budynek (lokal_id) not null
);

CREATE TABLE s311506.int_budynek_dzialka_ew 
(
	id_budynku text REFERENCES s311506.egb_budynek (lokal_id),
	id_dzialki text REFERENCES s311506.egb_dzialka_ewidencyjna (lokal_id),
	primary key (id_budynku,id_dzialki)
);


CREATE TABLE s311506.egb_pomieszczenie_przynalezne_do_lokalu
(
	id_ppdl integer primary key,
	rodzaj_pomieszczenia_przynaleznego integer REFERENCES s311506.egb_rodzaj_pomieszczenia_przynaleznego (id_rpp) not null,
	powierzchnia_pomieszczenia_przynaleznego double precision not null,
	dodatkowe_informacje text,
	id_budynku text REFERENCES s311506.egb_budynek (lokal_id) not null
);


CREATE TABLE s311506.egb_obiekt_trwale_zwiazany_zbudynkiem (
	id_otzb integer primary key,
	geometria geometry (MultiPolygon,2180) not null,
	rodzaj_obiektu integer REFERENCES s311506.egb_rodzaj_obiektu_zwiazanego_zbudynkiem (id_rozzb) not null,
	id_budynku text REFERENCES s311506.egb_budynek (lokal_id)	
);


CREATE TABLE s311506.egb_blok_budynku 
(
	id_bb integer primary key,
	geometria geometry (MultiPolygon,2180) not null,
	rodzaj_bloku integer REFERENCES s311506.egb_rodzaj_bloku (id_rb) not null,
	numer_najnizszej_kondygnacji integer not null,
	numer_najwyzszej_kondygnacji integer not null,
	oznaczenie_bloku text not null,
	id_budynku text REFERENCES s311506.egb_budynek (lokal_id)	
);



--------------------- INDEKSY KLUCZY OBCYCH------------------
CREATE INDEX s311506.idx_przyczyna_rozbiorki ON  s311506.egb_info_czesci_budynku (przyczyna_rozbiorki);

CREATE INDEX s311506.idx_status_budynku ON s311506.egb_budynek (status_budynku);
CREATE INDEX s311506.idx_rodzaj_wg_kst ON s311506.egb_budynek (rodzaj_wg_kst);
CREATE INDEX s311506.idx_zakres_przebudowy ON s311506.egb_budynek (zakres_przebudowy);
CREATE INDEX s311506.idx_stopien_pewnosci_ustalenia_daty_przebudowy ON s311506.egb_budynek (stopien_pewnosci_ustalenia_daty_przebudowy);
CREATE INDEX s311506.idx_inna_funkcja_budynku ON s311506.egb_budynek (inna_funkcja_budynku);
CREATE INDEX s311506.idx_klasa_wg_pkob ON s311506.egb_budynek (klasa_wg_pkob);
CREATE INDEX s311506.idx_glowna_funkcja_budynku ON s311506.egb_budynek (glowna_funkcja_budynku);
CREATE INDEX s311506.idx_material_scian_zewn ON s311506.egb_budynek (material_scian_zewn);
CREATE INDEX s311506.idx_stopien_pewnosci_ustalenia_daty_budowy ON s311506.egb_budynek (stopien_pewnosci_ustalenia_daty_budowy);
CREATE INDEX s311506.idx_stan_uzytkowania_budynku ON s311506.egb_budynek (stan_uzytkowania_budynku);
CREATE INDEX s311506.idx_przyczyna_rozbioru ON s311506.egb_budynek (przyczyna_rozbioru);
CREATE INDEX s311506.idx_id_jednostka_rejestrowa_budynkow ON s311506.egb_budynek (id_jednostka_rejestrowa_budynkow);



CREATE INDEX s311506.idx_oznaczenie_klasouzytku_egb_ofu ON s311506.egb_klaso_uzytek (oznaczenie_klasouzytku_egb_ofu);
CREATE INDEX s311506.idx_oznaczenie_klasouzytku_egb_ozu ON s311506.egb_klaso_uzytek (oznaczenie_klasouzytku_egb_ozu);
CREATE INDEX s311506.idx_oznaczenie_klasouzytku_egb_ozk ON s311506.egb_klaso_uzytek (oznaczenie_klasouzytku_egb_ozk);
CREATE INDEX s311506.idx_id_dzialka_ew ON s311506.egb_klaso_uzytek (id_dzialka_ew);


CREATE INDEX s311506.idx_rodzaj_lokalu ON s311506.egb__lokal_samodzielny (rodzaj_lokalu);
CREATE INDEX s311506.idx_id_budynek ON s311506.egb__lokal_samodzielny (id_budynek);


CREATE INDEX s311506.idx_srodzaj_pomieszczenia_przynaleznego ON s311506.egb_pomieszczenie_przynalezne_do_lokalu (rodzaj_pomieszczenia_przynaleznego);
CREATE INDEX s311506.idx_id_budynku_pom ON s311506.egb_pomieszczenie_przynalezne_do_lokalu (id_budynku);
CREATE INDEX s311506.idx_rodzaj_obiektu ON s311506.egb_obiekt_trwale_zwiazany_zbudynkiem (rodzaj_obiektu);
CREATE INDEX s311506.idx_id_budynku_obiekt ON s311506.egb_obiekt_trwale_zwiazany_zbudynkiem (id_budynku);
CREATE INDEX s311506.idx_id_budynku_blok ON s311506.egb_blok_budynku (id_budynku);
CREATE INDEX s311506.idx_rodzaj_bloku ON s311506.egb_blok_budynku (rodzaj_bloku);
---------------INDESKY NA GEOMETRII-------------------------------------------------
CREATE INDEX ixs_geom_arkusz_ew ON s311506.egb_arkusz_ewidencyjny using gist(geometria);

CREATE INDEX ixs_georef_budynek ON s311506.egb_budynek using gist(georeferencja);

CREATE INDEX ixs_geom_budynek ON s311506.egb_budynek using gist(geometria);

CREATE INDEX ixs_georef_dzialka_ew ON s311506.egb_dzialka_ewidencyjna using gist(georeferencja);

CREATE INDEX ixs_geom_dzialka_ew ON s311506.egb_dzialka_ewidencyjna using gist(geometria);

CREATE INDEX ixs_geom_obiekt ON s311506.egb_obiekt_trwale_zwiazany_zbudynkiem using gist(geometria);

CREATE INDEX ixs_geom_blok ON s311506.egb_blok_budynku using gist(geometria);

-------------MATERIALIZED VIEW------------------------

CREATE MATERIALIZED VIEW s311506.view_budynki AS 
SELECT b.lokal_id as id_budynku,b.przestrzen_nazw as nazwa ,sb.nazwa as status_budynku,rwk.nazwa as rodzaj_wg_kst, b.glowna_funkcja_budynku as funkcja_budynku, 
msb.nazwa as material_scian_zewn 
from s311506.egb_budynek as b
left join s311506.egb_status_budynku as sb on b.status_budynku = sb.id_sb
left join s311506.egb_rodzaj_wg_kst as rwk on b.rodzaj_wg_kst = rwk.id_kst
left join s311506.egb_funkcja_budynku as fb on b.glowna_funkcja_budynku=fb.id_fb
left join s311506.egb_material_scian_zewnbudynku as msb on b.material_scian_zewn=msb.id_msz 
with data;

CREATE MATERIALIZED VIEW s311506.view_dziala_ew AS
SELECT d.lokal_id as id_dzialki , d.powierzchnia_ewidencyjna as powierzchnia, d.wartosc_gruntu as wartosc_gruntu,
d.data_wyceny as data_wyceny,
info.nazwa as reprezentacja_powierzchni, o.id_oe as obreb_ewidencyjny
FROM s311506.egb_dzialka_ewidencyjna as d 
left join s311506.egb_reprezentacja_pow_dzialki as info ON info.id_rpd=d.informacja_odokladn_reprezentacji_pola
left join s311506.egb_obreb_ewidencyjny as o ON o.id_oe=d.id_egb_obreb_ewidencyjny
with data;



-- -------------TRIGGER---------------------------------- 
CREATE OR REPLACE FUNCTION s311506.updated_area()
 RETURNS trigger AS
$BODY$
 BEGIN
 -- Sprawdzenie, czy wprowadzane są właściwe dane
 IF NEW.geometria IS NULL THEN
 RAISE EXCEPTION 'trzeba wprowadzić dane';
 END IF;
-- aktualizacja powierzchni
new.geometria := ST_Area(geometria);
RETURN NEW;
END;

$BODY$
LANGUAGE plpgsql VOLATILE
 COST 100;

CREATE TRIGGER trg_updated_area
 BEFORE INSERT OR UPDATE
 ON s311506.egb_dzialka_ewidencyjna
 FOR EACH ROW
 EXECUTE PROCEDURE s311506.updated_area()
 
-- ------------FUNCKCJA-------------------------------

create or replace function s311506.rob_podejrzane_budynku(id_obrebu integer, promien real) returns text as 
$$
declare
	rec_dzialka record;
	rec_budynek record;
	buf_geom geometry (Polygon,2180);


cur_sel_linie cursor(iobreb integer) for

SELECT
 d.lokal_id as id_dzialki_ew,
 d.geometria as geom_d
FROM s311506.egb_dzialka_ewidencyjna as d , s311506.egb_obreb_ewidencyjny as obreb
WHERE d.id_egb_obreb_ewidencyjny=iobreb;

cur_sel_bud cursor (id_dzialki text) for
SELECT 
	b.lokal_id as id_budynek,
	b.geometria as geom
FROM s311506.egb_dzialka_ewidencyjna as d
JOIN s311506.int_budynek_dzialka_ew as i ON d.lokal_id=i.id_dzialki
JOIN s311506.egb_budynek as b ON i.id_budynku=b.lokal_id;
	
	

begin 
-- tworzenie tabeli na dane
-- najpierw sprawdzam, czy takiej już nie było, a jak było, to usuwam
DROP TABLE IF EXISTS s311506.podejrzane_budynki;
CREATE TABLE s311506.podejrzane_budynki (
	id serial primary key,
	idbudynku text references s311506.egb_budynek (lokal_id) not null,
	geom geometry (MultiPolygon,2180) not null
);
open cur_sel_linie(id_obrebu);
loop
-- przechwytuję rekord, na którym kursor stanął w danej iteracji
fetch cur_sel_linie into rec_dzialka;
exit when not found;
open cur_sel_bud(rec_dzialka.id_dzialki_ew);
loop
fetch cur_sel_bud into rec_budynek;
exit when not found;
buf_geom := ST_Buffer(rec_budynek.geom,promien);
IF ST_Intersects (ST_Boundary(buf_geom),ST_Boundary(rec_dzialka.geom_d))THEN

INSERT INTO s311506.podejrzane_budynki (idbudynku,geom) VALUES (
	rec_budynek.id_budynek,
	rec_budynek.geom);
END IF;
end loop;
close cur_sel_bud;
end loop;
close cur_sel_linie;

return id_obrebu;
end;
$$
language plpgsql;
	
	
	
	
	


