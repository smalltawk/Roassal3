"
I am have the menu items for the menu Roassal3 on Tools
"
Class {
	#name : #RSWorldMenu,
	#superclass : #RSObject,
	#classInstVars : [
		'discord',
		'roassalIcon'
	],
	#category : #'Roassal3-Menu'
}

{ #category : #utilities }
RSWorldMenu class >> areExamplesAlreadyLoaded [

	^ Smalltalk globals hasClassNamed: #RSAbstractExamples
]

{ #category : #icons }
RSWorldMenu class >> discord [
	^ discord ifNil: [ discord := PNGReadWriter formFromStream: self discordPNGByteArray readStream ]
]

{ #category : #streams }
RSWorldMenu class >> discordPNGByteArray [
	^ #[137 80 78 71 13 10 26 10 0 0 0 13 73 72 68 82 0 0 0 16 0 0 0 16 8 6 0 0 0 31 243 255 97 0 0 0 4 103 65 77 65 0 0 177 143 11 252 97 5 0 0 0 32 99 72 82 77 0 0 122 38 0 0 128 132 0 0 250 0 0 0 128 232 0 0 117 48 0 0 234 96 0 0 58 152 0 0 23 112 156 186 81 60 0 0 0 9 112 72 89 115 0 0 11 19 0 0 11 19 1 0 154 156 24 0 0 1 203 105 84 88 116 88 77 76 58 99 111 109 46 97 100 111 98 101 46 120 109 112 0 0 0 0 0 60 120 58 120 109 112 109 101 116 97 32 120 109 108 110 115 58 120 61 34 97 100 111 98 101 58 110 115 58 109 101 116 97 47 34 32 120 58 120 109 112 116 107 61 34 88 77 80 32 67 111 114 101 32 53 46 52 46 48 34 62 10 32 32 32 60 114 100 102 58 82 68 70 32 120 109 108 110 115 58 114 100 102 61 34 104 116 116 112 58 47 47 119 119 119 46 119 51 46 111 114 103 47 49 57 57 57 47 48 50 47 50 50 45 114 100 102 45 115 121 110 116 97 120 45 110 115 35 34 62 10 32 32 32 32 32 32 60 114 100 102 58 68 101 115 99 114 105 112 116 105 111 110 32 114 100 102 58 97 98 111 117 116 61 34 34 10 32 32 32 32 32 32 32 32 32 32 32 32 120 109 108 110 115 58 116 105 102 102 61 34 104 116 116 112 58 47 47 110 115 46 97 100 111 98 101 46 99 111 109 47 116 105 102 102 47 49 46 48 47 34 10 32 32 32 32 32 32 32 32 32 32 32 32 120 109 108 110 115 58 120 109 112 61 34 104 116 116 112 58 47 47 110 115 46 97 100 111 98 101 46 99 111 109 47 120 97 112 47 49 46 48 47 34 62 10 32 32 32 32 32 32 32 32 32 60 116 105 102 102 58 79 114 105 101 110 116 97 116 105 111 110 62 49 60 47 116 105 102 102 58 79 114 105 101 110 116 97 116 105 111 110 62 10 32 32 32 32 32 32 32 32 32 60 120 109 112 58 67 114 101 97 116 111 114 84 111 111 108 62 65 100 111 98 101 32 73 109 97 103 101 82 101 97 100 121 60 47 120 109 112 58 67 114 101 97 116 111 114 84 111 111 108 62 10 32 32 32 32 32 32 60 47 114 100 102 58 68 101 115 99 114 105 112 116 105 111 110 62 10 32 32 32 60 47 114 100 102 58 82 68 70 62 10 60 47 120 58 120 109 112 109 101 116 97 62 10 178 35 126 241 0 0 2 168 73 68 65 84 56 17 109 83 75 107 83 65 20 254 230 113 147 38 49 125 102 97 17 90 95 180 40 162 32 74 74 235 198 62 246 174 10 130 85 112 43 40 198 141 127 194 138 27 23 46 4 173 32 22 23 238 107 91 186 104 177 186 113 161 139 46 164 166 130 45 86 105 154 54 105 110 238 220 25 207 153 52 88 197 3 147 156 185 231 245 205 119 206 17 216 151 233 105 167 198 199 69 204 215 135 207 220 104 108 49 18 4 232 225 123 20 97 77 73 204 222 189 33 222 242 253 160 175 56 248 225 209 148 27 148 2 147 16 200 171 0 112 150 173 128 144 64 28 145 226 176 108 29 10 119 38 196 82 51 137 104 42 15 158 186 107 58 192 84 68 24 76 29 86 74 88 66 225 11 144 238 40 153 212 9 200 64 145 61 194 196 189 155 226 5 199 122 7 174 76 153 23 235 117 224 88 183 49 29 173 177 222 248 165 25 186 23 122 10 14 119 25 108 149 149 89 93 215 58 145 0 8 233 16 35 209 13 23 15 27 99 249 170 233 106 55 154 161 159 237 223 67 160 29 161 166 138 70 96 175 38 33 4 244 201 30 101 22 62 102 56 110 146 206 128 120 252 202 141 238 86 48 115 162 59 178 99 67 59 50 138 4 148 116 176 206 131 219 207 207 21 29 98 43 124 210 153 165 172 253 178 30 200 67 25 140 201 168 102 71 36 229 235 59 26 146 153 120 162 146 76 154 86 92 187 33 172 83 245 134 141 254 251 122 67 203 49 81 136 97 25 11 217 147 77 1 185 14 35 76 76 24 9 246 218 247 36 86 86 91 40 136 3 157 215 215 214 147 222 198 62 185 78 35 56 134 248 238 149 53 34 46 215 6 164 146 214 87 136 201 97 246 125 26 175 231 211 8 235 210 31 214 249 27 219 24 97 170 197 34 215 14 112 172 222 169 96 173 147 18 40 5 199 189 102 226 46 158 174 161 82 149 72 4 141 103 140 156 15 145 73 91 111 139 136 80 26 42 215 217 10 16 119 69 93 220 194 108 75 16 223 215 218 202 221 138 166 138 2 231 78 85 185 77 96 103 150 75 23 118 97 169 51 229 93 229 185 72 167 98 73 49 248 186 165 230 188 199 243 55 238 221 229 124 156 111 207 108 155 159 37 173 75 101 133 36 85 103 168 44 220 194 144 186 211 158 141 153 43 83 170 180 233 249 101 181 124 253 138 24 240 115 240 185 136 194 102 73 45 246 247 180 234 227 71 106 102 99 51 208 75 159 18 200 166 125 60 202 85 96 232 76 157 147 154 133 15 173 122 229 155 194 143 109 20 216 250 215 40 215 45 166 252 240 198 176 201 4 161 62 48 202 97 29 18 138 14 209 146 144 255 140 114 115 31 158 188 140 6 195 88 55 150 137 176 241 187 89 104 23 16 27 82 104 153 164 50 133 91 87 131 63 203 228 61 232 167 153 132 239 188 206 180 27 195 90 163 151 239 198 160 24 8 204 221 254 207 58 255 6 33 135 81 38 156 4 58 218 0 0 0 0 73 69 78 68 174 66 96 130]
]

{ #category : #utilities }
RSWorldMenu class >> loadFullStableVersion [

	[ 
	Metacello new
		baseline: 'Roassal3';
		repository: 'github://ObjectProfile/Roassal3:v0.9.4';
		load ]
		on: MCMergeOrLoadWarning
		do: [ :warning | warning load ]
]

{ #category : #menu }
RSWorldMenu class >> loadFullVersion [
	[Metacello new
		baseline: 'Roassal3';
		repository: 'github://ObjectProfile/Roassal3';
		load: 'Full' ] on: MCMergeOrLoadWarning do: [:warning | warning load ]
]

{ #category : #menu }
RSWorldMenu class >> menu00RoassalOn: aBuilder [
	<worldMenu>
	(aBuilder item: #Roassal3)
		parent: #Tools;
		label: 'Roassal3';
		icon: self roassalIcon;
		help: 'A visualization engine';
		order: 777
]

{ #category : #menu }
RSWorldMenu class >> menu01ReportABugOn: aBuilder [
	<worldMenu>
	(aBuilder item: #Roassal3Bug)
		parent: #Roassal3;
		order: 1;
		label: 'Report a Bug';
		icon: (self iconNamed: 'smallDebug');
		help: 'Will open the github page to report an issue';
		action: [ WebBrowser openOn: 'https://github.com/ObjectProfile/Roassal3/issues/new' ]
]

{ #category : #menu }
RSWorldMenu class >> menu02GithubOn: aBuilder [
	<worldMenu>
	(aBuilder item: #Roassal3Git)
		parent: #Roassal3;
		order: 2;
		label: 'Github';
		help: 'Open Roassal3 git hubpage';
		icon: (self iconNamed: 'github');
		action: [ WebBrowser openOn: 'https://github.com/ObjectProfile/Roassal3/' ]
]

{ #category : #menu }
RSWorldMenu class >> menu03DiscordOn: aBuilder [
	<worldMenu>
	(aBuilder item: #Roassal3Chat)
		parent: #Roassal3;
		order: 3;
		label: 'Chat with us';
		help: 'Will open discord web to chat with us in Pharo server';
		icon: self discord;
		action: [ WebBrowser openOn: 'https://discord.gg/YTEaAu6' ]
]

{ #category : #menu }
RSWorldMenu class >> menu04DocumentationOn: aBuilder [
	<worldMenu>
	(aBuilder item: #Roassal3Documentation)
		parent: #Roassal3;
		order: 4;
		label: 'Online documentation';
		help: 'Will open the webpage https://github.com/ObjectProfile/Roassal3Documentation';
		icon: (self iconNamed: #smallHelp);
		action: [ WebBrowser openOn: 'https://github.com/ObjectProfile/Roassal3Documentation' ]
]

{ #category : #menu }
RSWorldMenu class >> menu06PluginsOn: aBuilder [
	"<worldMenu>
	(aBuilder item: #Roassal3Plugins)
		parent: #Roassal3;
		order: 6;
		label: 'Plugins';
		help: 'TODO';
		icon: self roassalIcon;
		action: [ self inform: 'TODO' ]"
]

{ #category : #menu }
RSWorldMenu class >> menu07LoadFullVersionOn: aBuilder [

	<worldMenu>
	(aBuilder item: #Roassal3LoadFullVersion)
		parent: #Roassal3;
		order: 5;
		label: 'Load full version';
		help: 'Load full version of Roassal';
		icon: self roassalIcon;
		action: [ self loadFullVersion ]
]

{ #category : #menu }
RSWorldMenu class >> menu11SelfOn: aBuilder [
	<worldMenu>
	(aBuilder item: #Roassal3Self)
		parent: #Roassal3;
		order: 11;
		label: 'This menu';
		help: 'Open RSWorldMenu';
		icon: (self iconNamed: 'smallExport');
		action: [ self browse ]
]

{ #category : #icons }
RSWorldMenu class >> roassalIcon [
	^ roassalIcon ifNil: [ roassalIcon := Form fromBinaryStream: self roassalIconStream base64Decoded readStream ]
]

{ #category : #streams }
RSWorldMenu class >> roassalIconStream [
	^ 'iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAABMUlEQVQ4T2NkoBAwgvS/sAr5D6LNi6MZ/v39z/D3LwPD3z8MEPrvf4b3ycFgddgAwoD/DF8ljq/hkV217v/jsCC4BsG5a/+DDPuUjt0QDJPRDQDZyjdz7f9/fxkYvmRhGkKUASBDeKat/U/QAPm1ayX//WV8huwFmL8JGqC0cT3Yr8iB+DIWEhZEeQFkwD3/QEZYGIgvXvf/4vRlDJrJkeAYIRiIIAP+/f2//u8fhsC//xi+/f3NwAUyAAQkjq3BH40wf8qvBRsCjv9nkUGML6zDKjWTwtsIpgPkBIItHVBuAO9fdoawsF8wi17ahAb+//d/HchrRKUDUCwgByIs6WMY8NIq5Pd/BgYW9ECDRSMkf0DzSkkI2HIUFyCbjC3jcE5e++R7brAMshzO6CE2lwMAVKG/Eb0e33UAAAAASUVORK5CYII='
]
