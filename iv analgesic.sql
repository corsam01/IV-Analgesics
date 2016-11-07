-- Maria Corsaro, created 8/25/2016, last updated 11/1/2016
-- This program is designed to gather the information requested in
-- the customer generated data sheets for each of the specified CPT
-- codes and combination of iv analgesics.


-----
-- get list of patients and procedures
-- split up by procedure group for time issues

--DROP TABLE hvad_team_t.mac_iv_pain_pats1;

CREATE MULTISET TABLE hvad_team_t.mac_iv_pain_pats1
AS(
    SELECT ptid, encid, proc_code, proc_date, 'Appendectomy' AS proc_grouping
    FROM   humed_sv.procedures
    WHERE  proc_code IN ('47.01', '47.09', '47.11', '47.19', '44950', '44955', '44960', '0DTJ0ZZ',
                         '0DTJ4ZZ', '0DTJ7ZZ', '0DTJ8ZZ')
)
WITH DATA
PRIMARY INDEX (ptid, proc_date);

--DROP TABLE hvad_team_t.mac_iv_pain_pats2;

CREATE MULTISET TABLE hvad_team_t.mac_iv_pain_pats2
AS(
    SELECT ptid, encid, proc_code, proc_date, 'Arthroplasty knee' AS proc_grouping
    FROM   humed_sv.procedures
    WHERE  proc_code IN ('81.54', '81.55', '27438', '27445', '27446', '27447', '27486', '27487',
                         '0SRC07Z', '0SRC0JZ', '0SRC0KZ', '0SRD07Z', '0SRD0JZ', '0SRD0KZ', '0SRT07Z',
                         '0SRT0JZ', '0SRT0KZ', '0SRU07Z', '0SRU0JZ', '0SRU0KZ', '0SRV07Z', '0SRV0JZ',
                         '0SRV0KZ', '0SRW07Z', '0SRW0JZ', '0SRW0KZ', '0SWC0JZ', '0SWC3JZ', '0SWC4JZ',
                         '0SWD0JZ', '0SWD3JZ', '0SWD4JZ')
)
WITH DATA
PRIMARY INDEX (ptid, proc_date);

--DROP TABLE hvad_team_t.mac_iv_pain_pats3;

CREATE MULTISET TABLE hvad_team_t.mac_iv_pain_pats3
AS(
    SELECT ptid, encid, proc_code, proc_date, 'Arthroplasty other than hip or knee' AS proc_grouping
    FROM   humed_sv.procedures
    WHERE  proc_code IN ('81.56', '81.57', '81.59', '27702', '27703', '27704', '0SRF07Z', '0SRF0JZ',
                         '0SRF0KZ', '0SRG07Z', '0SRG0JZ', '0SRG0KZ', '0SRH07Z', '0SRH0JZ', '0SRH0KZ',
                         '0SRJ07Z', '0SRJ0JZ', '0SRJ0KZ', '0SRK07Z', '0SRK0JZ', '0SRK0KZ', '0SRL07Z',
                         '0SRL0JZ', '0SRL0KZ', '0SRM07Z', '0SRM0JZ', '0SRM0KZ', '0SRN07Z', '0SRN0JZ',
                         '0SRN0KZ', '0SRP07Z', '0SRP0JZ', '0SRP0KZ', '0SRQ07Z', '0SRQ0JZ', '0SRQ0KZ',
                         '0SWF0JZ', '0SWF3JZ', '0SWF4JZ', '0SWG0JZ', '0SWG3JZ', '0SWG4JZ', '0SWH0JZ',
                         '0SWH3JZ', '0SWH4JZ', '0SWJ0JZ', '0SWJ3JZ', '0SWJ4JZ', '0SWK0JZ', '0SWK3JZ',
                         '0SWK4JZ', '0SWL0JZ', '0SWL3JZ', '0SWL4JZ', '0SWM0JZ', '0SWM3JZ', '0SWM4JZ',
                         '0SWN0JZ', '0SWN3JZ', '0SWN4JZ', '0SWP0JZ', '0SWP3JZ', '0SWP4JZ', '0SWQ0JZ',
                         '0SWQ3JZ', '0SWQ4JZ')
)
WITH DATA
PRIMARY INDEX (ptid, proc_date);

--DROP TABLE hvad_team_t.mac_iv_pain_pats4;

CREATE MULTISET TABLE hvad_team_t.mac_iv_pain_pats4
AS(
    SELECT ptid, encid, proc_code, proc_date, 'Arthroscopy' AS proc_grouping
    FROM   humed_sv.procedures
    WHERE  proc_code IN ('80.20', '80.21', '80.22', '80.23', '80.24', '80.25', '80.26', '80.27', 
                         '80.28', '80.29', '29873', '29874', '29875', '29876', '29877', '29879',
                         '29880', '29881', '29882', '29883', '29885', '29886', '29887', '29999',
                         '0RJ04ZZ', '0RJ14ZZ', '0RJ34ZZ', '0RJ44ZZ', '0RJ54ZZ', '0RJ64ZZ', '0RJ94ZZ',
                         '0RJA4ZZ', '0RJB4ZZ', '0RJC4ZZ', '0RJD4ZZ', '0RJJ4ZZ', '0RJK4ZZ', '0RJL4ZZ',
                         '0RJM4ZZ', '0RJN4ZZ', '0RJP4ZZ', '0RJQ4ZZ', '0RJR4ZZ', '0RJS4ZZ', '0RJT4ZZ',
                         '0RJU4ZZ', '0RJV4ZZ', '0RJW4ZZ', '0RJX4ZZ', '0SJ04ZZ', '0SJ24ZZ', '0SJ34ZZ',
                         '0SJ44ZZ', '0SJ54ZZ', '0SJ64ZZ', '0SJ74ZZ', '0SJ84ZZ', '0SJ94ZZ', '0SJB4ZZ',
                         '0SJC4ZZ', '0SJD4ZZ', '0SJF4ZZ', '0SJG4ZZ', '0SJH4ZZ', '0SJJ4ZZ', '0SJK4ZZ',
                         '0SJL4ZZ', '0SJM4ZZ', '0SJN4ZZ', '0SJP4ZZ', '0SJQ4ZZ')
)
WITH DATA
PRIMARY INDEX (ptid, proc_date);

--DROP TABLE hvad_team_t.mac_iv_pain_pats5;

CREATE MULTISET TABLE hvad_team_t.mac_iv_pain_pats5
AS(
    SELECT ptid, encid, proc_code, proc_date, 'Bunionectomy or repair of toe deformities' AS proc_grouping
    FROM   humed_sv.procedures
    WHERE  proc_code IN ('77.51', '77.52', '77.53', '77.54', '77.56', '77.57', '77.58', '77.59',
                         '28290', '28292', '28293', '28294', '28296', '28297', '28298', '28299',
                         '28295', '28286', '0LQV0ZZ', '0LQV3ZZ', '0LQV4ZZ', '0LQW0ZZ', '0LQW3ZZ',
                         '0LQW4ZZ', '0MQS0ZZ', '0MQS3ZZ', '0MQS4ZZ', '0MQT0ZZ', '0MQT3ZZ', '0MQT4ZZ',
                         '0Q8N0ZZ', '0Q8N3ZZ', '0Q8N4ZZ', '0Q8P0ZZ', '0Q8P3ZZ', '0Q8P4ZZ', '0QBN0ZZ',
                         '0QBN3ZZ', '0QBN4ZZ', '0QBP0ZZ', '0QBP3ZZ', '0QBP4ZZ', '0QBQ0ZZ', '0QBQ3ZZ',
                         '0QBQ4ZZ', '0QBR0ZZ', '0QBR3ZZ', '0QBR4ZZ', '0QQQ0ZZ', '0QQQ3ZZ', '0QQQ4ZZ',
                         '0QQQXZZ', '0QQR0ZZ', '0QQR3ZZ', '0QQR4ZZ', '0QQRXZZ', '0SGM0ZZ', '0SGM3ZZ',
                         '0SGM4ZZ', '0SGN0ZZ', '0SGN3ZZ', '0SGN4ZZ', '0SGP04Z', '0SGP05Z', '0SGP07Z',
                         '0SGP0JZ', '0SGP0KZ', '0SGP0ZZ', '0SGP34Z', '0SGP35Z', '0SGP37Z', '0SGP3JZ',
                         '0SGP3KZ', '0SGP3ZZ', '0SGP44Z', '0SGP45Z', '0SGP47Z', '0SGP4JZ', '0SGP4KZ',
                         '0SGP4ZZ', '0SGQ04Z', '0SGQ05Z', '0SGQ07Z', '0SGQ0JZ', '0SGQ0KZ', '0SGQ0ZZ',
                         '0SGQ34Z', '0SGQ35Z', '0SGQ37Z', '0SGQ3JZ', '0SGQ3KZ', '0SGQ3ZZ', '0SGQ44Z',
                         '0SGQ45Z', '0SGQ47Z', '0SGQ4JZ', '0SGQ4KZ', '0SGQ4ZZ', '0SRP0JZ', '0SRQ0JZ',
                         '0STP0ZZ', '0STQ0ZZ')
)
WITH DATA
PRIMARY INDEX (ptid, proc_date);

--DROP TABLE hvad_team_t.mac_iv_pain_pats6;

