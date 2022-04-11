unit Translator;

interface
  procedure ToEnglish;
  procedure ToRussian;

var
  NoBioText, VideoLink : string;

implementation
uses
  Main;

procedure ToEnglish;
begin
  with Main.WL2CED do
  begin
    CaracSavBtn.Caption   := 'Save unit';
    CaracterBox.Text      := 'Select unit';
    CaracterID.Text       := 'Total Units';
    CrLbtn.Caption        := 'Scan character';
    CurUnitGroup.Caption  := 'Selected unit';
    SexLbl.Caption        := 'Sex';
    AgeLbl.Caption        := 'Age';
    LvlLbl.Caption        := 'Level';
    CurrHPLbl.Caption     := 'Current HP';
    MaxHPLbl.Caption      := 'Max HP';
    FreeSkPLbl.Caption    := 'Free Skils';
    EndBtn.Caption        := 'Exit';

    DevInfo.Caption            := 'Developer';
    ProjectInfo.Caption        := 'Help';
    DevContactBtn.Caption      := 'Contact';
    CoffeeBtn.Caption          := 'Buy coffee for developer';
    FollowOnPatreonBtn.Caption := 'Follow on patreon';
    InfoSection.Caption        := 'Info';
    AboutProjectBtn.Caption    := 'About project';
    HowToUseBtn.Caption        := 'How to use';

    WeaponSkillSht.Caption := 'Weapons';
    WCurrLvlGrb.Caption    := 'Current level';
    WAplyLvlGrb.Caption    := 'Applicable level';
    WSkillGrb.Caption      := 'Skill';
    WS1.Text  := 'Blunt weapons';
    WS10.Text := 'Handgun';
    WS2.Text  := 'smg';
    WS3.Text  := 'Brawling';
    WS4.Text  := 'Sniper rifle';
    WS5.Text  := 'F.Big weapons';
    WS6.Text  := 'Bladed weapons';
    WS7.Text  := 'Rifle';
    WS8.Text  := 'Energy weapons';
    WS9.Text  := 'Shotgun';

    GeneralSkillSht.Caption := 'General';
    GAplyLvlGrb.Caption     := 'Applicable level';
    GCurrLvlGrb.Caption     := 'Current level';
    GSkillGrb.Caption       := 'Skill';
    RS1.Text  := 'Calvin Backer skill';
    RS10.Text := 'Barter';
    RS11.Text := 'weapon smith';
    RS12.Text := 'Manipulate';
    RS2.Text  := 'Combat shooting';
    RS3.Text  := 'Outdoorsman';
    RS4.Text  := 'Brute force';
    RS5.Text  := 'Animal Whisperer';
    RS6.Text  := 'Spot lie';
    RS7.Text  := 'Intimidate';
    RS8.Text  := 'Perception';
    RS9.Text  := 'Leadership';

    TechSkillSht.Caption := 'Technical';
    TSkillGrb.Caption    := 'Skill';
    TCurrLvlGrb.Caption  := 'Current level';
    TAplyLvlGrb.Caption  := 'Applicable level';
    TS1.Text := 'Demolitions';
    TS2.Text := 'Computer tech';
    TS3.Text := 'Mechanical repair';
    TS4.Text := 'Field medic';
    TS5.Text := 'Toaster repair';
    TS6.Text := 'Alarm disarm';
    TS7.Text := 'Doctor';
    TS8.Text := 'Safe crack';
    TS9.Text := 'PickLock';

    AttributeSkillsSht.Caption := 'Attributes';
    AtrCurrLvlGrb.Caption      := 'Current level';
    AtrSkillGrb.Caption        := 'Skill';
    AtrAplyLvlGrb.Caption      := 'Applicable level';
    as1.Text := 'Coordination';
    as2.Text := 'Luck';
    as3.Text := 'Awareness';
    as4.Text := 'Strength';
    as5.Text := 'Speed';
    as6.Text := 'Intelligence';
    as7.Text := 'Charisma';

    SaveBtn.Caption := 'Overwrite SaveGame';
    SGid.Text       := 'Selected SaveGame';
    SObtn.Caption   := 'Select saved game';
    SSnBtn.Caption  := 'Scan SaveGame';

    NoBioText := 'No biography info detected';
    VideoLink := 'https://www.youtube.com/watch?v=LeS7QBcF6zI';
  end;
end;

