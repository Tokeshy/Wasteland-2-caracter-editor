unit WL2.Resources;

interface

const
  // Version
  CurrentVersion = '3.0.01';

  // Links
  ChannelLnk = 'https://www.youtube.com/channel/UCyniVlUauJ1iWYyo-vHfGlA';
  PatreonLnk = 'https://www.patreon.com/Tokeshy';
  CoffeeLnk = 'https://www.paypal.com/donate/?hosted_button_id=6H3WDBHQ3MEC6';
  ProjLnk = 'https://sonkjeferson.wixsite.com/wastelandschared2';
  LinkInLnk = 'https://www.linkedin.com/in/vitaliherasimenia/';
  XingLink = 'https://www.xing.com/profile/Vitali_Herasimenia';

  // Wasteland 2 format
  Wl2FormatCorrespondence: array [1 .. 11] of array [0 .. 1] of integer = ((0, 0), (1, 2), (2, 4), (3, 6), (4, 10), (5, 14), (6, 18), (7, 24), (8, 30), (9, 36), (10, 44));

  // Skills and attributes
  WeaponSkills: array [1 .. 10] of string = ('bluntWeapons', 'smg', 'brawling', 'sniperRifle', 'atWeapons', 'bladedWeapons', 'rifle', 'energyWeapons', 'shotgun', 'handgun');
  GeneralSkills: array [1 .. 12] of string = ('calvinBackerSkill', 'combatShooting', 'outdoorsman', 'bruteForce', 'animalWhisperer', 'spotLie', 'intimidate', 'perception', 'leadership', 'barter', 'weaponSmith', 'manipulate');
  TechnicalSkills: array [1 .. 9] of string = ('demolitions', 'computerTech', 'mechanicalRepair', 'fieldMedic', 'toasterRepair', 'alarmDisarm', 'doctor', 'safecrack', 'pickLock');
  Attributes: array [1 .. 7] of string = ('coordination', 'luck', 'awareness', 'strength', 'speed', 'intelligence', 'charisma');

  // Prefixes
  SkillPrefixes: array [0..2] of String = ('</Key><Value>', '<pair><key>', '</Value></KeyValuePairOfStringInt32><KeyValuePairOfStringInt32><Key>');
  CaracterNamePrefixes: String = '</name><displayName><@>';
  BiographyPrefixes: array [0..1] of String = ('<biography><@>', '</biography>');
  CaractersDataEnd: String = '</value></pair></skillXps>';

  // UI prefixes
  BarsAndEditPrefixSet: array[1..4] of array[1..5] of string = (('WSPB', 'WSTB', 'WSL', 'WSI', '10'), ('RSPB', 'RSTB', 'RSL', 'RSI', '12'), ('TSPB', 'TSTB', 'TSL', 'TSI', '9'), ('ASPB', 'ASTB', 'ASL', 'ASI', '7'));

  // Localization
  CmbbCaracterTextsHint: array [0 .. 1] of string = ('Select unit', 'Выбрать персонажа');
  CmbbCaracterHint: array [0 .. 1] of array [0 .. 1] of string =  (('Founded ', ' caracters'), ('Найдено ', ' персонажей'));
  ButtonsNamesList: array [1 .. 6] of string = ('Btn_CaracSave', 'Btn_ScanCaracter', 'Btn_Quit', 'Btn_RRSave', 'Btn_OpenSave', 'Btn_ScanSave');
  EditsNamesList: array [1 .. 40] of string = ('edCaracterCounter', 'Edt_WpnS1', 'Edt_WpnS10', 'Edt_WpnS2', 'Edt_WpnS3', 'Edt_WpnS4', 'Edt_WpnS5', 'Edt_WpnS6', 'Edt_WpnS7', 'Edt_WpnS8', 'Edt_WpnS9', 'Edt_RS1',
    'Edt_RS10', 'Edt_RS11', 'Edt_RS12', 'Edt_RS2', 'Edt_RS3', 'Edt_RS4', 'Edt_RS5', 'Edt_RS6', 'Edt_RS7', 'Edt_RS8', 'Edt_RS9', 'Edt_TechS1', 'Edt_TechS2', 'Edt_TechS3', 'Edt_TechS4', 'Edt_TechS5', 'Edt_TechS6',
    'Edt_TechS7', 'Edt_TechS8', 'Edt_TechS9', 'Edt_AS1', 'Edt_AS2', 'Edt_AS3', 'Edt_AS4', 'Edt_AS5', 'Edt_AS6', 'Edt_AS7', 'Edt_SelectedCrt');
  GroupNames: array [0 .. 12] of string = ('Grp_CurUnit', 'Grp_WpnSkill', 'Grp_WpnCurrLvl', 'Grp_WpnAplyLvl', 'Grp_GnSkill', 'Grp_GnCurrLvl', 'Grp_GnAplyLvl', 'Grp_TechSkill', 'Grp_TechCurrLvl', 'Grp_TechAplyLvl',
    'Grp_CurUnitAtrSkill', 'Grp_AtrCurrLvl', 'Grp_AtrAplyLvl');
  LabelsNamesList: array [1 .. 6] of string = ('Lbl_Sex', 'Lbl_Age', 'Lbl_CurrLvl', 'Lbl_CurrHP', 'Lbl_MaxHP', 'Lbl_FreeSkPnt');
  MenuItemsNames: array [1 .. 8] of string = ('MIt_DevInfo', 'MIt_ProjectInfo', 'MIt_Coffee', 'MIt_FollowPatreon', 'MIt_InfoSection', 'MIt_AboutProject', 'MIt_HowToUse', 'MEContactDev');
  MenuItemsCaptions: array [1 .. 8] of array [0 .. 1] of string = (('Support project', 'Поддержать проект'), ('Help', 'Помощь (Help)'), ('Buy coffee for developer',
    'Купить кофе разработчику'), ('Follow on patreon', 'Подписаться на Patreon'), ('Info', 'Инфо'), ('About project', 'О проекте'), ('How to use', 'Как использовать'), ('Contact developer', 'Связаться с разработчиком'));

  ProgressBarsGroups: array [1 .. 4] of string = ('PG_WeaponSkill', 'PG_GeneralSkill', 'PG_TechSkill', 'PG_AttributeSkills');
  ButtonsCaptions: array [1 .. 6] of array [0 .. 1] of string = (('Save unit', 'Сохранить персонажа'), ('Scan character', 'Сканировать персонажа'), ('Exit', 'Выход'),
    ('Update SaveGame', 'Обновить Save'), ('Select saved game', 'Выбрать сохранённую игру'), ('Scan SaveGame', 'Сканировать Save'));
  UnitDataCaptions: array [1 .. 40] of array [0 .. 1] of string = (('Total Units', 'Всего персонажей'), ('Blunt weapons', 'Дубины'), ('Handgun', 'Пистолет'), ('smg', 'ПП'),
    ('Brawling', 'Драка'), ('Sniper rifle', 'Снайперская винтовка'), ('F.Big weapons', 'Крупное оружие'), ('Bladed weapons', 'Холодное оружие'), ('Rifle', 'Винтовка'), ('Energy weapons', 'Энергетическое оружие'),
    ('Shotgun', 'Дробовик'), ('Calvin Backer skill', '"Кальвин Бекер"'), ('Barter', 'Торговля'), ('weapon smith', 'Оружейник'), ('Manipulate', 'Манипуляция'), ('Combat shooting', 'Боевой стрельба'),
    ('Outdoorsman', 'Выживальщик'), ('Brute force', 'Грубая сила'), ('Animal Whisperer', 'Шёпот животных'), ('Spot lie', 'Обнаружение лжи'), ('Intimidate', 'Запугивание'), ('Perception', 'Восприятие'),
    ('Leadership', 'Лидерство'), ('Demolitions', 'Взрывчатка'), ('Computer tech', 'Компьютерная техника'), ('Mechanical repair', 'Механический ремонт'), ('Field medic', 'Полевой медик'),
    ('Toaster repair', 'Ремонт тостеров'), ('Alarm disarm', 'Обезвреживание сигнализации'), ('Doctor', 'Доктор'), ('Safe crack', 'Взлом сейфов'), ('PickLock', 'Взлом замков'),
    ('Coordination', 'Координация'), ('Luck', 'Удача'), ('Awareness', 'Осведомлённость'), ('Strength', 'Сила'), ('Speed', 'Скорость'), ('Intelligence', 'Интеллект'), ('Charisma', 'Харизма'),
    ('Selected SaveGame', 'Выбранный SaveGame'));
  GeneralInfoAdditionalLabels: array [0 .. 3] of array [0 .. 1] of string =  (('Selected unit', 'Выбранный персонаж'), ('Skill', 'Навык'), ('Current level', 'Текущий уровень'), ('Applicable level', 'Применяемый уровень'));
  GeneralInfoLabels: array [1 .. 6] of array [0 .. 1] of string = (('Sex', 'Пол'), ('Age', 'Возраст'), ('Level', 'Уровень'), ('Current HP', 'Текущее HP'), ('Max HP', 'Макс HP'),
    ('Free Skils', 'Свободные очки'));
  SkillsGroupsCaptions: array [1 .. 4] of array [0 .. 1] of string =  (('Weapons', 'Оружие'), ('General', 'Общие'), ('Technical', 'Технические'), ('Attributes', 'Атрибуты'));

  VideoInstructionLink: array [0..1] of string = ('https://www.youtube.com/watch?v=LeS7QBcF6zI', 'https://www.youtube.com/watch?v=EORiIPeyx2Y');
  NoBiographyText: array [0..1] of string = ('No biography info detected', 'Информация о биографии не найдена');
  SaveRequestText: array [0..1] of String = ('Do you want to save changes in current SaveGame?', 'Хотите сохранить изменения в текущем SaveGame?');
  SavingMessage: array [0..1] of array [0..1] of String = (('Saving of current file Failed.', 'Сохранение текущего файла не удалось.'), ('Saving of current file was successful.', 'Сохранение текущего файла прошло успешно.'));

var
  NoBioText, VideoLink : string;

implementation

end.