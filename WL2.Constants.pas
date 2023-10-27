unit WL2.Constants;

interface

const
  ChannelLnk = 'https://www.youtube.com/channel/UCyniVlUauJ1iWYyo-vHfGlA';
  PatreonLnk = 'https://www.patreon.com/Tokeshy';
  CoffeeLnk = 'https://sites.google.com/view/little-beggar/%D0%B3%D0%BB%D0%B0%D0%B2%D0%BD%D0%B0%D1%8F';
  ProjLnk = 'https://sonkjeferson.wixsite.com/wastelandschared2';
  ContLnk = 'https://www.linkedin.com/in/vitaliherasimenia/';
  CurrentVersion = '2.1.02';

  Cnst_SkillPref = 'KeyValuePairOfStringInt32><Key>';
  Cnst_SkillPstfix = '</Key><Value>';
  SkillFullPref = '</Value></KeyValuePairOfStringInt32><KeyValuePairOfStringInt32><Key>';
  WSPref: array [1 .. 10] of string = ('bluntWeapons', 'smg', 'brawling', 'sniperRifle', 'atWeapons', 'bladedWeapons', 'rifle', 'energyWeapons', 'shotgun', 'handgun');
  GSPref: array [1 .. 12] of string = ('calvinBackerSkill', 'combatShooting', 'outdoorsman', 'bruteForce', 'animalWhisperer', 'spotLie', 'intimidate', 'perception', 'leadership', 'barter', 'weaponSmith', 'manipulate');
  TSPref: array [1 .. 9] of string = ('demolitions', 'computerTech', 'mechanicalRepair', 'fieldMedic', 'toasterRepair', 'alarmDisarm', 'doctor', 'safecrack', 'pickLock');
  ASPref: array [1 .. 7] of string = ('coordination', 'luck', 'awareness', 'strength', 'speed', 'intelligence', 'charisma');

  Const_BtnLst: array [1 .. 6] of string = ('Btn_CaracSave', 'Btn_ScanCaracter', 'Btn_Quit', 'Btn_RRSave', 'Btn_OpenSave', 'Btn_ScanSave');
  Const_EdtLst: array [1 .. 40] of string = ('Edt_CaracterID', 'Edt_WpnS1', 'Edt_WpnS10', 'Edt_WpnS2', 'Edt_WpnS3', 'Edt_WpnS4', 'Edt_WpnS5', 'Edt_WpnS6', 'Edt_WpnS7', 'Edt_WpnS8', 'Edt_WpnS9', 'Edt_RS1',
    'Edt_RS10', 'Edt_RS11', 'Edt_RS12', 'Edt_RS2', 'Edt_RS3', 'Edt_RS4', 'Edt_RS5', 'Edt_RS6', 'Edt_RS7', 'Edt_RS8', 'Edt_RS9', 'Edt_TechS1', 'Edt_TechS2', 'Edt_TechS3', 'Edt_TechS4', 'Edt_TechS5', 'Edt_TechS6',
    'Edt_TechS7', 'Edt_TechS8', 'Edt_TechS9', 'Edt_AS1', 'Edt_AS2', 'Edt_AS3', 'Edt_AS4', 'Edt_AS5', 'Edt_AS6', 'Edt_AS7', 'Edt_SelectedCrt');
  Const_GrpLst: array [0 .. 12] of string = ('Grp_CurUnit', 'Grp_WpnSkill', 'Grp_WpnCurrLvl', 'Grp_WpnAplyLvl', 'Grp_GnSkill', 'Grp_GnCurrLvl', 'Grp_GnAplyLvl', 'Grp_TechSkill', 'Grp_TechCurrLvl', 'Grp_TechAplyLvl',
    'Grp_CurUnitAtrSkill', 'Grp_AtrCurrLvl', 'Grp_AtrAplyLvl');
  Const_LblLst: array [1 .. 6] of string = ('Lbl_Sex', 'Lbl_Age', 'Lbl_CurrLvl', 'Lbl_CurrHP', 'Lbl_MaxHP', 'Lbl_FreeSkPnt');
  Const_MItLst: array [1 .. 8] of string = ('MIt_DevInfo', 'MIt_ProjectInfo', 'MIt_DevContact', 'MIt_Coffee', 'MIt_FollowPatreon', 'MIt_InfoSection', 'MIt_AboutProject', 'MIt_HowToUse');
  Const_PGLst: array [1 .. 4] of string = ('PG_WeaponSkill', 'PG_GeneralSkill', 'PG_TechSkill', 'PG_AttributeSkills');

  { Translation }
  Const_CmBTr: array [0 .. 1] of string = ('Select unit', 'Выбрать персонаж');
  Const_BtnTrLst: array [1 .. 6] of array [0 .. 1] of string = (('Save unit', 'Сохранить персонаж'), ('Scan character', 'Сканировать персонаж'), ('Exit', 'Выход'),
    ('Overwrite SaveGame', 'Перезаписать Save'), ('Select saved game', 'Выбрать сохранённую игру'), ('Scan SaveGame', 'Сканировать Save'));
  Const_EdtTrLst: array [1 .. 40] of array [0 .. 1] of string = (('Total Units', 'Всего юнитов'), ('Blunt weapons', 'Дробящее'), ('Handgun', 'Пистолеты'), ('smg', 'Пист.-пулемёт'),
    ('Brawling', 'Рукопашная'), ('Sniper rifle', 'Снайперские'), ('F.Big weapons', 'Тяжёлое'), ('Bladed weapons', 'Холодное'), ('Rifle', 'Штурмовые'), ('Energy weapons', 'Энергетическое'),
    ('Shotgun', 'Дробовики'), ('Calvin Backer skill', '"Знаток запада"'), ('Barter', 'Меняла'), ('weapon smith', 'Оружейник'), ('Manipulate', 'Хитрожопый'), ('Combat shooting', 'Стрелок'),
    ('Outdoorsman', 'Выживание'), ('Brute force', 'Грубая сила'), ('Animal Whisperer', 'Дрессировщик'), ('Spot lie', 'Жополиз'), ('Intimidate', 'Задира'), ('Perception', 'Зоркий глаз'),
    ('Leadership', 'Лидерство'), ('Demolitions', 'Взрывотехника'), ('Computer tech', 'Компьютеры'), ('Mechanical repair', 'Механика'), ('Field medic', 'Полевая мед.'),
    ('Toaster repair', 'Ремонт тостеров'), ('Alarm disarm', 'Снятие сигнализ.'), ('Doctor', 'Хирургия'), ('Safe crack', 'Взлом сейфов'), ('PickLock', 'Взлом замков'),
    ('Coordination', 'Координация'), ('Luck', 'Удача'), ('Awareness', 'Восприятие'), ('Strength', 'Сила'), ('Speed', 'Скорость'), ('Intelligence', 'Интеллект'), ('Charisma', 'Харизма'),
    ('Selected SaveGame', 'выбранный SaveGame'));
  Const_GrpTrLst: array [0 .. 3] of array [0 .. 1] of string =  (('Selected unit', 'Выбранный юнит'), ('Skill', 'Навык'), ('Current level', 'Текущий уровень'), ('Applicable level', 'Применяемый уровень'));
  Const_LblTrLst: array [1 .. 6] of array [0 .. 1] of string = (('Sex', 'Пол'), ('Age', 'Возраст'), ('Level', 'Уровень'), ('Current HP', 'Tекущие HP'), ('Max HP', 'Максимальные HP'),
    ('Free Skils', 'Свободные Skil' + #39 + 'ы'));
  Const_MItTrLst: array [1 .. 8] of array [0 .. 1] of string = (('Developer', 'Разработчик'), ('Help', 'О проекте (Help)'), ('Contact', 'Контакты'), ('Buy coffee for developer',
    'Купить кофе разработчику'), ('Follow on patreon', 'поддержать на Patreon'), ('Info', 'Инфо'), ('About project', 'О проекте'), ('How to use', 'Как пользоваться'));
  Const_PGTrLst: array [1 .. 4] of array [0 .. 1] of string =  (('Weapons', 'Оружейные'), ('General', 'Общие'), ('Technical', 'Технические'), ('Attributes', 'Атрибуты'));

  VideoInstructionLink: array [0..1] of string = ('https://www.youtube.com/watch?v=LeS7QBcF6zI', 'https://www.youtube.com/watch?v=EORiIPeyx2Y');
  NoBiographyText: array [0..1] of string = ('No biography info detected', 'Раздел биографии не заполнен');

implementation

end.