CREATE MULTISET TABLE hvad_team_t.mac_iv_pain_pats6
AS(
    SELECT ptid, encid, proc_code, proc_date, 'Cholecystectomy and duct exploration' AS proc_grouping
    FROM   humed_sv.procedures
    WHERE  proc_code IN ('51.01', '51.02', '51.03', '51.04', '51.21', '51.22', '51.23', '51.24',
                         '51.41', '51.42', '51.43', '51.49', '51.51', '51.59', '51.61', '51.62',
                         '51.63', '51.64', '51.69', '51.71', '51.72', '51.79', '47562', '47563',
                         '47564', '47600', '47605', '47610', '47612', '47620', '0F550ZZ', '0F553ZZ',
                         '0F557ZZ', '0F558ZZ', '0F560ZZ', '0F563ZZ', '0F567ZZ', '0F568ZZ', '0F580ZZ',
                         '0F583ZZ', '0F587ZZ', '0F588ZZ', '0F598ZZ', '0F5C8ZZ', '0F9400Z', '0F940ZZ',
                         '0F9430Z', '0F943ZZ', '0F9500Z', '0F950ZZ', '0F9530Z', '0F953ZZ', '0F9540Z',
                         '0F954ZZ', '0F9570Z', '0F957ZZ', '0F9580Z', '0F958ZZ', '0F9600Z', '0F960ZZ',
                         '0F9630Z', '0F963ZZ', '0F9640Z', '0F964ZZ', '0F9670Z', '0F967ZZ', '0F9680Z',
                         '0F968ZZ', '0F9800Z', '0F980ZZ', '0F9830Z', '0F983ZZ', '0F9840Z', '0F984ZZ',
                         '0F9870Z', '0F987ZZ', '0F9880Z', '0F988ZZ', '0F9900Z', '0F990ZZ', '0F9930Z',
                         '0F9940Z', '0F9970Z', '0FB40ZZ', '0FB43ZZ', '0FB44ZZ', '0FB50ZZ', '0FB53ZZ',
                         '0FB57ZZ', '0FB58ZZ', '0FB60ZZ', '0FB63ZZ', '0FB67ZZ', '0FB68ZZ', '0FB80ZZ',
                         '0FB83ZZ', '0FB87ZZ', '0FB88ZZ', '0FB90ZZ', '0FB93ZZ', '0FB97ZZ', '0FB98ZZ',
                         '0FBC0ZZ', '0FBC3ZZ', '0FBC7ZZ', '0FBC8ZZ', '0FC40ZZ', '0FC43ZZ', '0FC44ZZ',
                         '0FC50ZZ', '0FC60ZZ', '0FC80ZZ', '0FC90ZZ', '0FF40ZZ', '0FF43ZZ', '0FF44ZZ',
                         '0FF47ZZ', '0FF50ZZ', '0FF53ZZ', '0FF54ZZ', '0FF57ZZ', '0FF60ZZ', '0FF63ZZ',
                         '0FF64ZZ', '0FF67ZZ', '0FF80ZZ', '0FF83ZZ', '0FF84ZZ', '0FF87ZZ', '0FF90ZZ',
                         '0FF93ZZ', '0FF94ZZ', '0FF97ZZ', '0FFC0ZZ', '0FFC3ZZ', '0FFC4ZZ', '0FFC7ZZ',
                         '0FHB0DZ', '0FHB3DZ', '0FHB7DZ', '0FJB0ZZ', '0FJB3ZZ', '0FJB4ZZ', '0FJB7ZZ',
                         '0FJB8ZZ', '0FQ50ZZ', '0FQ53ZZ', '0FQ54ZZ', '0FQ57ZZ', '0FQ58ZZ', '0FQ60ZZ',
                         '0FQ63ZZ', '0FQ64ZZ', '0FQ67ZZ', '0FQ68ZZ', '0FQ80ZZ', '0FQ83ZZ', '0FQ84ZZ',
                         '0FQ87ZZ', '0FQ88ZZ', '0FQ90ZZ', '0FQ93ZZ', '0FQ94ZZ', '0FQ97ZZ', '0FQ98ZZ',
                         '0FT40ZZ', '0FT44ZZ', '0FT50ZZ', '0FT54ZZ', '0FT57ZZ', '0FT58ZZ', '0FT60ZZ',
                         '0FT64ZZ', '0FT67ZZ', '0FT68ZZ', '0FT80ZZ', '0FT84ZZ', '0FT87ZZ', '0FT88ZZ',
                         '0FT90ZZ', '0FT94ZZ', '0FT97ZZ', '0FT98ZZ', '0FTC0ZZ', '0FTC4ZZ', '0FTC7ZZ',
                         '0FTC8ZZ')
)
WITH DATA
PRIMARY INDEX (ptid, proc_date);

--DROP TABLE hvad_team_t.mac_iv_pain_pats7;

CREATE MULTISET TABLE hvad_team_t.mac_iv_pain_pats7
AS(
    SELECT ptid, encid, proc_code, proc_date, 'C-Section' AS proc_grouping
    FROM   humed_sv.procedures
    WHERE  proc_code IN ('74.0', '74.1', '74.2', '74.3', '74.4', '74.99', '74.91', '59620', 
                         '59514', '95610', '59515', '59618', '59622', '10A00ZZ', '10A03ZZ', 
                         '10A04ZZ', '10D00Z0', '10D00Z1', '10D00Z2', '10T20ZZ', '10T23ZZ', '10T24ZZ')
)
WITH DATA
PRIMARY INDEX (ptid, proc_date);

--DROP TABLE hvad_team_t.mac_iv_pain_pats8;

CREATE MULTISET TABLE hvad_team_t.mac_iv_pain_pats8
AS(
    SELECT ptid, encid, proc_code, proc_date, 'Hysterectomy, abdominal and vaginal' AS proc_grouping
    FROM   humed_sv.procedures
    WHERE  proc_code IN ('68.31', '68.39', '68.41', '68.51', '68.59', '68.61', '68.69', '68.71', 
                         '68.79', '68.9', '58150', '58152', '58180', '58200', '58260', '58262', 
                         '58263', '58267', '58270', '58275', '58280', '58285', '58290', '58291', 
                         '58292', '58293', '58294', '58550', '58552', '58553', '58554', '0UT44ZZ',
                         '0UT47ZZ', '0UT48ZZ', '0UT90ZZ', '0UT94ZZ', '0UT97ZZ', '0UT98ZZ', '0UT9FZZ',
                         '0UTC0ZZ', '0UTC4ZZ', '0UTC7ZZ', '0UTC8ZZ')
)
WITH DATA
PRIMARY INDEX (ptid, proc_date);

--DROP TABLE hvad_team_t.mac_iv_pain_pats9;

CREATE MULTISET TABLE hvad_team_t.mac_iv_pain_pats9
AS(
    SELECT ptid, encid, proc_code, proc_date, 'Oophorectomy, unilateral and bilateral' AS proc_grouping
    FROM   humed_sv.procedures
    WHERE  proc_code IN ('65.01', '65.09', '65.21', '65.22', '65.23', '65.24', '65.25', '65.29',
                         '65.31', '65.39', '65.41', '65.51', '65.52', '65.53', '65.54', '65.61',
                         '65.62', '65.63', '65.64', '58661', '58662', '58720', '58740', '0U500ZZ',
                         '0U503ZZ', '0U504ZZ', '0U510ZZ', '0U513ZZ', '0U514ZZ', '0U520ZZ', '0U523ZZ',
                         '0U524ZZ', '0U800ZZ', '0U803ZZ', '0U810ZZ', '0U813ZZ', '0U820ZZ', '0U823ZZ',
                         '0U9000Z', '0U900ZZ', '0U903ZZ', '0U9040Z', '0U904ZZ', '0U9100Z', '0U910ZZ',
                         '0U913ZZ', '0U9140Z', '0U914ZZ', '0U9200Z', '0U920ZZ', '0U923ZZ', '0U9240Z',
                         '0U924ZZ', '0UB00ZZ', '0UB03ZZ', '0UB04ZZ', '0UB07ZZ', '0UB08ZZ', '0UB10ZZ',
                         '0UB13ZZ', '0UB14ZZ', '0UB17ZZ', '0UB18ZZ', '0UB20ZZ', '0UB23ZZ', '0UB24ZZ',
                         '0UB27ZZ', '0UB28ZZ', '0UT00ZZ', '0UT04ZZ', '0UT07ZZ', '0UT08ZZ', '0UT0FZZ',
                         '0UT10ZZ', '0UT14ZZ', '0UT17ZZ', '0UT18ZZ', '0UT1FZZ', '0UT20ZZ', '0UT24ZZ',
                         '0UT27ZZ', '0UT28ZZ', '0UT2FZZ', '0UT70ZZ')
)
WITH DATA
PRIMARY INDEX (ptid, proc_date);

--DROP TABLE hvad_team_t.mac_iv_pain_pats10;

CREATE MULTISET TABLE hvad_team_t.mac_iv_pain_pats10
AS(
    SELECT ptid, encid, proc_code, proc_date, 'Inguinal and femoral hernia repair' AS proc_grouping
    FROM   humed_sv.procedures
    WHERE  proc_code IN ('17.22', '17.23', '17.24', '53.00', '53.01', '53.02', '53.03', '53.04',
                         '53.05', '53.14', '53.15', '53.17', '53.21', '53.29', '53.31', '53.39',
                         '49492', '49495', '49496', '49500', '49501', '49505', '49507', '49520',
                         '49521', '49525', '49650', '49651', '49550', '49553', '49555', '49557',
                         '0YQ50ZZ', '0YQ53ZZ', '0YQ54ZZ', '0YQ60ZZ', '0YQ63ZZ', '0YQ64ZZ', '0YQ70ZZ',
                         '0YQ73ZZ', '0YQ74ZZ', '0YQ80ZZ', '0YQ83ZZ', '0YQ84ZZ', '0YQE0ZZ', '0YQE3ZZ',
                         '0YQE4ZZ', '0YU507Z', '0YU50JZ', '0YU50KZ', '0YU607Z', '0YU60JZ', '0YU60KZ',
                         '0YU707Z', '0YU70JZ', '0YU70KZ', '0YU747Z', '0YU74JZ', '0YU74KZ', '0YU807Z',
                         '0YU80JZ', '0YU80KZ', '0YU847Z', '0YU84JZ', '0YU84KZ', '0YUA07Z', '0YUA0JZ',
                         '0YUA0KZ', '0YUA47Z', '0YUA4JZ', '0YUA4KZ', '0YUE07Z', '0YUE0JZ', '0YUE0KZ',
                         '0YUE47Z', '0YUE4JZ', '0YUE4KZ')
)
WITH DATA
PRIMARY INDEX (ptid, proc_date);

--DROP TABLE hvad_team_t.mac_iv_pain_pats11;

CREATE MULTISET TABLE hvad_team_t.mac_iv_pain_pats11
AS(
    SELECT ptid, encid, proc_code, proc_date, 'Third molar extraction' AS proc_grouping
    FROM   humed_sv.procedures
    WHERE  proc_code IN ('D7230', 'D7240', 'D7241')
)
WITH DATA
PRIMARY INDEX (ptid, proc_date);

--DROP TABLE hvad_team_t.mac_iv_pain_pats12;

CREATE MULTISET TABLE hvad_team_t.mac_iv_pain_pats12
AS(
    SELECT ptid, encid, proc_code, proc_date, 'Other hernia repair' AS proc_grouping
    FROM   humed_sv.procedures
    WHERE  proc_code IN ('53.41', '53.42', '53.43', '53.49', '53.51', '53.59', '53.61', '53.62',
                         '53.63', '53.69', '53.71', '53.72', '53.75', '53.80', '53.81', '53.82',
                         '53.83', '53.84', '53.9', '46.40', '46.42', '46.43', '39501', '39503', 
                         '39541', '49570', '49572', '49560', '49561', '49565', '49566', '49568',
                         '49652', '49653', '49654', '49655', '49656', '49566', '49568', '49652',
                         '49653', '49654', '49655', '49656', '49657', '49540', '44346', '43280',
                         '43281', '43282', '43325', '43327', '43328', '43332', '43333', '43334',
                         '43335', '43336', '43337', '49590', '49580', '49582', '49585', '49587',
                         '49659', '0BQR0ZZ', '0BQR3ZZ', '0BQR4ZZ', '0BQS0ZZ', '0BQS3ZZ', '0BQS4ZZ',
                         '0BUR07Z', '0BUR0JZ', '0BUR0KZ', '0BUR47Z', '0BUR4JZ', '0BUR4KZ', '0BUS07Z',
                         '0BUS0JZ', '0BUS0KZ', '0BUS47Z', '0BUS4JZ', '0BUS4KZ', '0DQS0ZZ', '0DQS3ZZ',
                         '0DQS4ZZ', '0DQT0ZZ', '0DQT3ZZ', '0DQT4ZZ', '0JQ70ZZ', '0JQ73ZZ', '0JQC0ZZ',
                         '0JQC3ZZ', '0JQM0ZZ', '0JQM3ZZ', '0JQN0ZZ', '0JQN3ZZ', '0WBFXZ2', '0WQF0ZZ',
                         '0WQF3ZZ', '0WQF4ZZ', '0WQFXZ2', '0WUF07Z', '0WUF0JZ', '0WUF0KZ', '0WUF47Z',
                         '0WUF4JZ', '0WUF4KZ')
)
WITH DATA
PRIMARY INDEX (ptid, proc_date);

