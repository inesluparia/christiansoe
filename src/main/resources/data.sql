INSERT INTO species (latin_name, name, description, is_animal, discoverable_winter, discoverable_spring, discoverable_summer, discoverable_autumn) VALUES
    ('Froggyfrogus', 'Pilegiftfrø', 'A very poisonous frog found in the amazon river and Christiansø.', 1, 1, 0, 0, 0),
    ('Apis mellifera', 'Honningbi', 'En mellemstor bi med hhv. arbejdere, dronninger og droner. Oftest ses arbejderne der alle er hunner. Arbejderne varierer en del i mængden af behåring på bagkroppen. Nogle individer er tydeligt båndede mens andre er næsten uden hår. Den underliggende farve kan også variere en del, fra lys brun til næsten sort. Dronninger minder om arbejderne, men er større og mere robuste, med en lang bagkrop, designet til æglægning. Dronninger mangler også den glatte yderside af bagerste skinneben (pollenkurv), som arbejderne har. Hannerne har heller ikke nogen pollenkurv, men har store øjne der mødes i toppen.', 1, 0, 1, 1, 0),
    ('Cyanistes caeruleus', 'Blåmejse', 'En lille fugl af mejsefamilien, som er lyst gul på undersiden og har blå vinger, hale, nakke og isse. Dens hvide kinder brydes desuden af en mørkeblå banditmaske, som går fra næb til nakke. Kønnene er stort set ens, selvom hunnen som regel er mere mat i farverne end hannen. Dette gælder især halen og de blå partier i nakken og oven på hovedet. Ungfuglene er matte i farverne og har gullige kinder. Længde cirka 10,5-12 cm. Adfærd, form og størrelse minder om andre mejsearters.', 1, 1, 1, 1 ,1),
    ('Cichorium intybus', 'Cikorie', 'Cikorie er en 30-100 cm. høj urt med iøjnefaldende lyseblå blomster. Stænglen er opret, kantet og hul, foroven grenet. Stængelbladene er lancetformede, fåtandede, med hjerteformet stængelomfattende basis, på oversiden glatte. Nedre blade omvendt lancetformede, fjersnitdelte eller tandede, på undersiden stivhårede på strengene. Kurvene er 3-5 cm. brede, med tungeformede, kønne lyseblå blomster. De ydre kurvblade er kirtelhårede. Frugten er 2-3 mm, kantet, uden fnok, men med enkelte små skæl. Blomsterkurvene åbnes fra tidlig morgen og følger solens gang. Den enkelte kurv visner hurtigt.', 0, 0, 0, 1, 0);

INSERT INTO media (url, is_image) VALUES
    ('/images/Sapito.jpg', true),
    ('/images/Honningbi.jpg', true),
    ('/sounds/Cyanistes caeruleus.mp3', false),
    ('/images/Cyanistes caeruleus.jpg', true),
    ('/images/Cichorium intybus.jpg', true);

INSERT INTO species_media (species_id, media_id) VALUES
     (1, 1), (2, 2), (3, 3), (3, 4), (4, 5);

INSERT INTO points_of_interest (description, latitude, longitude, name) VALUES
    ('description will come.', 55.3192258, 15.1890070,'Møllebakken på Christiansø'),
    ('description will come.', 55.3179662, 15.1883479, 'Kongens Bastion'),
    ('description will come.', 55.3232303, 15.1910652, 'Verdens ende');

INSERT INTO points_of_interest_species (points_of_interest_id, species_id) VALUES
    (1, 1), (1, 2), (2, 1), (2, 3), (2, 4), (3, 3);
