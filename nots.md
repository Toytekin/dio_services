# Bu dersde;
        1. internetten veri çekmeyi
        2. Statemanegment kullanmayı öğrenecez.


# SAYFA YAPISI

* anasayfa.dart

        Sadece görüntü kodlarını aldığım kodları buraya yazdık.

* viewmodel.dart

        1.List <ServicesModel> responsList = []; değikeni oluşturduk. Servisden gelen listemizi bunun  içine katacaz.
 
        2.void initState() {
       super.initState();
       fetch();  }  fetch() fonksiyonumuz ile sayfa yüklenmeden önce oluşturduğumuz listeyi dolduruyoruz.
   
        3.responsList = await dioServices.fetchResponse() ?[];

        servis dosyama istek attım.     
        

* sevices.dart
        Burad servise istek alttığımız kodlarımızı yazdık.

* stirng_const.dart

Sabit stringler burada olacak

* model.dart

        burada gelen dataya göre bir model oluşturuyoruz