--DROP TABLE hvad_team_t.mac_iv_pain_pats13;

CREATE MULTISET TABLE hvad_team_t.mac_iv_pain_pats13
AS(
    SELECT ptid, encid, proc_code, proc_date, 'Hip replacement' AS proc_grouping
    FROM   humed_sv.procedures
    WHERE  proc_code IN ('00.70', '00.71', '00.72', '00.73', '81.51', '81.52', '81.53', '27125',
                         '27130', '27132', '27134', '27137', '27138', '0SRA00A', '0SRR01Z', '0SWA4JZ',
                         '0SRB0J9', '0SWE4JZ', '0SRS039', '0SWA0JZ', '0SRA009', '0SRA03Z', '0SW90JZ',
                         '0SRR0JZ', '0SRS0KZ', '0SRS03A', '0SW94JZ', '0SRA07Z', '0SRE03Z', '0SRR0JA',
                         '0SRE009', '0SWE0JZ', '0SWS3JZ', '0SRB0JA', '0SRE00A', '0SWB4JZ', '0SRA0KZ',
                         '0SRS01Z', '0SRA03A', '0SRR019', '0SWB0JZ', '0SRR0J9', '0SRA039', '0SRR01A',
                         '0SRS0JZ', '0SRE07Z', '0SRE039', '0SRS0JA', '0SRE03A', '0SRE0KZ', '0SWR4JZ',
                         '0SWR0JZ', '0SRA0JZ', '0SRR03Z', '0SRS019', '0SWA3JZ', '0SWE3JZ', '0SRR07Z',
                         '0SRA01Z', '0SRS01A', '0SRS0J9', '0SW93JZ', '0SRE01Z', '0SWS4JZ', '0SRE0JZ',
                         '0SWS0JZ', '0SR90JZ', '0SRA01A', '0SRE0JA', '0SRB0JZ', '0SRA0J9', '0SWB3JZ',
                         '0SRS03Z', '0SRR039', '0SRA00Z', '0SRA019', '0SRR0KZ', '0SRR03A', '0SRE019',
                         '0SRE00Z', '0SR90JA', '0SRS07Z', '0SWR3JZ', '0SRE0J9', '0SRA0JA', '0SRE01A',
                         '0SR90J9')
)
WITH DATA
PRIMARY INDEX (ptid, proc_date);

--DROP TABLE hvad_team_t.mac_iv_pain_pats14;

CREATE MULTISET TABLE hvad_team_t.mac_iv_pain_pats14
AS(
    SELECT ptid, encid, proc_code, proc_date, 'Soft tissue surgery' AS proc_grouping
    FROM   humed_sv.procedures
    WHERE  proc_code IN ('82.09', '82.19', '82.29', '82.39', '82.93', '83.09', '83.19', '83.39',
                         '83.49', '20005', '21011', '21012', '21013', '21014', '21015', '21016',
                         '21501', '21502', '21550', '21552', '21554', '21555', '21556', '21557',
                         '21558', '21930', '21931', '21932', '21933', '21935', '21936', '22900',
                         '22901', '22902', '22903', '22904', '22905', '23071', '23073', '23075',
                         '23076', '23077', '23078', '24071', '24073', '24075', '24076', '24077',
                         '24079', '25071', '25073', '25075', '25076', '25077', '25078', '26111',
                         '26113', '26115', '26116', '26117', '26118', '26587', '27043', '27045',
                         '27047', '27048', '27049', '27059', '27327', '27328', '27329', '27337',
                         '27339', '27364', '27615', '27616', '27618', '27619', '27632', '27634',
                         '28039', '28041', '28043', '28045', '28046', '28047', '28313', '30801',
                         '30802', '42205', '69145', '0K9D3ZZ', '0KN83ZZ', '0KNQ0ZZ', '0J590ZZ', 
                         '0JBG0ZZ', '0KN60ZZ', '0JCP3ZZ', '0KNS3ZZ', '0JCN0ZZ', '0K834ZZ', '0K8C4ZZ',
                         '0K8K0ZZ', '0K8M3ZZ', '0JC80ZZ', '0K8Q0ZZ', '0K8S3ZZ', '0J5Q3ZZ', '0L973ZZ',
                         '0K860ZZ', '0KN94ZZ', '0KNL0ZZ', '0KNT4ZZ', '0K883ZZ', '0KNN3ZZ', '0J503ZZ',
                         '0JB10ZZ', '0J8J3ZZ', '0K8V0ZZ', '0JCK3ZZ', '0K8H3ZZ', '0JBN3ZZ', '0J940ZZ',
                         '0KN10ZZ', '0KN33ZZ', '0K8F0ZZ', '0JBL0ZZ', '0K8N4ZZ', '0J9D0ZZ', '0J9J30Z',
                         '0J9P0ZZ', '0JB43ZZ', '0K850ZZ', '0K873ZZ', '0J553ZZ', '0KNG0ZZ', '0J8K3ZZ',
                         '0JCH0ZZ', '0J5C0ZZ', '0JC03ZZ', '0K8G3ZZ', '0JCJ3ZZ', '0KNW0ZZ', '0J950ZZ',
                         '0K8M4ZZ', '0K8S4ZZ', '0JBM0ZZ', '0KN93ZZ', '0JBB0ZZ', '0JBD3ZZ', '0J580ZZ',
                         '0KNR0ZZ', '0K9C3ZZ', '0KN70ZZ', '0KNJ4ZZ', '0KNT3ZZ', '0K884ZZ', '0JB70ZZ',
                         '0JB93ZZ', '0K823ZZ', '0K800ZZ', '0J9J0ZZ', '0K8B3ZZ', '0K8H4ZZ', '0JCC0ZZ',
                         '0J5P0ZZ', '0JC53ZZ', '0K8P0ZZ', '0J5H0ZZ', '0J5R3ZZ', '0K8R3ZZ', '0JBR0ZZ',
                         '0L983ZZ', '0K893ZZ', '0J573ZZ', '0K870ZZ', '0J550ZZ', '0JBC0ZZ', '0JCJ0ZZ',
                         '0KNG3ZZ', '0JB80ZZ', '0KNM4ZZ', '0JCL3ZZ', '0KNB4ZZ', '0KNW3ZZ', '0J9C0ZZ',
                         '0K8G0ZZ', '0J5G3ZZ', '0KN24ZZ', '0JC63ZZ', '0JC40ZZ', '0KNR3ZZ', '0KN50ZZ',
                         '0KN73ZZ', '0KNP0ZZ', '0JBH0ZZ', '0JBJ3ZZ', '0K820ZZ', '0KNH4ZZ', '0J9H0ZZ',
                         '0K8B0ZZ', '0K8D3ZZ', '0JCG3ZZ', '0J980ZZ', '0J9K00Z', '0K8J4ZZ', '0K8R0ZZ',
                         '0JC90ZZ', '0J5L3ZZ', '0J5N0ZZ', '0K8T3ZZ', '0J9J3ZZ', '0J5P3ZZ', '0JB03ZZ',
                         '0KN84ZZ', '0JBK3ZZ', '0KNK0ZZ', '0KNM3ZZ', '0KNS4ZZ', '0K810ZZ', '0K833ZZ',
                         '0K894ZZ', '0J513ZZ', '0J9K3ZZ', '0JB90ZZ', '0K8W0ZZ', '0JCD0ZZ', '0JCF3ZZ',
                         '0KNB3ZZ', '0K8C3ZZ', '0J990ZZ', '0KN00ZZ', '0KN23ZZ', '0J540ZZ', '0JB53ZZ',
                         '0JCQ3ZZ', '0KNN4ZZ', '0KNH3ZZ', '0J563ZZ', '0KNF0ZZ', '0JC13ZZ', '0JBP3ZZ',
                         '0KNV0ZZ', '0J5F3ZZ', '0K8D4ZZ', '0J9N0ZZ', '0J5D0ZZ', '0K8N3ZZ', '0KN34ZZ',
                         '0JBN0ZZ', '0K8L0ZZ', '0K8T4ZZ', '0K8N0ZZ', '0K8P3ZZ', '0J5L0ZZ', '0J5N3ZZ',
                         '0KNQ4ZZ', '0J9R0ZZ', '0JB40ZZ', '0JB63ZZ', '0K830ZZ', '0J510ZZ', '0J8K0ZZ',
                         '0K853ZZ', '0KNK3ZZ', '0K8C0ZZ', '0J5C3ZZ', '0JC00ZZ', '0JCF0ZZ', '0K804ZZ',
                         '0KNF4ZZ', '0JBQ3ZZ', '0J970ZZ', '0JCH3ZZ', '0J9J00Z', '0K8K4ZZ', '0KN64ZZ',
                         '0J9G0ZZ', '0KN03ZZ', '0J560ZZ', '0J583ZZ', '0JBF3ZZ', '0KN90ZZ', '0JBD0ZZ',
                         '0KNV3ZZ', '0K864ZZ', '0KNL4ZZ', '0JCQ0ZZ', '0K8F4ZZ', '0KNT0ZZ', '0JCC3ZZ',
                         '0K8V4ZZ', '0J5F0ZZ', '0J5H3ZZ', '0J9L0ZZ', '0J5R0ZZ', '0JC50ZZ', '0JC73ZZ',
                         '0KN14ZZ', '0JBG3ZZ', '0K8P4ZZ', '0KNQ3ZZ', '0K854ZZ', '0KNW4ZZ', '0JCR3ZZ',
                         '0JCP0ZZ', '0KNF3ZZ', '0JC60ZZ', '0JC83ZZ', '0K8S0ZZ', '0J9M0ZZ', '0JCB3ZZ',
                         '0KN63ZZ', '0J5M0ZZ', '0K8M0ZZ', '0K880ZZ', '0JB13ZZ', '0KNR4ZZ', '0J500ZZ',
                         '0JCK0ZZ', '0JCM3ZZ', '0KNJ0ZZ', '0KNL3ZZ', '0KNG4ZZ', '0J5B3ZZ', '0JBJ0ZZ',
                         '0K8H0ZZ', '0K8J3ZZ', '0JBL3ZZ', '0KN74ZZ', '0KN13ZZ', '0J9B0ZZ', '0JCR0ZZ',
                         '0JB00ZZ', '0KNM0ZZ', '0K813ZZ', '0K874ZZ', '0KNB0ZZ', '0J9K0ZZ', '0K8G4ZZ',
                         '0JCB0ZZ', '0KN20ZZ', '0JCD3ZZ', '0JBM3ZZ', '0JBK0ZZ', '0K8W3ZZ', '0KNP4ZZ',
                         '0J5M3ZZ', '0KNH0ZZ', '0KNJ3ZZ', '0JCM0ZZ', '0JB73ZZ', '0JBB3ZZ', '0K824ZZ',
                         '0J543ZZ', '0JB50ZZ', '0JC10ZZ', '0JBP0ZZ', '0JBR3ZZ', '0J5B0ZZ', '0J900ZZ',
                         '0K8B4ZZ', '0J5D3ZZ', '0KN54ZZ', '0K8L3ZZ', '0K8J0ZZ', '0K8R4ZZ', '0KN80ZZ',
                         '0K890ZZ', '0J570ZZ', '0J593ZZ', '0JCL0ZZ', '0JCN3ZZ', '0KNK4ZZ', '0KNS0ZZ',
                         '0JBC3ZZ', '0JB83ZZ', '0JB60ZZ', '0JC43ZZ', '0K803ZZ', '0J5Q0ZZ', '0J5G0ZZ',
                         '0K8K3ZZ', '0K8Q3ZZ', '0K8W4ZZ', '0JBQ0ZZ', '0KN04ZZ', '0KNN0ZZ', '0KNP3ZZ',
                         '0K8Q4ZZ', '0J9Q0ZZ', '0J9K30Z', '0JBF0ZZ', '0JBH3ZZ', '0KNV4ZZ', '0J8J0ZZ',
                         '0K863ZZ', '0JCG0ZZ', '0K8D0ZZ', '0K814ZZ', '0K8F3ZZ', '0J960ZZ', '0JC70ZZ',
                         '0K8V3ZZ', '0KN30ZZ', '0K8L4ZZ', '0K8T0ZZ', '0KN53ZZ', '0J9F0ZZ', '0JC93ZZ')
)
WITH DATA
PRIMARY INDEX (ptid, proc_date);

