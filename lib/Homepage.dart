import 'package:flutter/material.dart';

import 'package:practical_exam_one/DeatilPage.dart';
import 'package:textfield_search/textfield_search.dart';

class Homepage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Homepagestate();
  }
}

List<String> Posters = [
  'https://m.media-amazon.com/images/M/MV5BYzRjMTY1MzktZGRmNi00YjM0LWJkOTUtMmI0ZGEyZjdkOGFhXkEyXkFqcGdeQXVyOTAzMTc2MjA@._V1_SX300.jpg',
  'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.imdb.com%2Ftitle%2Ftt7721800%2F&psig=AOvVaw1DBUAfErVIHJufyH12HLG6&ust=1700919947880000&source=images&cd=vfe&ved=0CBIQjRxqFwoTCLDft9zi3IIDFQAAAAAdAAAAABAE',
  'https://www.google.com/imgres?imgurl=https%3A%2F%2Fassets-in.bmscdn.com%2Fiedb%2Fmovies%2Fimages%2Fmobile%2Fthumbnail%2Fxlarge%2Ftiger-zinda-hai-et00046433-30-10-2020-05-09-49.jpg&tbnid=WGCrDobHEr1mFM&vet=12ahUKEwimh_zy4tyCAxX0cmwGHalyDO0QMygCegQIARBx..i&imgrefurl=https%3A%2F%2Fin.bookmyshow.com%2Fmovies%2Ftiger-zinda-hai%2FET00046433&docid=XQQM0FFtI3wixM&w=278&h=417&q=tiger%20zinda%20hai&ved=2ahUKEwimh_zy4tyCAxX0cmwGHalyDO0QMygCegQIARBx',
  'https://www.google.com/imgres?imgurl=https%3A%2F%2Fassets.gadgets360cdn.com%2Fpricee%2Fassets%2Fproduct%2F202310%2Ftiger_31_1698301609.jpg&tbnid=FhswDEV65k6EIM&vet=12ahUKEwj0mt6A49yCAxWypukKHRu8BisQMygEegQIARB1..i&imgrefurl=https%3A%2F%2Fwww.gadgets360.com%2Fentertainment%2Ftiger-3-movie-106891&docid=csD_kWuAI7nEaM&w=1000&h=1400&q=tiger%203&ved=2ahUKEwj0mt6A49yCAxWypukKHRu8BisQMygEegQIARB1',
  'https://www.google.com/imgres?imgurl=https%3A%2F%2Fupload.wikimedia.org%2Fwikipedia%2Fen%2Ff%2Ff1%2FDhoom_3_Film_Poster.jpg&tbnid=tm6gOeb_UR2gtM&vet=12ahUKEwiClpSL49yCAxXT5TgGHTqZCFkQMygAegQIARBu..i&imgrefurl=https%3A%2F%2Fen.wikipedia.org%2Fwiki%2FDhoom_3&docid=XgeT5PU6kW2otM&w=237&h=420&q=Dhoom3&ved=2ahUKEwiClpSL49yCAxXT5TgGHTqZCFkQMygAegQIARBu',
  'https://www.google.com/imgres?imgurl=https%3A%2F%2Fm.media-amazon.com%2Fimages%2FM%2FMV5BZGFmMjM5OWMtZTRiNC00ODhlLThlYTItYTcyZDMyYmMyYjFjXkEyXkFqcGdeQXVyNDUzOTQ5MjY%40._V1_.jpg&tbnid=BxONF5QrZQp6JM&vet=12ahUKEwjKxoGY49yCAxVqpGMGHW-9D28QMygAegQIARBs..i&imgrefurl=https%3A%2F%2Fwww.imdb.com%2Ftitle%2Ftt1562872%2F&docid=0j29uUV5JCIP3M&w=1418&h=2048&q=zindgi%20na%20milegi%20dobara&ved=2ahUKEwjKxoGY49yCAxVqpGMGHW-9D28QMygAegQIARBs',
  'https://www.google.com/imgres?imgurl=https%3A%2F%2Fresizing.flixster.com%2F-XZAfHZM39UwaGJIFWKAE8fS0ak%3D%2Fv3%2Ft%2Fassets%2Fp176589_p_v10_ac.jpg&tbnid=LEiRd8lxfpoL1M&vet=12ahUKEwi6gKWn49yCAxWT2jgGHQm1BOAQMygBegQIARBx..i&imgrefurl=https%3A%2F%2Fwww.rottentomatoes.com%2Fm%2F10009220-welcome&docid=zgdxxHEUdWy6uM&w=1536&h=2048&q=Welcome%20Movie&ved=2ahUKEwi6gKWn49yCAxWT2jgGHQm1BOAQMygBegQIARBx',
  'https://www.google.com/imgres?imgurl=https%3A%2F%2Fm.media-amazon.com%2Fimages%2FM%2FMV5BNDI3M2E5ZGQtZjVlNS00NzFhLTg0NTAtZDZmOTBjODg3ZDQ1XkEyXkFqcGdeQXVyNzkxOTEyMjI%40._V1_.jpg&tbnid=o8W6Egf34NT_9M&vet=12ahUKEwi0o8S649yCAxUk7jgGHVV-D58QMygAegQIARBp..i&imgrefurl=https%3A%2F%2Fwww.imdb.com%2Ftitle%2Ftt9531772%2F&docid=M8rgIIURvs_pNM&w=1080&h=1920&q=Sooryvanshi%20Movie&ved=2ahUKEwi0o8S649yCAxUk7jgGHVV-D58QMygAegQIARBp',
  'https://www.google.com/imgres?imgurl=https%3A%2F%2Fupload.wikimedia.org%2Fwikipedia%2Fen%2Ff%2Ff9%2FJab_Tak_Hai_Jaan_Poster.jpg&tbnid=5BGNuyHqSxUCVM&vet=12ahUKEwij6uXK49yCAxWw2zgGHTfjCM4QMygAegQIARBs..i&imgrefurl=https%3A%2F%2Fen.wikipedia.org%2Fwiki%2FJab_Tak_Hai_Jaan&docid=3iEPQ49rpUj6QM&w=250&h=398&q=jab%20tak%20hai%20jaan&ved=2ahUKEwij6uXK49yCAxWw2zgGHTfjCM4QMygAegQIARBs',
  'https://www.google.com/imgres?imgurl=https%3A%2F%2Fupload.wikimedia.org%2Fwikipedia%2Fen%2F9%2F90%2FBang_Bang_%25282014_Film%2529.jpg&tbnid=E3GI-CW4xgR5NM&vet=12ahUKEwispLPX49yCAxWyZmwGHW18C-0QMygAegQIARBt..i&imgrefurl=https%3A%2F%2Fen.wikipedia.org%2Fwiki%2FBang_Bang!&docid=c4sB6CIo-rar_M&w=263&h=380&q=bang%20bang&ved=2ahUKEwispLPX49yCAxWyZmwGHW18C-0QMygAegQIARBt',
  'https://www.google.com/imgres?imgurl=https%3A%2F%2Fupload.wikimedia.org%2Fwikipedia%2Fen%2F2%2F2b%2FDedanadan.jpg&tbnid=cTZUC0-5cJobHM&vet=12ahUKEwifoZjh49yCAxU3TmwGHbuvB4QQMygAegQIARBs..i&imgrefurl=https%3A%2F%2Fen.wikipedia.org%2Fwiki%2FDe_Dana_Dan&docid=sGEqK7DOlCe_oM&w=261&h=382&q=De%20Dana%20Dan&ved=2ahUKEwifoZjh49yCAxU3TmwGHbuvB4QQMygAegQIARBs',
  'https://www.google.com/imgres?imgurl=https%3A%2F%2Fresizing.flixster.com%2Febz_cRqzi4xuNZ-w4kOD3jLCvTg%3D%2Fems.cHJkLWVtcy1hc3NldHMvbW92aWVzL2RiOWViM2FhLWQ0Y2YtNGVjMi04N2M5LWE1YWVjODk3ZTgzNS53ZWJw&tbnid=4A8WtwrcP2jCDM&vet=12ahUKEwiws9zu49yCAxXo3DgGHeqbBCEQMygBegQIARBv..i&imgrefurl=https%3A%2F%2Fwww.rottentomatoes.com%2Fm%2Fzero_2018&docid=2Re4yUAQb7xPcM&w=2354&h=3400&q=zero%20movie&ved=2ahUKEwiws9zu49yCAxXo3DgGHeqbBCEQMygBegQIARBv',
  'https://www.google.com/imgres?imgurl=https%3A%2F%2Fupload.wikimedia.org%2Fwikipedia%2Fen%2F6%2F67%2FAjab_Prem_Ki_Ghazab_Kahani.jpg&tbnid=MeNGQVoeE-s_VM&vet=12ahUKEwjE3qP549yCAxWn5TgGHZ_PCN0QMygAegQIARBt..i&imgrefurl=https%3A%2F%2Fen.wikipedia.org%2Fwiki%2FAjab_Prem_Ki_Ghazab_Kahani&docid=Yj6COX4UndACwM&w=265&h=374&q=Ajab%20Prem%20Ki%20Ghazab%20Kahani&ved=2ahUKEwjE3qP549yCAxWn5TgGHZ_PCN0QMygAegQIARBt',
  'https://www.google.com/imgres?imgurl=https%3A%2F%2Fupload.wikimedia.org%2Fwikipedia%2Fen%2Fthumb%2Fd%2Fd1%2FThugs_of_Hindostan_poster.jpg%2F220px-Thugs_of_Hindostan_poster.jpg&tbnid=JS_jwsOqPu06qM&vet=12ahUKEwjsx7KD5NyCAxXxbmwGHU7DAusQMygAegQIARAs..i&imgrefurl=https%3A%2F%2Fen.wikipedia.org%2Fwiki%2FThugs_of_Hindostan&docid=NzzdmIT704W82M&w=220&h=302&q=Thugs%20of%20Hindostan&ved=2ahUKEwjsx7KD5NyCAxXxbmwGHU7DAusQMygAegQIARAs',
  'https://www.google.com/imgres?imgurl=https%3A%2F%2Fupload.wikimedia.org%2Fwikipedia%2Fen%2F8%2F82%2FTees_Maar_Khan_%25282010_film%2529_poster.jpg&tbnid=CTvM2FPYGT6OBM&vet=12ahUKEwjLzfOO5NyCAxXCamwGHSQED24QMygAegQIARBv..i&imgrefurl=https%3A%2F%2Fen.wikipedia.org%2Fwiki%2FTees_Maar_Khan_(2010_film)&docid=jPWY5IRnYbfwwM&w=250&h=362&q=Tees%20Maar%20Khann&ved=2ahUKEwjLzfOO5NyCAxXCamwGHSQED24QMygAegQIARBv',
  'https://www.google.com/imgres?imgurl=https%3A%2F%2Fupload.wikimedia.org%2Fwikipedia%2Fen%2F7%2F78%2FFitoor_Hindi_Film_Poster.jpg&tbnid=T9WB1Sx9iiBpXM&vet=12ahUKEwiY6L6Y5NyCAxXCvmMGHQE3AQ8QMygAegQIARBt..i&imgrefurl=https%3A%2F%2Fen.wikipedia.org%2Fwiki%2FFitoor&docid=TWRVDQkUCFkYJM&w=249&h=360&q=Fitoor&ved=2ahUKEwiY6L6Y5NyCAxXCvmMGHQE3AQ8QMygAegQIARBt',
  'https://www.google.com/imgres?imgurl=https%3A%2F%2Fupload.wikimedia.org%2Fwikipedia%2Fen%2Fa%2Faa%2FKatrina_Kaif%2527s_Baar_Baar_Dekho.jpg&tbnid=u5fjR4WcOqDm7M&vet=12ahUKEwi2_OOk5NyCAxUxcmwGHQ0JDLsQMygAegQIARBt..i&imgrefurl=https%3A%2F%2Fen.wikipedia.org%2Fwiki%2FBaar_Baar_Dekho&docid=WwA74bO6TLee7M&w=258&h=387&q=Baar%20Baar%20Dekho&ved=2ahUKEwi2_OOk5NyCAxUxcmwGHQ0JDLsQMygAegQIARBt',
  'https://www.google.com/imgres?imgurl=https%3A%2F%2Fm.media-amazon.com%2Fimages%2FM%2FMV5BODE2Njk4MTU4NV5BMl5BanBnXkFtZTcwNjU4OTc1Ng%40%40._V1_.jpg&tbnid=aEFho275A7ploM&vet=12ahUKEwiTz6Kv5NyCAxWycmwGHcY3DbgQMygAegQIARBt..i&imgrefurl=https%3A%2F%2Fwww.imdb.com%2Ftitle%2Ftt1740710%2F&docid=qdmOqfeepjd32M&w=1516&h=2048&q=Mere%20Brother%20Ki%20Dulhan&ved=2ahUKEwiTz6Kv5NyCAxWycmwGHcY3DbgQMygAegQIARBt',
  'https://www.google.com/imgres?imgurl=https%3A%2F%2Fm.media-amazon.com%2Fimages%2FM%2FMV5BNTYzMjcwNGEtZGUzNi00YTMwLTkzZGMtMzE2MzhkZTFlYmFhXkEyXkFqcGdeQXVyODE5NzE3OTE%40._V1_.jpg&tbnid=eaMPap_MNb_duM&vet=12ahUKEwikiJe65NyCAxVhfGwGHa5rCLYQMygBegQIARBr..i&imgrefurl=https%3A%2F%2Fwww.imdb.com%2Ftitle%2Ftt12740760%2F&docid=MgSB4MJnKfJZcM&w=1125&h=1406&q=Phone%20Bhoot&ved=2ahUKEwikiJe65NyCAxVhfGwGHa5rCLYQMygBegQIARBr',
  'https://www.google.com/imgres?imgurl=https%3A%2F%2Fupload.wikimedia.org%2Fwikipedia%2Fen%2Fthumb%2F4%2F43%2FPartner-01.jpg%2F220px-Partner-01.jpg&tbnid=NeRR-l3XUUhpgM&vet=12ahUKEwi-0cLD5NyCAxVHSWwGHfswA80QMygAegQIARBt..i&imgrefurl=https%3A%2F%2Fen.wikipedia.org%2Fwiki%2FPartner_(2007_film)&docid=El2sNyb5zzhWqM&w=220&h=318&q=Partner&ved=2ahUKEwi-0cLD5NyCAxVHSWwGHfswA80QMygAegQIARBt',
  'https://www.google.com/imgres?imgurl=https%3A%2F%2Fm.media-amazon.com%2Fimages%2FM%2FMV5BNDhmMDUzOTctOWEwYy00ZDNmLTgyOTEtOWVkM2U3ZTYyYzdkXkEyXkFqcGdeQXVyMTA4NjE0NjEy._V1_.jpg&tbnid=_rFwoCcQ_FhUWM&vet=12ahUKEwjH29TR5NyCAxUBpukKHVc9AsgQMygCegQIARBx..i&imgrefurl=https%3A%2F%2Fwww.imdb.com%2Ftitle%2Ftt3469244%2F&docid=3icjWze85HAvsM&w=780&h=1170&q=Phantom&ved=2ahUKEwjH29TR5NyCAxUBpukKHVc9AsgQMygCegQIARBx',
  'https://www.google.com/imgres?imgurl=https%3A%2F%2Fupload.wikimedia.org%2Fwikipedia%2Fen%2Fthumb%2F1%2F14%2FRaajneeti_poster.jpg%2F220px-Raajneeti_poster.jpg&tbnid=5sZwWq2djFe2VM&vet=12ahUKEwjZ9ZHi5NyCAxXcRmcHHa9mDtIQMygAegQIARBf..i&imgrefurl=https%3A%2F%2Fen.wikipedia.org%2Fwiki%2FRaajneeti&docid=ZQEEqxWFc_cG2M&w=220&h=316&q=Raajneeti&ved=2ahUKEwjZ9ZHi5NyCAxXcRmcHHa9mDtIQMygAegQIARBf',
  'https://www.google.com/imgres?imgurl=https%3A%2F%2Fm.media-amazon.com%2Fimages%2FS%2Fpv-target-images%2F9d9fdbd694393c7355c749e17d6616621893c5072c6548f5f5e9c9073e781f24.jpg&tbnid=czw5lNbbn50C7M&vet=12ahUKEwigtpDw5NyCAxUCb2wGHUoAB70QMygBegQIARBv..i&imgrefurl=https%3A%2F%2Fwww.primevideo.com%2Fdetail%2FNamastey-London%2F0STAVZXRN05ZKG46H46GDB4Y9E&docid=bNCEPZUTLNhQJM&w=1200&h=1600&q=Namastey%20London&ved=2ahUKEwigtpDw5NyCAxUCb2wGHUoAB70QMygBegQIARBv',
  'https://www.google.com/imgres?imgurl=https%3A%2F%2Fm.media-amazon.com%2Fimages%2FS%2Fpv-target-images%2F98ff99e6bb6cda4a1677860669779d38226882f47e18f00a64b382e3475fa2eb.jpg&tbnid=Stpsu-aZ_5g-YM&vet=12ahUKEwjp65T-5NyCAxWXS2wGHUkuAScQMygBegQIARBt..i&imgrefurl=https%3A%2F%2Fwww.primevideo.com%2Fdetail%2FMaine-Pyaar-Kyun-Kiya%2F0FFO336Q46BB8977D36M4L7HSQ&docid=vSpD-taoEnE7CM&w=1200&h=1600&q=Maine%20Pyaar%20Kyun%20Kiya&ved=2ahUKEwjp65T-5NyCAxWXS2wGHUkuAScQMygBegQIARBt',
  'https://www.google.com/imgres?imgurl=https%3A%2F%2Fupload.wikimedia.org%2Fwikipedia%2Fen%2F9%2F90%2FRace_%25282008_film%2529_poster.jpg&tbnid=jeIMuhQtg5YX4M&vet=12ahUKEwiF8JeN5dyCAxUSZmwGHaXDCacQMygAegQIARBt..i&imgrefurl=https%3A%2F%2Fen.wikipedia.org%2Fwiki%2FRace_(2008_film)&docid=Xs0Gjj5dru_J8M&w=268&h=390&q=race%20movie&ved=2ahUKEwiF8JeN5dyCAxUSZmwGHaXDCacQMygAegQIARBt',
  'https://www.google.com/imgres?imgurl=https%3A%2F%2Fupload.wikimedia.org%2Fwikipedia%2Fen%2F6%2F62%2FHumkodeewanakargaye.jpg&tbnid=Ngmb8N7ItIzGvM&vet=12ahUKEwignLeY5dyCAxUDoekKHUKKAAkQMygAegQIARBs..i&imgrefurl=https%3A%2F%2Fen.wikipedia.org%2Fwiki%2FHumko_Deewana_Kar_Gaye&docid=sqt5hTonR1a3XM&w=265&h=377&q=Humko%20Deewana%20Kar%20Gaye&ved=2ahUKEwignLeY5dyCAxUDoekKHUKKAAkQMygAegQIARBs',
  'https://www.google.com/imgres?imgurl=https%3A%2F%2Fbollywoodmovieposters.com%2Fwp-content%2Fuploads%2F2021%2F02%2Fsarkar-movie-poster-amitabh.jpg&tbnid=NjkA8z35s_S5xM&vet=12ahUKEwjruuat5dyCAxW7Z2wGHYT-CBUQMygBegQIARBJ..i&imgrefurl=https%3A%2F%2Fbollywoodmovieposters.com%2Fshop%2Fold-indian-movie-posters-for-sale%2Fsarkar%2F&docid=OOlxUP5vlAEi1M&w=595&h=800&q=Sarkar%20Katrina%20poster%20&ved=2ahUKEwjruuat5dyCAxW7Z2wGHYT-CBUQMygBegQIARBJ',
  'https://www.google.com/imgres?imgurl=https%3A%2F%2Fupload.wikimedia.org%2Fwikipedia%2Fen%2F5%2F50%2FYuvvraaj.jpg&tbnid=H6oUvUw4AF1GcM&vet=12ahUKEwj2w4G65dyCAxX45TgGHYVEBNoQMygAegQIARBl..i&imgrefurl=https%3A%2F%2Fen.wikipedia.org%2Fwiki%2FYuvvraaj&docid=7ipVspnw1T72VM&w=262&h=380&q=Yuvvraaj&ved=2ahUKEwj2w4G65dyCAxX45TgGHYVEBNoQMygAegQIARBl',
  'https://www.google.com/imgres?imgurl=https%3A%2F%2Fupload.wikimedia.org%2Fwikipedia%2Fen%2F6%2F65%2FNew-York-movie-poster.jpg&tbnid=XGtvZC68QhBeoM&vet=12ahUKEwjZ8t3J5dyCAxUhm2MGHbKfAzQQMygAegQIARBt..i&imgrefurl=https%3A%2F%2Fen.wikipedia.org%2Fwiki%2FNew_York_(2009_film)&docid=EJb2v2-Bvi02hM&w=277&h=379&q=new%20york%20movie&ved=2ahUKEwjZ8t3J5dyCAxUhm2MGHbKfAzQQMygAegQIARBt',
  'https://www.google.com/imgres?imgurl=https%3A%2F%2Fm.media-amazon.com%2Fimages%2FM%2FMV5BNDM3ODBjZWEtZjUzMi00NzE0LWE3ZmYtZjc2MTNkMjJjNTcyXkEyXkFqcGdeQXVyMzExODEzNDA%40._V1_.jpg&tbnid=7a3S7CcuZLJ93M&vet=12ahUKEwiunKrV5dyCAxVX3DgGHdTdB9oQMygAegQIARBM..i&imgrefurl=https%3A%2F%2Fwww.imdb.com%2Ftitle%2Ftt0066850%2F&docid=apZXnT7fgVmDjM&w=736&h=994&q=Blue%20movie&ved=2ahUKEwiunKrV5dyCAxVX3DgGHdTdB9oQMygAegQIARBM',
  'https://www.google.com/imgres?imgurl=https%3A%2F%2Fupload.wikimedia.org%2Fwikipedia%2Fen%2Fthumb%2Fb%2Fb6%2FTu_Jhoothi_Main_Makkaar_Title_Card.jpeg%2F220px-Tu_Jhoothi_Main_Makkaar_Title_Card.jpeg&tbnid=4EBe8KFb0OHOCM&vet=12ahUKEwjd--Hh5dyCAxWBmmMGHRNTBDkQMygAegQIARBE..i&imgrefurl=https%3A%2F%2Fen.wikipedia.org%2Fwiki%2FTu_Jhoothi_Main_Makkaar&docid=Wvw1kEdntUecTM&w=220&h=270&q=Tu%20Jhoothi%20Main%20Makkaar&ved=2ahUKEwjd--Hh5dyCAxWBmmMGHRNTBDkQMygAegQIARBE',
  'https://www.google.com/imgres?imgurl=https%3A%2F%2Fupload.wikimedia.org%2Fwikipedia%2Fen%2Ff%2Ff3%2FAashiqui_2_%2528Poster%2529.jpg&tbnid=JWT2SDZEGgz-ZM&vet=12ahUKEwjSn4Xx5dyCAxWWcmwGHWQ_BqQQMygBegQIARBv..i&imgrefurl=https%3A%2F%2Fen.wikipedia.org%2Fwiki%2FAashiqui_2&docid=5TFsJpLf8VbrnM&w=220&h=316&q=Aashiqui%202&ved=2ahUKEwjSn4Xx5dyCAxWWcmwGHWQ_BqQQMygBegQIARBv',
  'https://www.google.com/imgres?imgurl=https%3A%2F%2Fstatic.toiimg.com%2Fphoto%2F61268214.cms&tbnid=wKacheolMUaGQM&vet=12ahUKEwjf5YuC5tyCAxXySGwGHbWVD64QMygCegQIARBx..i&imgrefurl=https%3A%2F%2Fm.timesofindia.com%2Fentertainment%2Fhindi%2Fmovie-details%2Fbaaghi%2Fmovieshow%2F61268241.cms&docid=xDc_y0K2Re39pM&w=650&h=950&q=Baaghi&ved=2ahUKEwjf5YuC5tyCAxXySGwGHbWVD64QMygCegQIARBx',
  'https://www.google.com/imgres?imgurl=https%3A%2F%2Fm.media-amazon.com%2Fimages%2FM%2FMV5BNzU0ZmFkMWUtZDc4MC00OWVmLWI0MjEtZWZjMzRkZWE4MjgyXkEyXkFqcGdeQXVyMTA4NjE0NjEy._V1_.jpg&tbnid=9BhKHPmQmDzeqM&vet=12ahUKEwi0hL2M5tyCAxURfWwGHei4AHcQMygAegQIARBt..i&imgrefurl=https%3A%2F%2Fwww.imdb.com%2Ftitle%2Ftt6836936%2F&docid=T8KVfHj0azvIcM&w=612&h=918&q=Saaho&ved=2ahUKEwi0hL2M5tyCAxURfWwGHei4AHcQMygAegQIARBt',
  'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.imdb.com%2Ftitle%2Ftt5474042%2F&psig=AOvVaw0GwjiCLks3j-t4rfqaq1g_&ust=1700920880726000&source=images&cd=vfe&opi=89978449&ved=0CBIQjRxqFwoTCIDU5Zrm3IIDFQAAAAAdAAAAABAD',
  'https://www.google.com/imgres?imgurl=https%3A%2F%2Fupload.wikimedia.org%2Fwikipedia%2Fen%2Fthumb%2F4%2F4f%2FStree_-_2018_Movie_Poster.jpg%2F220px-Stree_-_2018_Movie_Poster.jpg&tbnid=s-HZX_fQUELMLM&vet=12ahUKEwju59yj5tyCAxVa2zgGHXQ7CeUQMygAegQIARBt..i&imgrefurl=https%3A%2F%2Fen.wikipedia.org%2Fwiki%2FStree_(2018_film)&docid=UqEtI9fspucPiM&w=220&h=318&q=Stree&ved=2ahUKEwju59yj5tyCAxVa2zgGHXQ7CeUQMygAegQIARBt',
  'https://www.google.com/imgres?imgurl=https%3A%2F%2Fm.media-amazon.com%2Fimages%2FM%2FMV5BZTAxNWE2MDItZWFlNS00MWM1LWI1ZjQtN2I5NDBhNWYzZjNhXkEyXkFqcGdeQXVyODE5NzE3OTE%40._V1_.jpg&tbnid=LaZFpVozbO9f3M&vet=12ahUKEwiy5LSu5tyCAxVgQ2cHHRykA8EQMygAegQIARBt..i&imgrefurl=https%3A%2F%2Fwww.imdb.com%2Ftitle%2Ftt8366590%2F&docid=ugTzPIazX1-R1M&w=1731&h=2500&q=Baaghi%203&ved=2ahUKEwiy5LSu5tyCAxVgQ2cHHRykA8EQMygAegQIARBt',
  'https://www.google.com/imgres?imgurl=https%3A%2F%2Fupload.wikimedia.org%2Fwikipedia%2Fen%2Fthumb%2F3%2F3d%2FChhichhore_Poster.jpg%2F220px-Chhichhore_Poster.jpg&tbnid=7-rvB4ikTCjFYM&vet=12ahUKEwid-Zm65tyCAxWUoekKHb7OAWUQMygAegQIARBt..i&imgrefurl=https%3A%2F%2Fen.wikipedia.org%2Fwiki%2FChhichhore&docid=e8foN0ifmZ1D8M&w=220&h=318&q=Chhichhore&ved=2ahUKEwid-Zm65tyCAxWUoekKHb7OAWUQMygAegQIARBt',
  'https://www.google.com/imgres?imgurl=https%3A%2F%2Fm.media-amazon.com%2Fimages%2FM%2FMV5BYjZlMTg1NDktNzI2My00Mjg2LTk3NzktZWQ5ZDJhYmJkNGExXkEyXkFqcGdeQXVyOTAzMTc2MjA%40._V1_.jpg&tbnid=IkW5XMkRjLbfvM&vet=12ahUKEwik_tHC5tyCAxWka2wGHVTdDUEQMygAegQIARBs..i&imgrefurl=https%3A%2F%2Fwww.imdb.com%2Ftitle%2Ftt9648672%2F&docid=-KR9qrdCdE1HAM&w=576&h=1024&q=Street%20Dancer%203D&ved=2ahUKEwik_tHC5tyCAxWka2wGHVTdDUEQMygAegQIARBs',
  'https://www.google.com/imgres?imgurl=https%3A%2F%2Fupload.wikimedia.org%2Fwikipedia%2Fen%2Fb%2Fb8%2FOk_Jaanu_poster.jpg&tbnid=DIsg008H0EqyFM&vet=12ahUKEwjD5qrM5tyCAxWTTGwGHbbGA30QMygBegQIARBv..i&imgrefurl=https%3A%2F%2Fen.wikipedia.org%2Fwiki%2FOk_Jaanu&docid=FmJEZdFMnowcxM&w=262&h=379&q=Ok%20Jaanu&ved=2ahUKEwjD5qrM5tyCAxWTTGwGHbbGA30QMygBegQIARBv',
  'https://www.google.com/imgres?imgurl=https%3A%2F%2Fupload.wikimedia.org%2Fwikipedia%2Fen%2F0%2F0a%2FBatti_Gul_Meter_Chalu_Poster.jpg&tbnid=E_NWIyUx_eScBM&vet=12ahUKEwjPsNXW5tyCAxX-7DgGHUVpAuEQMygAegQIARBt..i&imgrefurl=https%3A%2F%2Fen.wikipedia.org%2Fwiki%2FBatti_Gul_Meter_Chalu&docid=pbYEe_tPBvVddM&w=262&h=350&q=Batti%20Gul%20Meter%20Chalu&ved=2ahUKEwjPsNXW5tyCAxX-7DgGHUVpAuEQMygAegQIARBt',
];
List<String> Movie = [
  'Bharat',
  'Ek Tha Tiger',
  'Tiger Zinda Hai',
  'Tiger 3',
  'Dhoom 3',
  'Zindagi Na Milegi Dobara',
  'Welcome',
  'Sooryavanshi',
  'Jab Tak Hai Jaan',
  'Bang Bang',
  'De Dana Dan ',
  'Zero',
  'Ajab Prem Ki Ghazab Kahani',
  'Thugs of Hindostan',
  'Tees Maar Khan',
  'Fitoor',
  'Baar Baar Dekho',
  'Mere Brother Ki Dulhan',
  'Phone Bhoot',
  'Partner',
  'Phantom',
  'Raajneeti',
  'Namastey London',
  'Maine Pyaar Kyun Kiya',
  'Race',
  'Humko Deewana Kar Gaye',
  'Sarkar',
  'Yuvvraaj',
  'New York',
  'Blue',
  'Tu Jhoothi Main Makkaar',
  'Aashiqui 2',
  'Baaghi',
  'Saaho',
  'Half Girlfriend',
  'Stree',
  'Baaghi 3',
  'Chhichhore',
  'Street Dancer 3D',
  'Ok Jaanu',
  'Batti Gul Meter Chalu',
];

class Homepagestate extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Color(0xffDFD3C8),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xff1F2327),
        title: Text(
          'MovieAdda',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 30),
            child: Text(
              'Choose Your Movie',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: Movie.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                    onTap: () {
                      a = Movie[index];
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => Detailpage(index),
                      ));
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20, top: 30),
                      child: Text(
                        Movie[index],
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ));
              },
            ),
          )
          // TextFieldSearch(
          //     label: 'Write Movie or Show name',
          //     initialList: Movie,
          //     controller: _textEditingController),
          // ElevatedButton(
          //     onPressed: () {
          //       a = _textEditingController.text;
          //       Navigator.of(context).push(MaterialPageRoute(
          //         builder: (context) => Detailpage(),
          //       ));
          //     },
          //     child: Text(
          //       'Show Detail',
          //     ))
        ],
      ),
    );
  }
}

String a = '';
