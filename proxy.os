
ТСПСервер = Новый TCPСервер(3333);
ПортЦели = 3331;
ХостЦели = "localhost";
		
ТСПСервер.Запустить();

СоединениеВХ = ТСПСервер.ОжидатьСоединения();

Сообщить(ТекущаяДата());

ТекстЗапроса = СоединениеВХ.ПрочитатьДвоичныеДанные();

Сообщить("--zapros");

Сообщить(ПолучитьСтрокуИзДвоичныхДанных(ТекстЗапроса));

СоединениеИСХ = Новый TCPСоединение(ХостЦели, ПортЦели);

СоединениеИСХ.ОтправитьДвоичныеДанные(ТекстЗапроса);

Сообщить("--otvet");

Ответ = СоединениеИСХ.ПрочитатьДвоичныеДанные();

Сообщить(ПолучитьСтрокуИзДвоичныхДанных(Ответ));

Сообщить(ТекущаяДата());

СоединениеИСХ.Закрыть();

СоединениеВХ.ОтправитьДвоичныеДанные(Ответ);

СоединениеВХ.Закрыть();

ТСПСервер.Остановить();