--DROP TABLE hvad_team_t.mac_iv_pain_pats15;

CREATE MULTISET TABLE hvad_team_t.mac_iv_pain_pats15
AS(
    SELECT ptid, encid, proc_code, proc_date, 'Spine surgery' AS proc_grouping
    FROM   humed_sv.procedures
    WHERE  proc_code IN ('81.30', '81.32', '81.33', '81.34', '81.35', '81.36', '81.37', '81.38',
                         '81.39', '81.6', '81.62', '81.63', '81.64', '22100', '22101', '22102',
                         '22103', '22110', '22112', '22114', '22116', '22206', '22207', '22208',
                         '22210', '22212', '22214', '22216', '22220', '22222', '22224', '22226',
                         '22510', '22511', '22512', '22513', '22514', '22515', '22534', '22614',
                         '22800', '22802', '22804', '22808', '22810', '22812', '22818', '22819',
                         '22899', '63001', '63003', '63005', '63011', '63015', '63016', '63017',
                         '63020', '63030', '63035', '63040', '63042', '63043', '63044', '63045',
                         '63046', '63047', '63048', '63050', '63051', '63081', '63082', '63085',
                         '63086', '63087', '63088', '63090', '63091', '63101', '63102', '63103',
                         '63300', '63301', '63302', '63303', '63304', '63305', '63306', '63307',
                         '63308', '0SG04K0', '0RG00ZJ', '0SG04K1', '0SG04JJ', '0RG1070', '0SG30J1',
                         '0RG1071', '0RG607J', '0SG744Z', '0SG30J0', '0SG647Z', '0RGA071', '0SG03Z0',
                         '0RGA070', '0SG03Z1', '0RG00J1', '0RG00J0', '0SG30ZJ', '0SG54KZ', '0SG80JZ',
                         '0SG03J0', '0SG03J1', '0RG4471', '0RG4470', '0SG30K1', '0SG04KJ', '0SG30K0',
                         '0RG60Z1', '0SG30JJ', '0SG53ZZ', '0RG107J', '0RG60Z0', '0RG00JJ', '0RGA07J',
                         '0SG03ZJ', '0SG80KZ', '0RG00K1', '0SG53JZ', '0RG00K0', '0RG447J', '0RG10Z0',
                         '0RG10Z1', '0SG70KZ', '0RGA0J1', '0RG13KJ', '0SG64KZ', '0RG00Z0', '0SG844Z', 
                         '0RG60JJ', '0RGA0J0', '0SG04Z0', '0RG00KJ', '0SG04Z1', '0RGA0Z1', '0RG60ZJ',
                         '0RGA0Z0', '0SG307J', '0RG60J1', '0RG60J0', '0RG44Z0', '0SG04J0', '0SG04J1',
                         '0RG4370', '0RG60KJ', '0RG44Z1', '0RGA0K1', '0RGA0K0', '0RG4371', '0SG634Z',
                         '0RGA0JJ', '0SG537Z', '0RG10ZJ', '0SG0370', '0SG80ZZ', '0SG0371', '0SG54ZZ',
                         '0RG10J0', '0RG10J1', '0SG04ZJ', '0SG30Z1', '0SG037J', '0SG30Z0', '0RGA0ZJ',
                         '0SG54JZ', '0RG60K0', '0RG60K1', '0SG534Z', '0RG44ZJ', '0RGA0KJ', '0RG437J',
                         '0SG33KJ', '0RG10K0', '0RG10K1', '0RG44J0', '0SG70ZZ', '0RG44J1', '0RG10JJ',
                         '0RG43Z1', '0SG70JZ', '0RG43Z0', '0SG644Z', '0SG547Z', '0SG0470', '0SG0471',
                         '0SG807Z', '0RG44K1', '0RG44K0', '0SG3071', '0SG047J', '0SG3070', '0RG10KJ',
                         '0RG44JJ', '0SG60JZ', '0SG33J1', '0SG33J0', '0SG544Z', '0SG34KJ', '0RG047J',
                         '0RG43ZJ', '0RG43J1', '0RG43J0', '0RG0471', '0RG0470', '0SG33ZJ', '0RG44KJ',
                         '0SG83JZ', '0SG60KZ', '0SG33K0', '0RG6470', '0RG6471', '0SG33K1', '0RG04Z0',
                         '0SG33JJ', '0SG707Z', '0RG43K0', '0SG804Z', '0RG43K1', '0RG43JJ', '0SG83KZ',
                         '0SG50KZ', '0SG73KZ', '0SG84JZ', '0SG34J1', '0SG00K0', '0SG00K1', '0SG34J0',
                         '0RG04J1', '0SG00JJ', '0RG037J', '0RG647J', '0SG704Z', '0RGA471', '0RG04ZJ',
                         '0RGA470', '0SG607Z', '0SG84ZZ', '0SG837Z', '0RG0371', '0RG0370', '0RG04Z1',
                         '0RG04J0', '0SG34ZJ', '0RG43KJ', '0SG337J', '0RG64Z1', '0RG6370', '0RG4071',
                         '0RG147J', '0RG4070', '0RG64Z0', '0RG6371', '0SG34K1', '0SG34K0', '0RG03Z1',
                         '0SG34JJ', '0RG03Z0', '0SG00KJ', '0SG83ZZ', '0SG60ZZ', '0RGA47J', '0SG33Z1',
                         '0SG33Z0', '0RG04K1', '0RG04K0', '0RG1470', '0RG1471', '0RG04JJ', '0SG84KZ',
                         '0RGA4J1', '0RGA4J0', '0RG14Z0', '0RG14Z1', '0RG64ZJ', '0RG407J', '0RGA371',
                         '0RG03ZJ', '0RG637J', '0RGA370', '0RG64J1', '0RGA4Z1', '0RGA4Z0', '0SG50ZZ',
                         '0RG64J0', '0SG847Z', '0SG347J', '0SG00Z0', '0SG00Z1', '0RG03J1', '0RG03J0',
                         '0RG04KJ', '0SG74KZ', '0RG14ZJ', '0RG40Z1', '0RGA4K1', '0SG50JZ', '0RG137J',
                         '0RG63Z0', '0RGA4K0', '0RG63Z1', '0SG00J0', '0RGA4JJ', '0SG00J1', '0RG40Z0',
                         '0SG73ZZ', '0SG3370', '0SG34Z1', '0RG64K0', '0RG64K1', '0SG3371', '0RGA37J',
                         '0RG14J0', '0SG34Z0', '0RG14J1', '0RGA4ZJ', '0RG1370', '0SG00ZJ', '0RG03K1',
                         '0RG1371', '0RG64JJ', '0RG03K0', '0RG03JJ', '0SG73JZ', '0RGA3J1', '0RGA3J0',
                         '0RG13Z0', '0RG13Z1', '0RG40ZJ', '0RG63ZJ', '0RGA4KJ', '0SG63ZZ', '0RG03KJ',
                         '0RG14JJ', '0RG40J1', '0RGA3Z1', '0SG0070', '0RG63J0', '0RGA3Z0', '0SG0071',
                         '0RG63J1', '0RG14K0', '0RG14K1', '0RG64KJ', '0RG40J0', '0SG63JZ', '0RGA3K1',
                         '0RGA3K0', '0RG0071', '0RGA3JJ', '0RG0070', '0SG604Z', '0SG507Z', '0SG737Z',
                         '0SG74ZZ', '0RG13ZJ', '0RG63K1', '0SG3471', '0SG3470', '0RG13J0', '0SG834Z',
                         '0RG13J1', '0RG40JJ', '0RG63JJ', '0RGA3ZJ', '0SG007J', '0RG63K0', '0RG40K1',
                         '0SG74JZ', '0RG14KJ', '0RG40K0', '0SG63KZ', '0SG03K0', '0SG03K1', '0RGA3KJ',
                         '0SG734Z', '0SG03JJ', '0SG504Z', '0SG637Z', '0SG30KJ', '0SG64ZZ', '0RG007J',
                         '0RG13K0', '0RG13K1', '0RG40KJ', '0RG63KJ', '0SG64JZ', '0RG13JJ', '0SG53KZ',
                         '0RG6070', '0RG6071', '0SG03KJ', '0RG00Z1', '0SG747Z')
)
WITH DATA
PRIMARY INDEX (ptid, proc_date);

--DROP TABLE hvad_team_t.mac_iv_pain_pats16;

CREATE MULTISET TABLE hvad_team_t.mac_iv_pain_pats16
AS(
    SELECT ptid, encid, proc_code, proc_date, 'Shoulder surgery' AS proc_grouping
    FROM   humed_sv.procedures
    WHERE  proc_code IN ('80.21', '27472', '29805', '29806', '29807', '29819', '29820', '29821',
                         '29822', '29823', '29824', '29825', '29826', '29827', '29828', '0RJJ4ZZ',
                         '0RJK4ZZ')
)
WITH DATA
PRIMARY INDEX (ptid, proc_date);

--DROP TABLE hvad_team_t.mac_iv_pain_pats17;

CREATE MULTISET TABLE hvad_team_t.mac_iv_pain_pats17
AS(
    SELECT ptid, encid, proc_code, proc_date, 'Ankle surgery' AS proc_grouping
    FROM   humed_sv.procedures
    WHERE  proc_code IN ('80.07', '80.17', '80.27', '81.1', '81.56', '27610', '27612', '27620',
                         '27625', '27626', '27700', '27702', '27703', '27870', '29791', '29894',
                         '29895', '29897', '29898', '29899', '0MCR3ZZ', '0MCR0ZZ', '0M9R0ZZ', '0SRF07Z',
                         '0MCR4ZZ', '0M9R40Z', '0SJG0ZZ', '0SPF0JZ', '0SCG3ZZ', '0SCG4ZZ', '0SJG4ZZ',
                         '0SCG0ZZ', '0SRF0KZ', '0SRG0JZ', '0S9F00Z', '0M9R00Z', '0SPF4JZ', '0M9R30Z',
                         '0SPF3JZ', '0MCQ0ZZ', '0M9Q0ZZ', '0SRG07Z', '0MCQ3ZZ', '0S9G0ZZ', '0MCQ4ZZ',
                         '0M9Q40Z', '0SCF4ZZ', '0M9Q30Z', '0S9F0ZZ', '0SJF0ZZ', '0SPG0JZ', '0SCF3ZZ',
                         '0SCF0ZZ', '0SJF4ZZ', '0SRG0KZ', '0S9G00Z', '0SRF0JZ', '0SPG3JZ', '0M9Q00Z',
                         '0SPG4JZ')
)
WITH DATA
PRIMARY INDEX (ptid, proc_date);

