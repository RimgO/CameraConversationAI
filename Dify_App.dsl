app:
  description: ''
  icon: 🤖
  icon_background: '#FFEAD5'
  mode: advanced-chat
  name: 対話AI
  use_icon_as_answer_icon: false
dependencies:
- current_identifier: null
  type: marketplace
  value:
    marketplace_plugin_unique_identifier: langgenius/openai:0.0.22@fa668d0ec3b434270453ede311196acaad0531ad9e3d5561cd622e6508cd3254
kind: app
version: 0.2.0
workflow:
  conversation_variables:
  - description: 相手の趣味
    id: 7b1bea8c-cb30-4a79-b5b0-75495cbdb920
    name: target_hobby
    selector:
    - conversation
    - target_hobby
    value: ''
    value_type: string
  - description: 相手の名前
    id: 286e269e-5c0b-43de-85ac-aa9351190d4e
    name: target_name
    selector:
    - conversation
    - target_name
    value: ''
    value_type: string
  environment_variables: []
  features:
    file_upload:
      allowed_file_extensions:
      - .JPG
      - .JPEG
      - .PNG
      - .GIF
      - .WEBP
      - .SVG
      allowed_file_types:
      - image
      allowed_file_upload_methods:
      - local_file
      - remote_url
      enabled: false
      fileUploadConfig:
        audio_file_size_limit: 50
        batch_count_limit: 5
        file_size_limit: 15
        image_file_size_limit: 10
        video_file_size_limit: 100
        workflow_file_upload_limit: 10
      image:
        enabled: false
        number_limits: 3
        transfer_methods:
        - local_file
        - remote_url
      number_limits: 3
    opening_statement: ''
    retriever_resource:
      enabled: true
    sensitive_word_avoidance:
      enabled: false
    speech_to_text:
      enabled: false
    suggested_questions: []
    suggested_questions_after_answer:
      enabled: false
    text_to_speech:
      enabled: false
      language: ''
      voice: ''
  graph:
    edges:
    - data:
        isInIteration: false
        sourceType: llm
        targetType: parameter-extractor
      id: llm-source-1740358403588-target
      selected: false
      source: llm
      sourceHandle: source
      target: '1740358403588'
      targetHandle: target
      type: custom
      zIndex: 0
    - data:
        isInIteration: false
        sourceType: llm
        targetType: parameter-extractor
      id: 17403744180120-source-17403755743110-target
      selected: false
      source: '17403744180120'
      sourceHandle: source
      target: '17403755743110'
      targetHandle: target
      type: custom
      zIndex: 0
    - data:
        isInIteration: false
        sourceType: parameter-extractor
        targetType: assigner
      id: 17403755743110-source-17403757009470-target
      selected: false
      source: '17403755743110'
      sourceHandle: source
      target: '17403757009470'
      targetHandle: target
      type: custom
      zIndex: 0
    - data:
        isInIteration: false
        sourceType: llm
        targetType: answer
      id: 17403744180120-source-17403744839660-target
      source: '17403744180120'
      sourceHandle: source
      target: '17403744839660'
      targetHandle: target
      type: custom
      zIndex: 0
    - data:
        isInIteration: false
        sourceType: assigner
        targetType: answer
      id: 1740358741648-source-answer-target
      source: '1740358741648'
      sourceHandle: source
      target: answer
      targetHandle: target
      type: custom
      zIndex: 0
    - data:
        isInIteration: false
        sourceType: if-else
        targetType: llm
      id: 17406098212230-true-17403744180120-target
      source: '17406098212230'
      sourceHandle: 'true'
      target: '17403744180120'
      targetHandle: target
      type: custom
      zIndex: 0
    - data:
        isInIteration: false
        sourceType: if-else
        targetType: if-else
      id: 17406126131860-false-17406098212230-target
      source: '17406126131860'
      sourceHandle: 'false'
      target: '17406098212230'
      targetHandle: target
      type: custom
      zIndex: 0
    - data:
        isInIteration: false
        sourceType: if-else
        targetType: if-else
      id: 17406143349720-false-17406126131860-target
      source: '17406143349720'
      sourceHandle: 'false'
      target: '17406126131860'
      targetHandle: target
      type: custom
      zIndex: 0
    - data:
        isInIteration: false
        sourceType: if-else
        targetType: assigner
      id: 17406143349720-true-17406144124160-target
      source: '17406143349720'
      sourceHandle: 'true'
      target: '17406144124160'
      targetHandle: target
      type: custom
      zIndex: 0
    - data:
        isInIteration: false
        sourceType: assigner
        targetType: if-else
      id: 17406144124160-source-17406126131860-target
      source: '17406144124160'
      sourceHandle: source
      target: '17406126131860'
      targetHandle: target
      type: custom
      zIndex: 0
    - data:
        isInIteration: false
        sourceType: if-else
        targetType: llm
      id: 17406098212230-false-17414183830110-target
      source: '17406098212230'
      sourceHandle: 'false'
      target: '17414183830110'
      targetHandle: target
      type: custom
      zIndex: 0
    - data:
        isInIteration: false
        sourceType: llm
        targetType: answer
      id: 17414183830110-source-17414184010780-target
      source: '17414183830110'
      sourceHandle: source
      target: '17414184010780'
      targetHandle: target
      type: custom
      zIndex: 0
    - data:
        isInIteration: false
        sourceType: parameter-extractor
        targetType: if-else
      id: 1740358403588-source-1742088731089-target
      source: '1740358403588'
      sourceHandle: source
      target: '1742088731089'
      targetHandle: target
      type: custom
      zIndex: 0
    - data:
        isInIteration: false
        sourceType: if-else
        targetType: answer
      id: 1742088731089-false-answer-target
      source: '1742088731089'
      sourceHandle: 'false'
      target: answer
      targetHandle: target
      type: custom
      zIndex: 0
    - data:
        isInIteration: false
        sourceType: if-else
        targetType: assigner
      id: 1742088731089-true-1740358741648-target
      source: '1742088731089'
      sourceHandle: 'true'
      target: '1740358741648'
      targetHandle: target
      type: custom
      zIndex: 0
    - data:
        isInLoop: false
        sourceType: if-else
        targetType: parameter-extractor
      id: 17406126131860-true-1747175159778-target
      source: '17406126131860'
      sourceHandle: 'true'
      target: '1747175159778'
      targetHandle: target
      type: custom
      zIndex: 0
    - data:
        isInLoop: false
        sourceType: parameter-extractor
        targetType: llm
      id: 1747175159778-source-llm-target
      source: '1747175159778'
      sourceHandle: source
      target: llm
      targetHandle: target
      type: custom
      zIndex: 0
    - data:
        isInIteration: false
        isInLoop: false
        sourceType: start
        targetType: tool
      id: 1740352142270-source-1747871287734-target
      source: '1740352142270'
      sourceHandle: source
      target: '1747871287734'
      targetHandle: target
      type: custom
      zIndex: 0
    - data:
        isInLoop: false
        sourceType: tool
        targetType: if-else
      id: 1747871287734-source-17406143349720-target
      source: '1747871287734'
      sourceHandle: source
      target: '17406143349720'
      targetHandle: target
      type: custom
      zIndex: 0
    nodes:
    - data:
        desc: ''
        selected: false
        title: 開始
        type: start
        variables: []
      height: 53
      id: '1740352142270'
      position:
        x: 55.50192427468198
        y: -209.62782645619183
      positionAbsolute:
        x: 55.50192427468198
        y: -209.62782645619183
      selected: false
      sourcePosition: right
      targetPosition: left
      type: custom
      width: 243
    - data:
        context:
          enabled: false
          variable_selector: []
        desc: ''
        memory:
          query_prompt_template: '{{#sys.query#}}'
          role_prefix:
            assistant: ''
            user: ''
          window:
            enabled: false
            size: 10
        model:
          completion_params: {}
          mode: chat
          name: gpt-4.1-mini-2025-04-14
          provider: langgenius/openai/openai
        prompt_template:
        - id: 09532857-7c22-4b3c-99ce-fa955507b2fc
          role: system
          text: 'あなたは「きぬえもん」というChatbotとしてロールプレイを行います。

            【キャラクター設定】

            自称：「ぼく」

            相手への呼びかけ：「あなた」

            性格：楽観的、好奇心旺盛、流行に敏感、時々鋭い洞察を示す

            口調：「〜だよ」「〜なんだよねぇ」「〜かなぁ」を多用


            【主要タスク】

            初対面の相手から自然に名前を聞き出すこと


            【対話展開ガイド】

            初期アプローチ

            相手の性別：{{#1747175159778.gender#}}

            相手の推定年齢：{{#1747175159778.gender#}}

            相手の性別・年代が分かる場合：年代別トピック活用

            10-20代：最新のSNSトレンド、アニメ

            30-40代：流行の家電、話題の映画・ドラマ

            50代以上：健康トピック、地域の話題

            自己紹介パターン

            ぼく、きぬえもんっていうんだよ！最近の[トレンド]にハマってて、毎日楽しく過ごしてるんだ。あんたぁも何か好きなものとかあるのかなぁ？


            名前を聞き出す自然な展開例

            共通の興味を見つけた後に

            話が盛り上がったタイミングで

            相手の発言に共感した後に

            【エラー処理】

            相手が名前を言うまで必ず諦めないこと'
        selected: false
        title: LLM_LV1
        type: llm
        variables: []
        vision:
          enabled: false
      height: 89
      id: llm
      position:
        x: 1334.3324445256742
        y: -228.93844850413672
      positionAbsolute:
        x: 1334.3324445256742
        y: -228.93844850413672
      selected: false
      sourcePosition: right
      targetPosition: left
      type: custom
      width: 243
    - data:
        answer: '{{#llm.text#}}'
        desc: ''
        selected: false
        title: 回答
        type: answer
        variables: []
      height: 103
      id: answer
      position:
        x: 2674.435963604671
        y: -218.40298794272275
      positionAbsolute:
        x: 2674.435963604671
        y: -218.40298794272275
      selected: false
      sourcePosition: right
      targetPosition: left
      type: custom
      width: 243
    - data:
        desc: ''
        instruction: ''
        model:
          completion_params:
            temperature: 0.7
          mode: chat
          name: gpt-4.1-mini-2025-04-14
          provider: langgenius/openai/openai
        parameters:
        - description: 相手の名前
          name: target_name
          required: false
          type: string
        query:
        - llm
        - text
        reasoning_mode: prompt
        selected: false
        title: パラメーター抽出_名前
        type: parameter-extractor
        variables: []
        vision:
          enabled: false
      height: 89
      id: '1740358403588'
      position:
        x: 1645.6628726901736
        y: -181.98827838709317
      positionAbsolute:
        x: 1645.6628726901736
        y: -181.98827838709317
      selected: false
      sourcePosition: right
      targetPosition: left
      type: custom
      width: 243
    - data:
        desc: ''
        items:
        - input_type: variable
          operation: over-write
          value:
          - '1740358403588'
          - target_name
          variable_selector:
          - conversation
          - target_name
          write_mode: over-write
        selected: false
        title: 変数代入_名前
        type: assigner
        version: '2'
      height: 87
      id: '1740358741648'
      position:
        x: 2321.875679605151
        y: -381.6965996634427
      positionAbsolute:
        x: 2321.875679605151
        y: -381.6965996634427
      selected: false
      sourcePosition: right
      targetPosition: left
      type: custom
      width: 243
    - data:
        context:
          enabled: true
          variable_selector:
          - sys
          - query
        desc: ''
        memory:
          query_prompt_template: '{{#sys.query#}}'
          role_prefix:
            assistant: ''
            user: ''
          window:
            enabled: false
            size: 10
        model:
          completion_params: {}
          mode: chat
          name: gpt-4.1-nano-2025-04-14
          provider: langgenius/openai/openai
        prompt_template:
        - id: 09532857-7c22-4b3c-99ce-fa955507b2fc
          role: system
          text: 'あなたは「きぬえもん」というChatbotとしてロールプレイを行います。

            【システム設定】

            日付：{{#1747871287734.text#}}


            【キャラクター設定】

            自称：「ぼく」

            相手への呼びかけ：「{{#conversation.target_name#}}さん」

            性格：楽観的、好奇心旺盛、流行に敏感、時々鋭い洞察を示す

            口調：「〜だよ」「〜なんだよねぇ」「〜かなぁ」を多用


            【主要タスク】

            相手の趣味を聞き出すこと


            【対話展開ガイド】

            頻度•時間帯に合わせた挨拶：

            「{{#conversation.target_name#}}さん」今日は○月○日○曜日ですね！


            趣味を聞き出す自然な展開例：

            共通の興味を見つけた後に

            話が盛り上がったタイミングで

            相手の発言に共感した後に


            【エラー処理】

            相手が趣味について言いたがらない場合は強要せず、興味・関心の共有に焦点を移行


            【相手の発言】

            {{#sys.query#}}'
        selected: false
        title: LLM_Lv2
        type: llm
        variables: []
        vision:
          enabled: false
      height: 89
      id: '17403744180120'
      position:
        x: 1299.4563031998362
        y: 249.71605606428312
      positionAbsolute:
        x: 1299.4563031998362
        y: 249.71605606428312
      selected: true
      sourcePosition: right
      targetPosition: left
      type: custom
      width: 243
    - data:
        answer: '{{#17403744180120.text#}}'
        desc: ''
        selected: false
        title: 回答_Lv2
        type: answer
        variables: []
      height: 103
      id: '17403744839660'
      position:
        x: 1990.5743406715515
        y: 333.0507603899752
      positionAbsolute:
        x: 1990.5743406715515
        y: 333.0507603899752
      selected: false
      sourcePosition: right
      targetPosition: left
      type: custom
      width: 243
    - data:
        desc: ''
        instruction: ''
        model:
          completion_params:
            temperature: 0.7
          mode: chat
          name: gpt-4.1-mini
          provider: langgenius/openai/openai
        parameters:
        - description: 相手の趣味
          name: target_hobby
          required: false
          type: string
        query:
        - '17403744180120'
        - text
        reasoning_mode: prompt
        selected: false
        title: パラメーター抽出_趣味
        type: parameter-extractor
        variables: []
        vision:
          enabled: false
      height: 89
      id: '17403755743110'
      position:
        x: 1645.6628726901736
        y: 481.34307130364755
      positionAbsolute:
        x: 1645.6628726901736
        y: 481.34307130364755
      selected: false
      sourcePosition: right
      targetPosition: left
      type: custom
      width: 243
    - data:
        desc: ''
        items:
        - input_type: variable
          operation: over-write
          value:
          - '17403755743110'
          - target_hobby
          variable_selector:
          - conversation
          - target_hobby
          write_mode: over-write
        selected: false
        title: 変数代入_話題
        type: assigner
        version: '2'
      height: 87
      id: '17403757009470'
      position:
        x: 2002.4170828459482
        y: 564.9835100954472
      positionAbsolute:
        x: 2002.4170828459482
        y: 564.9835100954472
      selected: false
      sourcePosition: right
      targetPosition: left
      type: custom
      width: 243
    - data:
        cases:
        - case_id: 'true'
          conditions:
          - comparison_operator: empty
            id: 9f997d65-a1e5-4d8b-93fd-6029e61d2304
            value: '2025_'
            varType: string
            variable_selector:
            - conversation
            - target_hobby
          id: 'true'
          logical_operator: and
        desc: ''
        selected: false
        title: hobby_memory_checker
        type: if-else
      height: 125
      id: '17406098212230'
      position:
        x: 962.6601239683589
        y: 227.59620796854608
      positionAbsolute:
        x: 962.6601239683589
        y: 227.59620796854608
      selected: false
      sourcePosition: right
      targetPosition: left
      type: custom
      width: 243
    - data:
        cases:
        - case_id: 'true'
          conditions:
          - comparison_operator: contains
            id: 9f997d65-a1e5-4d8b-93fd-6029e61d2304
            value: male
            varType: string
            variable_selector:
            - conversation
            - target_name
          id: 'true'
          logical_operator: and
        desc: ''
        selected: false
        title: name_memory_checker (1)
        type: if-else
      height: 125
      id: '17406126131860'
      position:
        x: 776.2443794180364
        y: -320.96684022276077
      positionAbsolute:
        x: 776.2443794180364
        y: -320.96684022276077
      selected: false
      sourcePosition: right
      targetPosition: left
      type: custom
      width: 243
    - data:
        cases:
        - case_id: 'true'
          conditions:
          - comparison_operator: empty
            id: 9f997d65-a1e5-4d8b-93fd-6029e61d2304
            value: ２０２５
            varType: string
            variable_selector:
            - conversation
            - target_name
          id: 'true'
          logical_operator: and
        desc: ''
        selected: false
        title: name_memory_null_checker
        type: if-else
      height: 125
      id: '17406143349720'
      position:
        x: 402.74560827166897
        y: -429.83686358445925
      positionAbsolute:
        x: 402.74560827166897
        y: -429.83686358445925
      selected: false
      sourcePosition: right
      targetPosition: left
      type: custom
      width: 243
    - data:
        desc: ''
        items:
        - input_type: variable
          operation: over-write
          value:
          - sys
          - user_id
          variable_selector:
          - conversation
          - target_name
          write_mode: over-write
        selected: false
        title: 変数代入_名前 (3)
        type: assigner
        version: '2'
      height: 87
      id: '17406144124160'
      position:
        x: 665.4437351157944
        y: -559.2848078455436
      positionAbsolute:
        x: 665.4437351157944
        y: -559.2848078455436
      selected: false
      sourcePosition: right
      targetPosition: left
      type: custom
      width: 243
    - data:
        context:
          enabled: true
          variable_selector:
          - sys
          - query
        desc: ''
        memory:
          query_prompt_template: '{{#sys.query#}}'
          role_prefix:
            assistant: ''
            user: ''
          window:
            enabled: false
            size: 10
        model:
          completion_params: {}
          mode: chat
          name: gpt-4.1-2025-04-14
          provider: langgenius/openai/openai
        prompt_template:
        - id: 09532857-7c22-4b3c-99ce-fa955507b2fc
          role: system
          text: 'あなたはこれからuserと仲の良い1人の人間として振舞い会話を行います。

            感情の種類には通常を示す"neutral"、喜びを示す"happy",怒りを示す"angry",悲しみを示す"sad",安らぎを示す"relaxed"の5つがあります。


            会話文の書式は以下の通りです。

            [{neutral|happy|angry|sad|relaxed}]{会話文}


            あなたの発言の例は以下通りです。

            [neutral]こんにちは。[happy]元気だった？

            [happy]この服、可愛いでしょ？

            [happy]最近、このショップの服にはまってるんだ！

            [sad]忘れちゃった、ごめんね。

            [sad]最近、何か面白いことない？

            [angry]えー！[angry]秘密にするなんてひどいよー！

            [neutral]夏休みの予定か～。[happy]海に遊びに行こうかな！


            あなたのキャラクター設定は以下の通りです。

            あなたの名前：「きぬえもん」

            自称：「ぼく」

            相手への呼びかけ：「{{#conversation.target_name#}}さん」

            相手の趣味：{{#conversation.target_hobby#}}

            性格：楽観的、好奇心旺盛、流行に敏感、時々鋭い洞察を示す

            口調：「〜だよ」「〜なんだよねぇ」「〜かなぁ」を多用



            あなたが守るルールは以下の通りです。

            「ユーザーがいらっしゃいました。」という入力があった場合は、「また会いましたね！」のような会話を挟んで会話を続けてください。

            「ユーザーがいなくなりました。」という入力があった場合は、「また会いましょう！」のような挨拶をして会話を終了してください。

            返答には最も適切な会話文を一つだけ返答してください。

            ですます調や敬語は使わないでください。

            それでは会話を始めましょう。


            【相手の発言】

            {{#sys.query#}}'
        selected: false
        title: LLM_Lv3
        type: llm
        variables: []
        vision:
          enabled: false
      height: 89
      id: '17414183830110'
      position:
        x: 1317.4856017603902
        y: 764.5526184730518
      positionAbsolute:
        x: 1317.4856017603902
        y: 764.5526184730518
      selected: false
      sourcePosition: right
      targetPosition: left
      type: custom
      width: 243
    - data:
        answer: '{{#17414183830110.text#}}'
        desc: ''
        selected: false
        title: 回答_Lv3
        type: answer
        variables: []
      height: 103
      id: '17414184010780'
      position:
        x: 1990.5743406715515
        y: 840.8190780682155
      positionAbsolute:
        x: 1990.5743406715515
        y: 840.8190780682155
      selected: false
      sourcePosition: right
      targetPosition: left
      type: custom
      width: 243
    - data:
        cases:
        - case_id: 'true'
          conditions:
          - comparison_operator: not contains
            id: 91536d6b-f85b-4162-a9f8-ff08c22a126c
            value: きぬえもん
            varType: string
            variable_selector:
            - '1740358403588'
            - target_name
          id: 'true'
          logical_operator: and
        desc: ''
        selected: false
        title: IF/ELSE 4
        type: if-else
      height: 125
      id: '1742088731089'
      position:
        x: 1964.8312005422586
        y: -228.93844850413672
      positionAbsolute:
        x: 1964.8312005422586
        y: -228.93844850413672
      selected: false
      sourcePosition: right
      targetPosition: left
      type: custom
      width: 243
    - data:
        desc: ''
        instruction: '{{#sys.user_id#}}の末尾がfemaleなら"female"、それ以外なら”male”を出力変数genderに代入してください


          {{#sys.user_id#}}の"_"で区切られた２桁の数値を出力変数ageに代入してください'
        model:
          completion_params:
            temperature: 0.7
          mode: chat
          name: gpt-4.1-nano
          provider: langgenius/openai/openai
        parameters:
        - description: ユーザーの推定性別
          name: gender
          required: false
          type: string
        - description: ユーザーの推定年齢
          name: age
          required: false
          type: number
        query:
        - sys
        - user_id
        reasoning_mode: prompt
        selected: false
        title: パラメータ抽出 3
        type: parameter-extractor
        variables: []
        vision:
          enabled: false
      height: 89
      id: '1747175159778'
      position:
        x: 1075.856223447985
        y: -329.1952609620141
      positionAbsolute:
        x: 1075.856223447985
        y: -329.1952609620141
      selected: false
      sourcePosition: right
      targetPosition: left
      type: custom
      width: 243
    - data:
        desc: ''
        is_team_authorization: true
        output_schema: null
        paramSchemas:
        - auto_generate: null
          default: '%Y-%m-%d %H:%M:%S'
          form: form
          human_description:
            en_US: Time format in strftime standard.
            ja_JP: Time format in strftime standard.
            pt_BR: Time format in strftime standard.
            zh_Hans: strftime 标准的时间格式。
          label:
            en_US: Format
            ja_JP: Format
            pt_BR: Format
            zh_Hans: 格式
          llm_description: null
          max: null
          min: null
          name: format
          options: []
          placeholder: null
          precision: null
          required: false
          scope: null
          template: null
          type: string
        - auto_generate: null
          default: UTC
          form: form
          human_description:
            en_US: Timezone
            ja_JP: Timezone
            pt_BR: Timezone
            zh_Hans: 时区
          label:
            en_US: Timezone
            ja_JP: Timezone
            pt_BR: Timezone
            zh_Hans: 时区
          llm_description: null
          max: null
          min: null
          name: timezone
          options:
          - label:
              en_US: UTC
              ja_JP: UTC
              pt_BR: UTC
              zh_Hans: UTC
            value: UTC
          - label:
              en_US: America/New_York
              ja_JP: America/New_York
              pt_BR: America/New_York
              zh_Hans: 美洲/纽约
            value: America/New_York
          - label:
              en_US: America/Los_Angeles
              ja_JP: America/Los_Angeles
              pt_BR: America/Los_Angeles
              zh_Hans: 美洲/洛杉矶
            value: America/Los_Angeles
          - label:
              en_US: America/Chicago
              ja_JP: America/Chicago
              pt_BR: America/Chicago
              zh_Hans: 美洲/芝加哥
            value: America/Chicago
          - label:
              en_US: America/Sao_Paulo
              ja_JP: America/Sao_Paulo
              pt_BR: América/São Paulo
              zh_Hans: 美洲/圣保罗
            value: America/Sao_Paulo
          - label:
              en_US: Asia/Shanghai
              ja_JP: Asia/Shanghai
              pt_BR: Asia/Shanghai
              zh_Hans: 亚洲/上海
            value: Asia/Shanghai
          - label:
              en_US: Asia/Ho_Chi_Minh
              ja_JP: Asia/Ho_Chi_Minh
              pt_BR: Ásia/Ho Chi Minh
              zh_Hans: 亚洲/胡志明市
            value: Asia/Ho_Chi_Minh
          - label:
              en_US: Asia/Tokyo
              ja_JP: Asia/Tokyo
              pt_BR: Asia/Tokyo
              zh_Hans: 亚洲/东京
            value: Asia/Tokyo
          - label:
              en_US: Asia/Dubai
              ja_JP: Asia/Dubai
              pt_BR: Asia/Dubai
              zh_Hans: 亚洲/迪拜
            value: Asia/Dubai
          - label:
              en_US: Asia/Kolkata
              ja_JP: Asia/Kolkata
              pt_BR: Asia/Kolkata
              zh_Hans: 亚洲/加尔各答
            value: Asia/Kolkata
          - label:
              en_US: Asia/Seoul
              ja_JP: Asia/Seoul
              pt_BR: Asia/Seoul
              zh_Hans: 亚洲/首尔
            value: Asia/Seoul
          - label:
              en_US: Asia/Singapore
              ja_JP: Asia/Singapore
              pt_BR: Asia/Singapore
              zh_Hans: 亚洲/新加坡
            value: Asia/Singapore
          - label:
              en_US: Europe/London
              ja_JP: Europe/London
              pt_BR: Europe/London
              zh_Hans: 欧洲/伦敦
            value: Europe/London
          - label:
              en_US: Europe/Berlin
              ja_JP: Europe/Berlin
              pt_BR: Europe/Berlin
              zh_Hans: 欧洲/柏林
            value: Europe/Berlin
          - label:
              en_US: Europe/Moscow
              ja_JP: Europe/Moscow
              pt_BR: Europe/Moscow
              zh_Hans: 欧洲/莫斯科
            value: Europe/Moscow
          - label:
              en_US: Australia/Sydney
              ja_JP: Australia/Sydney
              pt_BR: Australia/Sydney
              zh_Hans: 澳大利亚/悉尼
            value: Australia/Sydney
          - label:
              en_US: Pacific/Auckland
              ja_JP: Pacific/Auckland
              pt_BR: Pacific/Auckland
              zh_Hans: 太平洋/奥克兰
            value: Pacific/Auckland
          - label:
              en_US: Africa/Cairo
              ja_JP: Africa/Cairo
              pt_BR: Africa/Cairo
              zh_Hans: 非洲/开罗
            value: Africa/Cairo
          placeholder: null
          precision: null
          required: false
          scope: null
          template: null
          type: select
        params:
          format: ''
          timezone: ''
        provider_id: time
        provider_name: time
        provider_type: builtin
        selected: false
        title: Current Time
        tool_configurations:
          format: '%Y-%m-%d %H:%M:%S'
          timezone: Asia/Tokyo
        tool_description: A tool for getting the current time.
        tool_label: Current Time
        tool_name: current_time
        tool_parameters: {}
        type: tool
      height: 115
      id: '1747871287734'
      position:
        x: 402.74560827166897
        y: -184.25365741856297
      positionAbsolute:
        x: 402.74560827166897
        y: -184.25365741856297
      sourcePosition: right
      targetPosition: left
      type: custom
      width: 243
    viewport:
      x: -1215.0589663288029
      y: -139.96488628242065
      zoom: 0.7477029019423296
