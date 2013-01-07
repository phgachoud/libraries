note
	description: "Language Identifiers"
	author: "Neil Collier"
	date: "2002/04/08 5:43:43"
	revision: "1.0$"

class
	WEL_LANGUAGE_IDENTIFIERS
	
feature {NONE} -- Language Identifiers 

	identifiers: HASH_TABLE [STRING_32, INTEGER]
			-- Language identifiers.
			-- The numeric constants are taken from Microsoft documentation at:
			-- http://msdn.microsoft.com/library/default.asp?url=/library/en-us/intl/nls_238z.asp
		once
			create Result.make(0)
			Result.extend ({STRING_32} "Language Neutral", 0x0)
			Result.extend ({STRING_32} "The language for the invariant locale.", 0x007f)
			Result.extend ({STRING_32} "Process or User Default Language", 0x0400)
			Result.extend ({STRING_32} "System Default Language", 0x0800)
			Result.extend ({STRING_32} "Afrikaans ", 0x0436)
			Result.extend ({STRING_32} "Albanian", 0x041c)
			Result.extend ({STRING_32} "Arabic (Saudi Arabia)", 0x0401)
			Result.extend ({STRING_32} "Arabic (Iraq) ", 0x0801)
			Result.extend ({STRING_32} "Arabic (Egypt)", 0x0c01)
			Result.extend ({STRING_32} "Arabic (Libya)", 0x1001)
			Result.extend ({STRING_32} "Arabic (Algeria)", 0x1401)
			Result.extend ({STRING_32} "Arabic (Morocco)", 0x1801)
			Result.extend ({STRING_32} "Arabic (Tunisia)", 0x1c01)
			Result.extend ({STRING_32} "Arabic (Oman)", 0x2001)
			Result.extend ({STRING_32} "Arabic (Yemen)", 0x2401)
			Result.extend ({STRING_32} "Arabic (Syria)", 0x2801)
			Result.extend ({STRING_32} "Arabic (Jordan)", 0x2c01)
			Result.extend ({STRING_32} "Arabic (Lebanon)", 0x3001)
			Result.extend ({STRING_32} "Arabic (Kuwait)", 0x3401)
			Result.extend ({STRING_32} "Arabic (U.A.E.)", 0x3801)
			Result.extend ({STRING_32} "Arabic (Bahrain)", 0x3c01)
			Result.extend ({STRING_32} "Arabic (Qatar)", 0x4001)
			Result.extend ({STRING_32} "Armenian", 0x042b)
			Result.extend ({STRING_32} "Azeri (Latin)", 0x042c)
			Result.extend ({STRING_32} "Azeri (Cyrillic)", 0x082c)
			Result.extend ({STRING_32} "Basque", 0x042d)
			Result.extend ({STRING_32} "Belarussian", 0x0423)
			Result.extend ({STRING_32} "Bulgarian", 0x0402)
			Result.extend ({STRING_32} "Burmese", 0x0455)
			Result.extend ({STRING_32} "Catalan", 0x0403)
			Result.extend ({STRING_32} "Chinese (Taiwan)", 0x0404)
			Result.extend ({STRING_32} "Chinese (PRC)", 0x0804)
			Result.extend ({STRING_32} "Chinese (Hong Kong SAR, PRC)", 0x0c04)
			Result.extend ({STRING_32} "Chinese (Singapore) ", 0x1004)
			Result.extend ({STRING_32} "Chinese (Macau SAR)", 0x1404)
			Result.extend ({STRING_32} "Croatian", 0x041a)
			Result.extend ({STRING_32} "Czech", 0x0405)
			Result.extend ({STRING_32} "Danish", 0x0406)
			Result.extend ({STRING_32} "Divehi", 0x0465)
			Result.extend ({STRING_32} "Dutch (Netherlands) ", 0x0413)
			Result.extend ({STRING_32} "Dutch (Belgium)", 0x0813)
			Result.extend ({STRING_32} "English (United States)", 0x0409)
			Result.extend ({STRING_32} "English (United Kingdom)", 0x0809)
			Result.extend ({STRING_32} "English (Australian)", 0x0c09)
			Result.extend ({STRING_32} "English (Canadian)", 0x1009)
			Result.extend ({STRING_32} "English (New Zealand)", 0x1409)
			Result.extend ({STRING_32} "English (Ireland)", 0x1809)
			Result.extend ({STRING_32} "English (South Africa)", 0x1c09)
			Result.extend ({STRING_32} "English (Jamaica)", 0x2009)
			Result.extend ({STRING_32} "English (Caribbean)", 0x2409)
			Result.extend ({STRING_32} "English (Belize)", 0x2809)
			Result.extend ({STRING_32} "English (Trinidad)", 0x2c09)
			Result.extend ({STRING_32} "English (Zimbabwe)", 0x3009)
			Result.extend ({STRING_32} "English (Philippines)", 0x3409)
			Result.extend ({STRING_32} "Estonian", 0x0425)
			Result.extend ({STRING_32} "Faeroese", 0x0438)
			Result.extend ({STRING_32} "Farsi", 0x0429)
			Result.extend ({STRING_32} "Finnish", 0x040b)
 			Result.extend ({STRING_32} "French (Standard)", 0x040c)
			Result.extend ({STRING_32} "French (Belgian)", 0x080c)
			Result.extend ({STRING_32} "French (Canadian)", 0x0c0c)
			Result.extend ({STRING_32} "French (Switzerland)", 0x100c)
			Result.extend ({STRING_32} "French (Luxembourg)", 0x140c)
			Result.extend ({STRING_32} "French (Monaco)", 0x180c)
			Result.extend ({STRING_32} "Galician", 0x0456)
			Result.extend ({STRING_32} "Georgian", 0x0437)
			Result.extend ({STRING_32} "German (Standard)", 0x0407)
			Result.extend ({STRING_32} "German (Switzerland)", 0x0807)
			Result.extend ({STRING_32} "German (Austria)", 0x0c07)
			Result.extend ({STRING_32} "German (Luxembourg)", 0x1007)
			Result.extend ({STRING_32} "German (Liechtenstein)", 0x1407) 
			Result.extend ({STRING_32} "Greek", 0x0408)
			Result.extend ({STRING_32} "Gujarati", 0x0447)
			Result.extend ({STRING_32} "Hebrew", 0x040d)
			Result.extend ({STRING_32} "Hindi", 0x0439)
			Result.extend ({STRING_32} "Hungarian", 0x040e)
			Result.extend ({STRING_32} "Icelandic", 0x040f)
			Result.extend ({STRING_32} "Indonesian", 0x0421)
			Result.extend ({STRING_32} "Italian (Standard)", 0x0410)
			Result.extend ({STRING_32} "Italian (Switzerland)", 0x0810)
			Result.extend ({STRING_32} "Japanese", 0x0411)
			Result.extend ({STRING_32} "Kannada", 0x044b)
			Result.extend ({STRING_32} "Kashmiri", 0x0860)
			Result.extend ({STRING_32} "Kazakh", 0x043f)
			Result.extend ({STRING_32} "Konkani", 0x0457)
			Result.extend ({STRING_32} "Korean",  0x0412)
			Result.extend ({STRING_32} "Korean (Johab)", 0x0812)
			Result.extend ({STRING_32} "Kyrgyz", 0x0440)
			Result.extend ({STRING_32} "Latvian", 0x0426)
			Result.extend ({STRING_32} "Lithuanian", 0x0427)
			Result.extend ({STRING_32} "Lithuanian (Classic)", 0x0827)
			Result.extend ({STRING_32} "FYRO Macedonian", 0x042f)
			Result.extend ({STRING_32} "Malay (Malaysian) ", 0x043e)
			Result.extend ({STRING_32} "Malay (Brunei Darussalam)", 0x083e)
			Result.extend ({STRING_32} "Manipuri", 0x0458)
			Result.extend ({STRING_32} "Marathi", 0x044e)
			Result.extend ({STRING_32} "Mongolian", 0x0450)
			Result.extend ({STRING_32} "Norwegian (Bokmal)", 0x0414)
			Result.extend ({STRING_32} "Norwegian (Nynorsk)", 0x0814)
			Result.extend ({STRING_32} "Polish", 0x0415)
			Result.extend ({STRING_32} "Portuguese (Brazil)", 0x0416)
			Result.extend ({STRING_32} "Portuguese (Portugal)", 0x0816)
			Result.extend ({STRING_32} "Punjabi", 0x0446)
			Result.extend ({STRING_32} "Romanian", 0x0418)
			Result.extend ({STRING_32} "Russian", 0x0419)
			Result.extend ({STRING_32} "Sanskrit", 0x044f)
			Result.extend ({STRING_32} "Serbian (Cyrillic)", 0x0c1a)
			Result.extend ({STRING_32} "Serbian (Latin)", 0x081a)
			Result.extend ({STRING_32} "Sindhi", 0x0459)
			Result.extend ({STRING_32} "Slovak", 0x041b)
			Result.extend ({STRING_32} "Slovenian", 0x0424)
			Result.extend ({STRING_32} "Spanish (Traditional Sort)", 0x040a)
			Result.extend ({STRING_32} "Spanish (Mexican)", 0x080a)
			Result.extend ({STRING_32} "Spanish (Modern Sort)", 0x0c0a)
			Result.extend ({STRING_32} "Spanish (Guatemala)", 0x100a)
			Result.extend ({STRING_32} "Spanish (Costa Rica)", 0x140a)
			Result.extend ({STRING_32} "Spanish (Panama)", 0x180a)
			Result.extend ({STRING_32} "Spanish (Dominican Republic) ", 0x1c0a)
			Result.extend ({STRING_32} "Spanish (Venezuela)", 0x200a)
			Result.extend ({STRING_32} "Spanish (Colombia)", 0x240a)
			Result.extend ({STRING_32} "Spanish (Peru)", 0x280a)
			Result.extend ({STRING_32} "Spanish (Argentina)", 0x2c0a)
			Result.extend ({STRING_32} "Spanish (Ecuador)", 0x300a)
			Result.extend ({STRING_32} "Spanish (Chile)", 0x340a)
			Result.extend ({STRING_32} "Spanish (Uruguay)", 0x380a)
			Result.extend ({STRING_32} "Spanish (Paraguay)", 0x3c0a)
			Result.extend ({STRING_32} "Spanish (Bolivia)", 0x400a)
			Result.extend ({STRING_32} "Spanish (El Salvador) ", 0x440a)
			Result.extend ({STRING_32} "Spanish (Honduras)", 0x480a)
			Result.extend ({STRING_32} "Spanish (Nicaragua) ", 0x4c0a)
			Result.extend ({STRING_32} "Spanish (Puerto Rico)", 0x500a)
			Result.extend ({STRING_32} "Sutu", 0x0430)
			Result.extend ({STRING_32} "Swahili (Kenya)", 0x0441)  
			Result.extend ({STRING_32} "Swedish", 0x041d)  
			Result.extend ({STRING_32} "Swedish (Finland)", 0x081d)  
			Result.extend ({STRING_32} "Syriac", 0x045a)  
			Result.extend ({STRING_32} "Tamil", 0x0449) 
			Result.extend ({STRING_32} "Tatar (Tatarstan)", 0x0444)  
			Result.extend ({STRING_32} "Telugu", 0x044a)  
			Result.extend ({STRING_32} "Thai", 0x041e)  
			Result.extend ({STRING_32} "Turkish", 0x041f)  
			Result.extend ({STRING_32} "Ukrainian", 0x0422) 
			Result.extend ({STRING_32} "Urdu (Pakistan)", 0x0420)  
			Result.extend ({STRING_32} "Urdu (India)", 0x0820)  
			Result.extend ({STRING_32} "Uzbek (Latin)", 0x0443)  
			Result.extend ({STRING_32} "Uzbek (Cyrillic)", 0x0843)  
			Result.extend ({STRING_32} "Vietnamese", 0x042a) 
		end
		
end -- class WEL_LANGUAGE_IDENTIFIERS