--DROP TABLE hvad_team_t.mac_iv_pain_pats18;

CREATE MULTISET TABLE hvad_team_t.mac_iv_pain_pats18
AS(
    SELECT ptid, encid, proc_code, proc_date, 'Myomectomy' AS proc_grouping
    FROM   humed_sv.procedures
    WHERE  proc_code IN ('45108', '58140', '58145', '58146', '58545', '58546')
)
WITH DATA
PRIMARY INDEX (ptid, proc_date);

--DROP TABLE hvad_team_t.mac_iv_pain_pats19;

CREATE MULTISET TABLE hvad_team_t.mac_iv_pain_pats19
AS(
    SELECT ptid, encid, proc_code, proc_date, 'Abdominal surgery' AS proc_grouping
    FROM   humed_sv.procedures
    WHERE  proc_code IN ('36.17', '38.06', '38.07', '38.16', '38.36', '38.37', '38.44', '38.46',
                         '38.47', '39.71', '54.0', '54.63', '54.72', '22900', '22901', '22902',
                         '22903', '22904', '22905', '33877', '34401', '34451', '34800', '34802',
                         '34803', '34804', '34805', '34825', '34826', '34845', '34846', '34847',
                         '34848', '35081', '35082', '35091', '35092', '35102', '35103', '35221',
                         '35251', '35281', '35331', '49082', '49083', '49203', '49204', '49205',
                         '49900', '49904', '49905', '04C90Z6', '06R507Z', '04BB0ZZ', '0Y950ZZ',
                         '04U04JZ', '04C14Z6', '06B54ZZ', '04R247Z', '06RD0KZ', '04RE07Z', '04RA4KZ',
                         '04R40JZ', '04CF4ZZ', '06RG4JZ', '06C40ZZ', '06BH0ZZ', '04RH47Z', '06RB47Z',
                         '04B70ZZ', '06R14KZ', '04CC0ZZ', '04CE3ZZ', '04R40KZ', '06RD0JZ', '06R90KZ',
                         '04CF4Z6', '04R74JZ', '06C74ZZ', '06CJ0ZZ', '06R747Z', '06RJ07Z', '021048F',
                         '04RJ0JZ', '04C14ZZ', '04U03JZ', '04R007Z', '06R14JZ', '04B80ZZ', '0WCJ3ZZ',
                         '02104ZF', '04RB4JZ', '04CF3ZZ', '04CD0ZZ', '06R90JZ', '06RF4KZ', '04R74KZ',
                         '04BE4ZZ', '021049F', '04RB4KZ', '04C90ZZ', '06R407Z', '04RJ0KZ', '06CB4ZZ',
                         '04R347Z', '04RF07Z', '04CD0Z6', '06B64ZZ', '04R50JZ', '06RC0KZ', '06RF4JZ',
                         '0WJH0ZZ', '06C50ZZ', '04RH0JZ', '06R04JZ', '06R04KZ', '04CD3ZZ', '04B60ZZ',
                         '06RC0JZ', '04CB0ZZ', '04CE4Z6', '06R80KZ', '04R54KZ', '06R647Z', '06C84ZZ',
                         '0W9F00Z', '0W9H30Z', '04BC4ZZ', '04C93ZZ', '04C70ZZ', '04RH0KZ', '04R907Z',
                         '06B40ZZ', '04R147Z', '04RD07Z', '04R30JZ', '06R80JZ', '021008F', '04CB0Z6',
                         '04C80ZZ', '04BD4ZZ', '04V00DZ', '06B74ZZ', '04R30KZ', '06RB0KZ', '04CC0Z6',
                         '04R64JZ', '04C80Z6', '04BA0ZZ', '0Y960ZZ', '06C60ZZ', '0W9H40Z', '06CC4ZZ',
                         '06BJ0ZZ', '04R64KZ', '04CE4ZZ', '04RA4JZ', '06RB0JZ', '04B94ZZ', '06R70KZ',
                         '04V00D6', '06BB4ZZ', '06RH07Z', '06R547Z', '04RA0KZ', '04RD4JZ', '04C94Z6',
                         '04C60ZZ', '06C10ZZ', '04C83ZZ', '02100KF', '04R207Z', '04BJ0ZZ', '04BB4ZZ',
                         '06R70JZ', '04R94KZ', '04CA0Z6', '06RD4KZ', '06C44ZZ', '04C60Z6', '04CC4ZZ',
                         '06R207Z', '04RD4KZ', '04R547Z', '04R70JZ', '06B00ZZ', '04RH07Z', '06RD4JZ',
                         '04B74ZZ', '06R94KZ', '0WJF0ZZ', '06BH4ZZ', '06CJ4ZZ', '04C70Z6', '04RB0JZ',
                         '06RJ47Z', '04R70KZ', '06R60KZ', '06R94JZ', '04CD4ZZ', '04B84ZZ', '04RB0KZ',
                         '06C20ZZ', '06R447Z', '06CG0ZZ', '04RE4JZ', '04C94ZZ', '0WCR3ZZ', '04R307Z',
                         '02100JF', '06RG07Z', '06BF0ZZ', '04CC3ZZ', '04CA0ZZ', '04B50ZZ', '06R60JZ',
                         '04CD4Z6', '06RC4KZ', '06C54ZZ', '06R107Z', '04C50Z6', '04CB4ZZ', '06CH0ZZ',
                         '06B10ZZ', '0WCJ4ZZ', '06R84KZ', '04R50KZ', '04CJ0ZZ', '04B64ZZ', '04R84JZ',
                         '06RC4JZ', '04CA3ZZ', '04RC4JZ', '0WQFXZZ', '04C74ZZ', '04R107Z', '06R84JZ',
                         '06B44ZZ', '04CJ0Z6', '0W9F0ZZ', '0W9H3ZZ', '04B30ZZ', '04CB4Z6', '06R50KZ',
                         '04R84KZ', '04CB3ZZ', '04RC4KZ', '04C84ZZ', '06RF07Z', '04R447Z', '06BG0ZZ',
                         '06RJ0KZ', '04CC4Z6', '06R50JZ', '04B40ZZ', '04R60JZ', '06RB4KZ', '06C64ZZ',
                         '0W9H00Z', '04RA0JZ', '06R007Z', '04C84Z6', '04C50ZZ', '04C73ZZ', '06B20ZZ',
                         '06BJ4ZZ', '04R60KZ', '06RJ0JZ', '04BA4ZZ', '04RJ47Z', '06R74KZ', '0W9H4ZZ',
                         '04R94JZ', '06RB4JZ', '04R14JZ', '04RD0JZ', '04BJ4ZZ', '02104KF', '06CD0ZZ',
                         '04RB47Z', '04C64ZZ', '06RH47Z', '06C90ZZ', '04R90KZ', '06R74JZ', '04CA4Z6',
                         '06R40KZ', '04B20ZZ', '04R14KZ', '04RD0KZ', '04C64Z6', '0WCP3ZZ', '04C53ZZ',
                         '04R507Z', '04C30ZZ', '06R40JZ', '06C14ZZ', '06B80ZZ', '06R247Z', '0Y9530Z',
                         '04C74Z6', '06B04ZZ', '04R847Z', '04C63ZZ', '04BH0ZZ', '0WQF4ZZ', '02100AF',
                         '04C40ZZ', '06R64KZ', '0WCP4ZZ', '06BC0ZZ', '04R24JZ', '04RE0JZ', '04CA4ZZ',
                         '06C24ZZ', '06CG4ZZ', '02104JF', '06RG47Z', '04RC47Z', '06R64JZ', '04C40Z6',
                         '06BF4ZZ', '04R24KZ', '04B54ZZ', '0Y9540Z', '04BF0ZZ', '0WQF3ZZ', '04RE4KZ',
                         '06R907Z', '06RD07Z', '04C54Z6', '06CH4ZZ', '04R647Z', '04CJ4ZZ', '04C43ZZ',
                         '0Y9630Z', '04R80JZ', '04C20ZZ', '06B14ZZ', '06RH0KZ', '06R147Z', '06B90ZZ',
                         '04RC0JZ', '04R04JZ', '0WCR4ZZ', '06C00ZZ', '04RA47Z', '04R80KZ', '06RH0JZ',
                         '04C20Z6', '06R54KZ', '06BD0ZZ', '04CJ4Z6', '04B34ZZ', '04R04KZ', '04RC0KZ',
                         '06CF0ZZ', '04RF4JZ', '06RF47Z', '04R407Z', '04CJ3ZZ', '06R20KZ', '06RJ4KZ',
                         '06R54JZ', '04C30Z6', '06BG4ZZ', '0Y9640Z', '04CH0ZZ', '04B44ZZ', '04RF4KZ',
                         '06R807Z', '04R747Z', '04C54ZZ', '06RC07Z', '04R90JZ', '06RJ4JZ', '06R20JZ',
                         '06RG0KZ', '06B24ZZ', '06R047Z', '04RJ07Z', '04CH0Z6', '04B10ZZ', '0W9H0ZZ',
                         '06C94ZZ', '0Y954ZZ', '06CD4ZZ', '04C34ZZ', '06RG0JZ', '04CH3ZZ', '04V03DZ',
                         '04C10Z6', '06R44KZ', '06B50ZZ', '04R10KZ', '04R44JZ', '04CF0ZZ', '04RE47Z',
                         '04C23ZZ', '06R44JZ', '06R10KZ', '04CF0Z6', '06B84ZZ', '04R44KZ', '04V03D6',
                         '04BH4ZZ', '0WQF0ZZ', '04RJ4JZ', '06R707Z', '06C70ZZ', '04R807Z', '06RB07Z',
                         '04C44ZZ', '06R10JZ', '06RF0KZ', '04R047Z', '04RC07Z', '021009F', '02100ZF',
                         '02104AF', '04R20JZ', '06BC4ZZ', '04B24ZZ', '04BE0ZZ', '04RJ4KZ', '04C10ZZ',
                         '04C33ZZ', '06RF0JZ', '0Y9500Z', '04C44Z6', '06CB0ZZ', '04RF47Z', '04R20KZ',
                         '06B60ZZ', '04R54JZ', '04RE0KZ', '04BF4ZZ', '06R947Z', '04RH4JZ', '04R607Z',
                         '06RD47Z', '04C13ZZ', '04CE0Z6', '06R00KZ', '06RH4KZ', '06B94ZZ', '04R00JZ',
                         '04BC0ZZ', '06R607Z', '04RH4KZ', '04RA07Z', '04R947Z', '0Y963ZZ', '06C80ZZ',
                         '04C24Z6', '06R00JZ', '04R00KZ', '04R34JZ', '06RH4JZ', '06BD4ZZ', '04B14ZZ',
                         '04BD0ZZ', '04RF0JZ', '0Y953ZZ', '06CF4ZZ', '04RD47Z', '0Y9600Z', '04C34Z6',
                         '04CH4ZZ', '06RC47Z', '04V04DZ', '06C04ZZ', '06R24KZ', '06B70ZZ', '04R34KZ',
                         '06R847Z', '0Y964ZZ', '06CC0ZZ', '04RF0KZ', '04R707Z', '04C24ZZ', '04V04D6',
                         '06R24JZ', '04B90ZZ', '04RB07Z', '06BB0ZZ', '04R10JZ', '04CE0ZZ', '06RG4KZ',
                         '04CH4Z6')
)
WITH DATA
PRIMARY INDEX (ptid, proc_date);