procedure ToRussian;
begin
  with Main.WL2CED do
  begin
    CaracSavBtn.Caption   := 'Сохранить персонаж';
    CaracterBox.Text      := 'Выбрать персонаж';
    CaracterID.Text       := 'Всего юнитов';
    CrLbtn.Caption        := 'Сканировать персонаж';
    CurUnitGroup.Caption  := 'Выбранный юнит';
    SexLbl.Caption        := 'Пол';
    AgeLbl.Caption        := 'Возраст';
    LvlLbl.Caption        := 'Уровень';
    CurrHPLbl.Caption     := 'Tекущие HP';
    MaxHPLbl.Caption      := 'Максимальные HP';
    FreeSkPLbl.Caption    := 'Свободные Skil'+#39+'ы';
    EndBtn.Caption        := 'Выход';

    DevInfo.Caption            := 'Разработчик';
    ProjectInfo.Caption        := 'О проекте (Help)';
    DevContactBtn.Caption      := 'Контакты';
    CoffeeBtn.Caption          := 'Купить кофе разработчику';
    FollowOnPatreonBtn.Caption := 'поддержать на Patreon';
    InfoSection.Caption        := 'Инфо';
    AboutProjectBtn.Caption    := 'О проекте';
    HowToUseBtn.Caption        := 'Как пользоваться';

    WeaponSkillSht.Caption := 'Оружейные';
    WCurrLvlGrb.Caption    := 'Текущий уровень';
    WAplyLvlGrb.Caption    := 'Применяемый уровень';
    WSkillGrb.Caption      := 'Навык';
    WS1.Text  := 'Дробящее';
    WS10.Text := 'Пистолеты';
    WS2.Text  := 'Пист.-пулемёт';
    WS3.Text  := 'Рукопашная';
    WS4.Text  := 'Снайперские';
    WS5.Text  := 'Тяжёлое';
    WS6.Text  := 'Холодное';
    WS7.Text  := 'Штурмовые';
    WS8.Text  := 'Энергетическое';
    WS9.Text  := 'Дробовики';

    GeneralSkillSht.Caption := 'Общие';
    GAplyLvlGrb.Caption     := 'Применяемый уровень';
    GCurrLvlGrb.Caption     := 'Текущий уровень';
    GSkillGrb.Caption       := 'Навык';
    RS1.Text  := '"Знаток запада"';
    RS10.Text := 'Меняла';
    RS11.Text := 'Оружейник';
    RS12.Text := 'Хитрожопый';
    RS2.Text  := 'Стрелок';
    RS3.Text  := 'Выживание';
    RS4.Text  := 'Грубая сила';
    RS5.Text  := 'Дрессировщик';
    RS6.Text  := 'Жополиз';
    RS7.Text  := 'Задира';
    RS8.Text  := 'Зоркий глаз';
    RS9.Text  := 'Лидерство';

    TechSkillSht.Caption := 'Технические';
    TSkillGrb.Caption    := 'Навык';
    TCurrLvlGrb.Caption  := 'Текущий уровень';
    TAplyLvlGrb.Caption  := 'Применяемый уровень';
    TS1.Text := 'Взрывотехника';
    TS2.Text := 'Компьютеры';
    TS3.Text := 'Механика';
    TS4.Text := 'Полевая мед.';
    TS5.Text := 'Ремонт тостеров';
    TS6.Text := 'Снятие сигнализ.';
    TS7.Text := 'Хирургия';
    TS8.Text := 'Взлом сейфов';
    TS9.Text := 'Взлом замков';

    AttributeSkillsSht.Caption := 'Атрибуты';
    AtrCurrLvlGrb.Caption      := 'Текущий уровень';
    AtrSkillGrb.Caption        := 'Навык';
    AtrAplyLvlGrb.Caption      := 'Применяемый уровень';
    as1.Text := 'Координация';
    as2.Text := 'Удача';
    as3.Text := 'Восприятие';
    as4.Text := 'Сила';
    as5.Text := 'Скорость';
    as6.Text := 'Интеллект';
    as7.Text := 'Харизма';

    SaveBtn.Caption := 'Перезаписать Save';
    SGid.Text       := 'выбранный SaveGame';
    SObtn.Caption   := 'Выбрать сохранённую игру';
    SSnBtn.Caption  := 'Сканировать Save';

    NoBioText := 'Раздел биографии не заполнен';
    VideoLink := 'https://www.youtube.com/watch?v=EORiIPeyx2Y';
  end;

end;

end.