--DROP TABLE hvad_team_t.mac_iv_pain_pats20;

CREATE MULTISET TABLE hvad_team_t.mac_iv_pain_pats20
AS(
    SELECT ptid, encid, proc_code, proc_date, 'Pelvic surgery' AS proc_grouping
    FROM   humed_sv.procedures
    WHERE  proc_code IN ('22848', '27027', '27035', '27043', '27045', '27047', '27048', '27049',
                         '27057', '27059', '27086', '27087', '27158', '27215', '27216', '27217',
                         '27218', '27290', '27299', '38562', '38571', '38572', '51575', '51585',
                         '51595')
)
WITH DATA
PRIMARY INDEX (ptid, proc_date);

--DROP TABLE hvad_team_t.mac_iv_pain_pats21;

CREATE MULTISET TABLE hvad_team_t.mac_iv_pain_pats21
AS(
    SELECT ptid, encid, proc_code, proc_date, 'Partial colectomy' AS proc_grouping
    FROM   humed_sv.procedures
    WHERE  proc_code IN ('17.33', '17.35', '45.73', '45.75', '44140', '44141', '44143', '44144',
                         '44145', '44146', '44147', '44160', '44204', '44205', '44206', '44207',
                         '44208', '0DTK0ZZ', '0DTF7ZZ', '0DTG8ZZ', '0DTG7ZZ', '0DTF8ZZ', '0DTG4ZZ',
                         '0DTF4ZZ', '0DTG0ZZ', '0DTF0ZZ')
)
WITH DATA
PRIMARY INDEX (ptid, proc_date);

-- join all tables back together
--DROP TABLE hvad_team_t.mac_iv_pain_pats;

CREATE MULTISET TABLE hvad_team_t.mac_iv_pain_pats
AS(
    SELECT *
    FROM   hvad_team_t.mac_iv_pain_pats5
    
    UNION
    
    SELECT *
    FROM   hvad_team_t.mac_iv_pain_pats2
    
    UNION
    
    SELECT *
    FROM   hvad_team_t.mac_iv_pain_pats3
    
    UNION
    
    SELECT *
    FROM   hvad_team_t.mac_iv_pain_pats4
    
    UNION
    
    SELECT *
    FROM   hvad_team_t.mac_iv_pain_pats1
    
    UNION
    
    SELECT *
    FROM   hvad_team_t.mac_iv_pain_pats6
    
    UNION
    
    SELECT *
    FROM   hvad_team_t.mac_iv_pain_pats7
    
    UNION
    
    SELECT *
    FROM   hvad_team_t.mac_iv_pain_pats8
    
    UNION
    
    SELECT *
    FROM   hvad_team_t.mac_iv_pain_pats9
    
    UNION
    
    SELECT *
    FROM   hvad_team_t.mac_iv_pain_pats10
    
    UNION
    
    SELECT *
    FROM   hvad_team_t.mac_iv_pain_pats11
    
    UNION
    
    SELECT *
    FROM   hvad_team_t.mac_iv_pain_pats12
    
    UNION
    
    SELECT *
    FROM   hvad_team_t.mac_iv_pain_pats13
    
    UNION
    
    SELECT *
    FROM   hvad_team_t.mac_iv_pain_pats14
    
    UNION
    
    SELECT *
    FROM   hvad_team_t.mac_iv_pain_pats15
    
    UNION
    
    SELECT *
    FROM   hvad_team_t.mac_iv_pain_pats16
    
    UNION
    
    SELECT *
    FROM   hvad_team_t.mac_iv_pain_pats17
    
    UNION
    
    SELECT *
    FROM   hvad_team_t.mac_iv_pain_pats18
    
    UNION
    
    SELECT *
    FROM   hvad_team_t.mac_iv_pain_pats19
    
    UNION
    
    SELECT *
    FROM   hvad_team_t.mac_iv_pain_pats20
    
    UNION
    
    SELECT *
    FROM   hvad_team_t.mac_iv_pain_pats21
)
WITH DATA
PRIMARY INDEX (ptid, proc_date);

-- test query
SELECT TOP 10 *
FROM   hvad_team_t.mac_iv_pain_pats;


-----
-- get patient pain med use
-- six parts

-- first part - get patient caldolor use
--DROP TABLE hvad_team_t.mac_iv_pain_meds1;

CREATE MULTISET TABLE hvad_team_t.mac_iv_pain_meds1
AS(
    SELECT   p.ptid, p.proc_code, p.proc_date,
             COUNT(*) AS caldolor, CAST(0 AS integer) AS fentanyl, 
             CAST(0 AS integer) AS ketorolac, CAST(0 AS integer) AS ofirmev,
             CAST(0 AS integer) AS hydromorphone, CAST(0 AS integer) AS morphine
    FROM     hvad_team_t.mac_iv_pain_pats p JOIN humed_sv.procedures r ON (p.ptid = r.ptid)
    WHERE    r.proc_code = 'J1741'
             AND r.proc_date BETWEEN p.proc_date AND (p.proc_date + 5)
    GROUP BY 1, 2, 3, 5, 6, 7, 8, 9
)
WITH DATA
PRIMARY INDEX (ptid, proc_date);

-- second part - get patient fentanyl use
--DROP TABLE hvad_team_t.mac_iv_pain_meds2;

CREATE MULTISET TABLE hvad_team_t.mac_iv_pain_meds2
AS(
    SELECT   p.ptid, p.proc_code, p.proc_date,
             0 AS caldolor, COUNT(*) AS fentanyl, 0 AS ketorolac,
             0 AS ofirmev, 0 AS hydromorphone, 0 AS morphine
    FROM     hvad_team_t.mac_iv_pain_pats p JOIN humed_sv.procedures r ON (p.ptid = r.ptid)
    WHERE    r.proc_code = 'J3010'
             AND r.proc_date BETWEEN p.proc_date AND (p.proc_date + 5)
    GROUP BY 1, 2, 3, 4, 6, 7, 8, 9
)
WITH DATA
PRIMARY INDEX (ptid, proc_date);

-- third part - get patient ketorolac use
--DROP TABLE hvad_team_t.mac_iv_pain_meds3;

CREATE MULTISET TABLE hvad_team_t.mac_iv_pain_meds3
AS(
    SELECT   p.ptid, p.proc_code, p.proc_date,
             0 AS caldolor, 0 AS fentanyl, COUNT(*) AS ketorolac,
             0 AS ofirmev, 0 AS hydromorphone, 0 AS morphine
    FROM     hvad_team_t.mac_iv_pain_pats p JOIN humed_sv.procedures r ON (p.ptid = r.ptid)
    WHERE    r.proc_code = 'J1885'
             AND r.proc_date BETWEEN p.proc_date AND (p.proc_date + 5)
    GROUP BY 1, 2, 3, 4, 5, 7, 8, 9
)
WITH DATA
PRIMARY INDEX (ptid, proc_date);

-- fourth part - get patient ofirmev use
--DROP TABLE hvad_team_t.mac_iv_pain_meds4;

CREATE MULTISET TABLE hvad_team_t.mac_iv_pain_meds4
AS(
    SELECT   p.ptid, p.proc_code, p.proc_date,
             0 AS caldolor, 0 AS fentanyl, 0 AS ketorolac,
             COUNT(*) AS ofirmev, 0 AS hydromorphone, 0 AS morphine
    FROM     hvad_team_t.mac_iv_pain_pats p JOIN humed_sv.procedures r ON (p.ptid = r.ptid)
    WHERE    r.proc_code = 'J0131'
             AND r.proc_date BETWEEN p.proc_date AND (p.proc_date + 5)
    GROUP BY 1, 2, 3, 4, 5, 6, 8, 9
)
WITH DATA
PRIMARY INDEX (ptid, proc_date);

-- fifth part - get patient hydromorphone use
--DROP TABLE hvad_team_t.mac_iv_pain_meds5;

CREATE MULTISET TABLE hvad_team_t.mac_iv_pain_meds5
AS(
    SELECT   p.ptid, p.proc_code, p.proc_date,
             0 AS caldolor, 0 AS fentanyl, 0 AS ketorolac,
             0 AS ofirmev, COUNT(*) AS hydromorphone, 0 AS morphine
    FROM     hvad_team_t.mac_iv_pain_pats p JOIN humed_sv.procedures r ON (p.ptid = r.ptid)
    WHERE    r.proc_code = 'J1170'
             AND r.proc_date BETWEEN p.proc_date AND (p.proc_date + 5)
    GROUP BY 1, 2, 3, 4, 5, 6, 7, 9
)
WITH DATA
PRIMARY INDEX (ptid, proc_date);

-- sixth part - get patient 10 mg morphine use
--DROP TABLE hvad_team_t.mac_iv_pain_meds6;

CREATE MULTISET TABLE hvad_team_t.mac_iv_pain_meds6
AS(
    SELECT   p.ptid, p.proc_code, p.proc_date,
             0 AS caldolor, 0 AS fentanyl, 0 AS ketorolac,
             0 AS ofirmev, 0 AS hydromorphone, COUNT(*) AS morphine
    FROM     hvad_team_t.mac_iv_pain_pats p JOIN humed_sv.procedures r ON (p.ptid = r.ptid)
    WHERE    r.proc_code IN ('J2275', 'J2274', 'J2270')
             AND r.proc_date BETWEEN p.proc_date AND (p.proc_date + 5)
    GROUP BY 1, 2, 3, 4, 5, 6, 7, 8
)
WITH DATA
PRIMARY INDEX (ptid, proc_date);

-- seventh part - get patient 100 mg morphine use
--DROP TABLE hvad_team_t.mac_iv_pain_meds7;

CREATE MULTISET TABLE hvad_team_t.mac_iv_pain_meds7
AS(
    SELECT   p.ptid, p.proc_code, p.proc_date,
             0 AS caldolor, 0 AS fentanyl, 0 AS ketorolac,
             0 AS ofirmev, 0 AS hydromorphone, 10 * COUNT(*) AS morphine
    FROM     hvad_team_t.mac_iv_pain_pats p JOIN humed_sv.procedures r ON (p.ptid = r.ptid)
    WHERE    r.proc_code = 'J2271'
             AND r.proc_date BETWEEN p.proc_date AND (p.proc_date + 5)
    GROUP BY 1, 2, 3, 4, 5, 6, 7, 8
)
WITH DATA
PRIMARY INDEX (ptid, proc_date);

-- eighth part - join patient pain med use together
--DROP TABLE hvad_team_t.mac_iv_pain_meds;

CREATE MULTISET TABLE hvad_team_t.mac_iv_pain_meds
AS(
    SELECT   ptid, proc_code, proc_date,
             SUM(caldolor) AS caldolor, SUM(fentanyl) AS fentanyl, SUM(ketorolac) AS ketorolac,
             SUM(ofirmev) AS ofirmev, SUM(hydromorphone) AS hydromorphone, SUM(morphine) AS morphine,
             ((10 * SUM(fentanyl)) + ((80/3) * SUM(hydromorphone)) + SUM(morphine)) AS morphine_equiv
    FROM     (SELECT *
              FROM   hvad_team_t.mac_iv_pain_meds1
              
              UNION
              
              SELECT *
              FROM   hvad_team_t.mac_iv_pain_meds2
              
              UNION
              
              SELECT *
              FROM   hvad_team_t.mac_iv_pain_meds3
              
              UNION
              
              SELECT *
              FROM   hvad_team_t.mac_iv_pain_meds4
              
              UNION
              
              SELECT *
              FROM   hvad_team_t.mac_iv_pain_meds5
              
              UNION
              
              SELECT *
              FROM   hvad_team_t.mac_iv_pain_meds6
              
              UNION
              
              SELECT *
              FROM   hvad_team_t.mac_iv_pain_meds7) o
    GROUP BY 1, 2, 3
)
WITH DATA
PRIMARY INDEX (ptid, proc_date);

-- test query
SELECT TOP 10 *
FROM   hvad_team_t.mac_iv_pain_meds;


-----
-- get patient pain score information
-- three parts

-- first part - get individual scores convert to decimal
--DROP TABLE hvad_team_t.mac_iv_pain_scores1;

CREATE MULTISET TABLE hvad_team_t.mac_iv_pain_scores1
AS(
    SELECT p.ptid, proc_code, proc_date, CAST(obsresult AS decimal(3, 1)) AS pain_score
    FROM   hvad_team_t.mac_iv_pain_pats p JOIN humed_sv.observations o ON (p.ptid = o.ptid)
    WHERE  obs_type = 'PAIN'
           AND obs_date BETWEEN proc_date AND (proc_date + 5)
           AND obsresult IS NOT NULL
)
WITH DATA
PRIMARY INDEX (ptid, proc_date);

-- second part - classify scores
--DROP TABLE hvad_team_t.mac_iv_pain_scores2;

CREATE MULTISET TABLE hvad_team_t.mac_iv_pain_scores2
AS(
    SELECT ptid, proc_code, proc_date, pain_score,
           CASE WHEN pain_score < 1 THEN 1
                ELSE 0
           END AS no_pain,
           CASE WHEN pain_score BETWEEN 1 AND 3.9 THEN 1
                ELSE 0
           END AS mild_pain,
           CASE WHEN pain_score BETWEEN 4 AND 6.9 THEN 1
                ELSE 0
           END AS moderate_pain,
           CASE WHEN pain_score BETWEEN 7 AND 10 THEN 1
                ELSE 0
           END AS severe_pain
    FROM   hvad_team_t.mac_iv_pain_scores1
)
WITH DATA
PRIMARY INDEX (ptid, proc_date);

-- third part - consolidate information
--DROP TABLE hvad_team_t.mac_iv_pain_scores;

CREATE MULTISET TABLE hvad_team_t.mac_iv_pain_scores
AS(
    SELECT   ptid, proc_code, proc_date, 
             AVG(pain_score) AS avg_pain,
             CASE WHEN SUM(no_pain) > 0 THEN 1
                  ELSE 0
             END AS no_pain,
             CASE WHEN SUM(mild_pain) > 0 THEN 1
                  ELSE 0
             END AS mild_pain,
             CASE WHEN SUM(moderate_pain) > 0 THEN 1
                  ELSE 0
             END AS moderate_pain,
             CASE WHEN SUM(severe_pain) > 0 THEN 1
                  ELSE 0
             END AS severe_pain
    FROM     hvad_team_t.mac_iv_pain_scores2
    GROUP BY 1, 2, 3
)
WITH DATA
PRIMARY INDEX (ptid, proc_date);

-- test query
SELECT TOP 10 *
FROM   hvad_team_t.mac_iv_pain_scores;


-----
-- get patient length of stay - visit length in hours
-- three parts

-- first part - get visit id number
--DROP TABLE hvad_team_t.mac_iv_pain_los1;

CREATE MULTISET TABLE hvad_team_t.mac_iv_pain_los1
AS(
    SELECT p.ptid, p.encid, p.proc_code, p.proc_date, e.visitid
    FROM   hvad_team_t.mac_iv_pain_pats p JOIN humed_sv.encounter e ON (p.encid = e.encid)
)
WITH DATA
PRIMARY INDEX (ptid, proc_date);

-- second part - get length of stay
--DROP TABLE hvad_team_t.mac_iv_pain_los2;

CREATE MULTISET TABLE hvad_team_t.mac_iv_pain_los2
AS(
    SELECT o.ptid, o.encid, o.proc_code, o.proc_date,
           (visit_end_date - visit_start_date) * 24 + EXTRACT(hour FROM visit_end_time) - EXTRACT(hour FROM visit_start_time) AS los_hours
    FROM   hvad_team_t.mac_iv_pain_los1 o JOIN humed_sv.visit v ON (o.visitid = v.visitid)
)
WITH DATA
PRIMARY INDEX (ptid, proc_date);

-- third part - remove encounter and aggregate length of stay numbers
--DROP TABLE hvad_team_t.mac_iv_pain_los;

CREATE MULTISET TABLE hvad_team_t.mac_iv_pain_los
AS(
    SELECT   ptid, proc_code, proc_date, AVG(los_hours) AS los_hours
    FROM     hvad_team_t.mac_iv_pain_los2
    GROUP BY 1, 2, 3
)
WITH DATA
PRIMARY INDEX (ptid, proc_date);

-- test query
SELECT TOP 10 *
FROM   hvad_team_t.mac_iv_pain_los;


-----
-- get patient symptoms
-- seven parts

-- first part - get patients with ileus
--DROP TABLE hvad_team_t.mac_iv_pain_symp1;

CREATE MULTISET TABLE hvad_team_t.mac_iv_pain_symp1
AS(
    SELECT p.ptid, proc_code, proc_date, 
           1 AS ileus, 0 AS nausea, 0 AS constipation, 0 AS bleeding, 0 AS vomiting, 0 AS somnolence
    FROM   hvad_team_t.mac_iv_pain_pats p JOIN humed_sv.diagnosis d ON (p.ptid = d.ptid)
    WHERE  diagnosis_cd IN ('K56.7', '5601')
           AND diag_date BETWEEN proc_date AND (proc_date + 5)
)
WITH DATA
PRIMARY INDEX (ptid, proc_date);

-- second part - get patients with nausea
--DROP TABLE hvad_team_t.mac_iv_pain_symp2;

CREATE MULTISET TABLE hvad_team_t.mac_iv_pain_symp2
AS(
    SELECT p.ptid, proc_code, proc_date,
           0 AS ileus, 1 AS nausea, 0 AS constipation, 0 AS bleeding, 0 AS vomiting, 0 AS somnolence
    FROM   hvad_team_t.mac_iv_pain_pats p JOIN humed_sv.diagnosis d ON (p.ptid = d.ptid)
    WHERE  diagnosis_cd IN ('R11.0', '78702')
           AND diag_date BETWEEN proc_date AND (proc_date + 5)
)
WITH DATA
PRIMARY INDEX (ptid, proc_date);

-- third part - get patients with constipation
--DROP TABLE hvad_team_t.mac_iv_pain_symp3;

CREATE MULTISET TABLE hvad_team_t.mac_iv_pain_symp3
AS(
    SELECT p.ptid, proc_code, proc_date,
           0 AS ileus, 0 AS nausea, 1 AS constipation, 0 AS bleeding, 0 AS vomiting, 0 AS somnolence
    FROM   hvad_team_t.mac_iv_pain_pats p JOIN humed_sv.diagnosis d ON (p.ptid = d.ptid)
    WHERE  (diagnosis_cd LIKE 'K59.0%'
            OR diagnosis_cd LIKE '5640%')
           AND diagnosis_cd_type IN ('ICD10', 'ICD9')
           AND diag_date BETWEEN proc_date AND (proc_date + 5)
)
WITH DATA
PRIMARY INDEX (ptid, proc_date);

-- fourth part - get patients with bleeding
--DROP TABLE hvad_team_t.mac_iv_pain_symp4;

CREATE MULTISET TABLE hvad_team_t.mac_iv_pain_symp4
AS(
    SELECT p.ptid, proc_code, proc_date,
           0 AS ileus, 0 AS nausea, 0 AS constipation, 1 AS bleeding, 0 AS vomiting, 0 AS somnolence
    FROM   hvad_team_t.mac_iv_pain_pats p JOIN humed_sv.diagnosis d ON (p.ptid = d.ptid)
    WHERE  (diagnosis_cd = '99811'
            OR diagnosis_cd LIKE 'D78.0%'
            OR diagnosis_cd LIKE 'D78.2%'
            OR diagnosis_cd LIKE 'E36.0%'
            OR diagnosis_cd LIKE 'G97.3%'
            OR diagnosis_cd LIKE 'G97.5%'
            OR diagnosis_cd LIKE 'H59.1%'
            OR diagnosis_cd LIKE 'H59.3%'
            OR diagnosis_cd LIKE 'H95.2%'
            OR diagnosis_cd LIKE 'H95.4%'
            OR diagnosis_cd LIKE 'I97.4%'
            OR diagnosis_cd LIKE 'I97.6%'
            OR diagnosis_cd LIKE 'J95.6%'
            OR diagnosis_cd LIKE 'J95.8%'
            OR diagnosis_cd LIKE 'K91.6%'
            OR diagnosis_cd LIKE 'K91.84%'
            OR diagnosis_cd LIKE 'L76.0%'
            OR diagnosis_cd LIKE 'L76.2%'
            OR diagnosis_cd LIKE 'M96.81%'
            OR diagnosis_cd LIKE 'M96.83%'
            OR diagnosis_cd LIKE 'N99.6%'
            OR diagnosis_cd LIKE 'N99.82%')
           AND diag_date BETWEEN proc_date AND (proc_date + 5)
)
WITH DATA
PRIMARY INDEX (ptid, proc_date);

-- fifth part - get patients with vomiting
--DROP TABLE hvad_team_t.mac_iv_pain_symp5;

CREATE MULTISET TABLE hvad_team_t.mac_iv_pain_symp5
AS(
    SELECT p.ptid, proc_code, proc_date,
           0 AS ileus, 0 AS nausea, 0 AS constipation, 0 AS bleeding, 1 AS vomiting, 0 AS somnolence
    FROM   hvad_team_t.mac_iv_pain_pats p JOIN humed_sv.diagnosis d ON (p.ptid = d.ptid)
    WHERE  (diagnosis_cd LIKE 'R11.1%'
            OR diagnosis_cd IN ('5362', '78703', '07882', '56987', '78704') )
           AND diag_date BETWEEN proc_date AND (proc_date + 5)
)
WITH DATA
PRIMARY INDEX (ptid, proc_date);

-- sixth part - get patients with somnolence
--DROP TABLE hvad_team_t.mac_iv_pain_symp6;

CREATE MULTISET TABLE hvad_team_t.mac_iv_pain_symp6
AS(
    SELECT p.ptid, proc_code, proc_date,
           0 AS ileus, 0 AS nausea, 0 AS constipation, 0 AS bleeding, 0 AS vomiting, 1 AS somnolence
    FROM   hvad_team_t.mac_iv_pain_pats p JOIN humed_sv.diagnosis d ON (p.ptid = d.ptid)
    WHERE  diagnosis_cd IN ('R40.0', '78009')
           AND diag_date BETWEEN proc_date AND (proc_date + 5)
)
WITH DATA
PRIMARY INDEX (ptid, proc_date);

-- seventh part - join patient symptoms together
--DROP TABLE hvad_team_t.mac_iv_pain_symp;

CREATE MULTISET TABLE hvad_team_t.mac_iv_pain_symp
AS(
    SELECT   ptid, proc_code, proc_date, 
             SUM(ileus) AS ileus, SUM(nausea) AS nausea, SUM(constipation) AS constipation,
             SUM(bleeding) AS bleeding, SUM(vomiting) AS vomiting, SUM(somnolence) AS somnolence
    FROM     (SELECT *
              FROM   hvad_team_t.mac_iv_pain_symp1
              
              UNION
              
              SELECT *
              FROM   hvad_team_t.mac_iv_pain_symp2
              
              UNION
              
              SELECT *
              FROM   hvad_team_t.mac_iv_pain_symp3
              
              UNION
              
              SELECT *
              FROM   hvad_team_t.mac_iv_pain_symp4
              
              UNION
              
              SELECT *
              FROM   hvad_team_t.mac_iv_pain_symp5
              
              UNION
              
              SELECT *
              FROM   hvad_team_t.mac_iv_pain_symp6) o
    GROUP BY 1, 2, 3
)
WITH DATA
PRIMARY INDEX (ptid, proc_date);

-- test query
SELECT TOP 10 *
FROM   hvad_team_t.mac_iv_pain_symp;


-----
-- get patient lab information
-- four parts

-- first part - get info on eGFR lab results
--DROP TABLE hvad_team_t.mac_iv_pain_labs1;

CREATE MULTISET TABLE hvad_team_t.mac_iv_pain_labs1
AS(
    SELECT DISTINCT p.ptid, p.proc_code, p.proc_date,
           test_name, test_result
    FROM   hvad_team_t.mac_iv_pain_pats p JOIN humed_sv.labs l ON (p.ptid = l.ptid)
    WHERE  test_name IN ('eGFR', 'Creatinine clearance', 'Aspartate aminotransferase (AST)',
                         'Alanine aminotransferase (ALT)')
           AND collected_date BETWEEN proc_date AND (proc_date + 5)
           AND test_result IS NOT NULL
)
WITH DATA
PRIMARY INDEX (ptid, proc_date);

-- second part - drop rows where lab results aren't numbers
DELETE FROM hvad_team_t.mac_iv_pain_labs1
WHERE REGEXP_SIMILAR(test_result, '[0-9.]+') = 0
      OR REGEXP_SIMILAR(test_result, '\.+') = 1;

-- third part - pivot results
--DROP TABLE hvad_team_t.mac_iv_pain_labs2;

CREATE MULTISET TABLE hvad_team_t.mac_iv_pain_labs2
AS(
    SELECT DISTINCT ptid, proc_code, proc_date,
           CASE WHEN test_name = 'eGFR' THEN test_result
           END AS eGFR_result,
           CASE WHEN test_name = 'Creatinine clearance' THEN test_result
           END AS creatinine_clearance_result,
           CASE WHEN test_name = 'Aspartate aminotransferase (AST)' THEN test_result
           END AS ast_result,
           CASE WHEN test_name = 'Alanine aminotransferase (ALT)' THEN test_result
           END AS alt_result
    FROM   (SELECT ptid, proc_code, proc_date, test_name, 
                   CAST(test_result AS decimal(9, 3)) AS test_result
            FROM   hvad_team_t.mac_iv_pain_labs1) o
)
WITH DATA
PRIMARY INDEX (ptid, proc_date);

-- fourth part - average lab results for each patient
--DROP TABLE hvad_team_t.mac_iv_pain_labs;

CREATE MULTISET TABLE hvad_team_t.mac_iv_pain_labs
AS(
    SELECT   DISTINCT ptid, proc_code, proc_date,
             AVG(eGFR_result) AS avg_eGFR_result,
             AVG(creatinine_clearance_result) AS avg_creatinine_clearance_result,
             AVG(ast_result) AS avg_ast_result,
             AVG(alt_result) AS avg_alt_result
    FROM     hvad_team_t.mac_iv_pain_labs2
    GROUP BY 1, 2, 3
)
WITH DATA
PRIMARY INDEX (ptid, proc_date);

-- test query
SELECT TOP 10 *
FROM   hvad_team_t.mac_iv_pain_labs;


-----
-- join all information together
--DROP TABLE hvad_team_t.mac_iv_pain;

CREATE MULTISET TABLE hvad_team_t.mac_iv_pain
AS(
    SELECT DISTINCT p.ptid, p.proc_code, p.proc_date, p.proc_grouping,
           NVL(m.caldolor, 0) AS caldolor, NVL(m.fentanyl, 0) AS fentanyl, 
           NVL(m.ketorolac, 0) AS ketorolac, NVL(m.ofirmev, 0) AS ofirmev,
           NVL(m.hydromorphone, 0) AS hydromorphone, 
           NVL(m.morphine, 0) AS morphine, NVL(m.morphine_equiv, 0) AS morphine_equiv,
           a.avg_pain, a.no_pain, a.mild_pain, a.moderate_pain, a.severe_pain,
           l.los_hours,
           NVL(s.ileus, 0) AS ileus, NVL(s.nausea, 0) AS nausea, 
           NVL(s.constipation, 0) AS constipation, NVL(s.bleeding, 0) AS bleeding,
           NVL(s.vomiting, 0) AS vomiting, NVL(s.somnolence, 0) AS somnolence,
           b.avg_eGFR_result, b.avg_creatinine_clearance_result, 
           b.avg_ast_result, b.avg_alt_result
    FROM   hvad_team_t.mac_iv_pain_pats p LEFT JOIN hvad_team_t.mac_iv_pain_meds m   ON (p.ptid = m.ptid
                                                                                         AND p.proc_code = m.proc_code 
                                                                                         AND p.proc_date = m.proc_date)
                                          LEFT JOIN hvad_team_t.mac_iv_pain_scores a ON (p.ptid = a.ptid
                                                                                         AND p.proc_code = a.proc_code 
                                                                                         AND p.proc_date = a.proc_date)
                                          LEFT JOIN hvad_team_t.mac_iv_pain_los l    ON (p.ptid = l.ptid
                                                                                         AND p.proc_code = l.proc_code 
                                                                                         AND p.proc_date = l.proc_date)
                                          LEFT JOIN hvad_team_t.mac_iv_pain_symp s   ON (p.ptid = s.ptid
                                                                                         AND p.proc_code = s.proc_code 
                                                                                         AND p.proc_date = s.proc_date)
                                          LEFT JOIN hvad_team_t.mac_iv_pain_labs b   ON (p.ptid = b.ptid
                                                                                         AND p.proc_code = b.proc_code
                                                                                         AND p.proc_date = b.proc_date)
)
WITH DATA
PRIMARY INDEX (ptid, proc_date);

-- test query
SELECT TOP 10 *
FROM   hvad_team_t.mac_iv_pain;


-----
-- drop intermediate tables
DROP TABLE hvad_team_t.mac_iv_pain_pats1;
DROP TABLE hvad_team_t.mac_iv_pain_pats2;
DROP TABLE hvad_team_t.mac_iv_pain_pats3;
DROP TABLE hvad_team_t.mac_iv_pain_pats4;
DROP TABLE hvad_team_t.mac_iv_pain_pats5;
DROP TABLE hvad_team_t.mac_iv_pain_pats6;
DROP TABLE hvad_team_t.mac_iv_pain_pats7;
DROP TABLE hvad_team_t.mac_iv_pain_pats8;
DROP TABLE hvad_team_t.mac_iv_pain_pats9;
DROP TABLE hvad_team_t.mac_iv_pain_pats10;
DROP TABLE hvad_team_t.mac_iv_pain_pats11;
DROP TABLE hvad_team_t.mac_iv_pain_pats12;
DROP TABLE hvad_team_t.mac_iv_pain_pats13;
DROP TABLE hvad_team_t.mac_iv_pain_pats14;
DROP TABLE hvad_team_t.mac_iv_pain_pats15;
DROP TABLE hvad_team_t.mac_iv_pain_pats16;
DROP TABLE hvad_team_t.mac_iv_pain_pats17;
DROP TABLE hvad_team_t.mac_iv_pain_pats18;
DROP TABLE hvad_team_t.mac_iv_pain_pats19;
DROP TABLE hvad_team_t.mac_iv_pain_pats20;
DROP TABLE hvad_team_t.mac_iv_pain_pats21;
DROP TABLE hvad_team_t.mac_iv_pain_meds1;
DROP TABLE hvad_team_t.mac_iv_pain_meds2;
DROP TABLE hvad_team_t.mac_iv_pain_meds3;
DROP TABLE hvad_team_t.mac_iv_pain_meds4;
DROP TABLE hvad_team_t.mac_iv_pain_meds5;
DROP TABLE hvad_team_t.mac_iv_pain_meds6;
DROP TABLE hvad_team_t.mac_iv_pain_meds7;
DROP TABLE hvad_team_t.mac_iv_pain_scores1;
DROP TABLE hvad_team_t.mac_iv_pain_scores2;
DROP TABLE hvad_team_t.mac_iv_pain_los1;
DROP TABLE hvad_team_t.mac_iv_pain_los2;
DROP TABLE hvad_team_t.mac_iv_pain_symp1;
DROP TABLE hvad_team_t.mac_iv_pain_symp2;
DROP TABLE hvad_team_t.mac_iv_pain_symp3;
DROP TABLE hvad_team_t.mac_iv_pain_symp4;
DROP TABLE hvad_team_t.mac_iv_pain_symp5;
DROP TABLE hvad_team_t.mac_iv_pain_symp6;
DROP TABLE hvad_team_t.mac_iv_pain_labs1;
DROP TABLE hvad_team_t.mac_iv_pain_labs2;
DROP TABLE hvad_team_t.mac_iv_pain_pats;
DROP TABLE hvad_team_t.mac_iv_pain_meds;
DROP TABLE hvad_team_t.mac_iv_pain_scores;
DROP TABLE hvad_team_t.mac_iv_pain_los;
DROP TABLE hvad_team_t.mac_iv_pain_symp;
DROP TABLE hvad_team_t.mac_iv_pain_labs;



-----
-- code sources
-- hip replacement: http://www.aaos.org/news/aaosnow/feb13/managing7_t1.pdf
-- shoulder surgery: http://faculty.washington.edu/alexbert/Shoulder/Codes.htm, common procedures