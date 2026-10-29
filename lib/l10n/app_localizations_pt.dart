// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Portuguese (`pt`).
class AppLocalizationsPt extends AppLocalizations {
  AppLocalizationsPt([String locale = 'pt']) : super(locale);

  @override
  String get account => 'conta';

  @override
  String get appTitle => 'skillably';

  @override
  String get askToVerifyEmailFirst => 'peça para verificar o e-mail primeiro';

  @override
  String get askUserToCompleteTheirProfile =>
      'por favor, complete o seu perfil para continuar';

  @override
  String get bioMessage => 'conte-nos um pouco sobre você';

  @override
  String get birthday => 'data de nascimento';

  @override
  String get byte => 'byte';

  @override
  String get changePassword => 'mudar senha';

  @override
  String get checkYourEmailInbox => 'verifique sua caixa de entrada';

  @override
  String get country => 'país';

  @override
  String get chapters => 'capítulos';

  @override
  String get lessons => 'lições';

  @override
  String get expiredAt => 'expirou em';

  @override
  String get contentGeneration => 'geração de conteúdo';

  @override
  String get createProfile => 'criar perfil';

  @override
  String get allowPermission => 'permitir permissão';

  @override
  String get finishedQuizMessage =>
      'ótimo trabalho - você respondeu todas as perguntas. Mantenha o ritmo e vá para a próxima lição.';

  @override
  String get finishedQuizTitle => 'quiz concluído!';

  @override
  String get backToLessons => 'voltar para as lições';

  @override
  String get startQuiz => 'iniciar quiz';

  @override
  String get dark => 'escuro';

  @override
  String get excellent => 'excelente';

  @override
  String get notQuite => 'quase lá!';

  @override
  String get check => 'verificar';

  @override
  String get kTrue => 'verdadeiro';

  @override
  String get kFalse => 'falso';

  @override
  String get updateTopic => 'atualizar tópico';

  @override
  String get enterTopicNotesHint =>
      'ex: \'estas são as notas para o meu tópico de aprendizado de máquina\'';

  @override
  String get email => 'e-mail';

  @override
  String get deleteTopic => 'excluir tópico';

  @override
  String get chapter => 'capítulo';

  @override
  String get file => 'arquivo';

  @override
  String get upload => 'enviar';

  @override
  String get noTopics =>
      'o tempo é seu \n nenhum tópico de estudo foi criado ainda.';

  @override
  String get notes => 'notas';

  @override
  String get selectMaterials => 'selecionar materiais';

  @override
  String get enterTopicNameHint =>
      'ex: \'introdução ao aprendizado de máquina\'';

  @override
  String get topicName => 'nome do tópico';

  @override
  String get topicNameDescription =>
      'insira um nome descritivo para o seu tópico para esclarecer o material que você deseja estudar.';

  @override
  String get errorGettingGoogleTokenMessage => 'erro ao obter token do google';

  @override
  String get errorSendingEmail => 'erro ao enviar e-mail';

  @override
  String get exabyte => 'exabyte';

  @override
  String get kContinue => 'continuar';

  @override
  String get conversation => 'conversa';

  @override
  String get firstName => 'nome';

  @override
  String get startConversationMessage => 'o que está em sua mente hoje?';

  @override
  String get startConversationHintText => 'digite qualquer coisa...';

  @override
  String get chat => 'bate-papo';

  @override
  String get fullName => 'nome completo';

  @override
  String get message => 'mensagem';

  @override
  String get history => 'histórico';

  @override
  String get gender => 'gênero';

  @override
  String get getResetPasswordLink => 'obter link de redefinição de senha';

  @override
  String get gigabyte => 'gigabyte';

  @override
  String goCheckEmailForConfirmationLink(Object email) {
    return 'bem-vindo a bordo! para concluir sua inscrição, vá para a caixa de entrada de $email e clique no link de confirmação que enviamos. (não se esqueça de verificar sua pasta de spam.)';
  }

  @override
  String get google => 'google';

  @override
  String get hello => 'olá';

  @override
  String get invalidPhoneNumber => 'número de telefone inválido';

  @override
  String get invalidResetPasswordLink =>
      'link de redefinição de senha inválido';

  @override
  String get kilobyte => 'kilobyte';

  @override
  String get lastName => 'sobrenome';

  @override
  String get light => 'claro';

  @override
  String logInInstead(Object appName) {
    return 'já tem uma conta $appName? faça login';
  }

  @override
  String get megabyte => 'megabyte';

  @override
  String get newPassword => 'nova senha';

  @override
  String get ok => 'ok';

  @override
  String get password => 'senha';

  @override
  String get passwordChangedMessage => 'sua senha foi alterada com sucesso.';

  @override
  String get passwordMustBeatLeast8Characters =>
      'a senha deve ter pelo menos 8 caracteres';

  @override
  String get passwordMustContainAtLeastOneCapitalLetter =>
      'a senha deve conter pelo menos uma letra maiúscula';

  @override
  String get passwordMustContainAtLeastOneNumber =>
      'a senha deve conter pelo menos um número';

  @override
  String get passwordMustContainAtLeastOneSpecialCharacters =>
      'a senha deve conter pelo menos um caractere especial';

  @override
  String get passwordsMissMatching => 'as duas senhas não coincidem';

  @override
  String pendingUserInvitationMessage(Object pendingInvitationCount) {
    return 'você tem $pendingInvitationCount convites pendentes.';
  }

  @override
  String get petabyte => 'petabyte';

  @override
  String get phoneNumber => 'número de telefone';

  @override
  String get privacyPolicy => 'política de privacidade';

  @override
  String get profileUpdatedSuccessfully => 'perfil atualizado com sucesso';

  @override
  String get providedByGoogleLogIn => 'fornecido pelo login do google';

  @override
  String get publicFieldMessage => 'essas informações serão públicas';

  @override
  String get requiredFieldMessage => 'este campo é obrigatório';

  @override
  String get resendConfirmationLinkEmailMessage =>
      'não recebeu o link de verificação? clique para reenviar.';

  @override
  String get resetPassword => 'redefinir senha';

  @override
  String get retypeNewPassword => 'redigite a nova senha';

  @override
  String get retypePassword => 'redigite a senha';

  @override
  String get save => 'salvar';

  @override
  String get selectDate => 'selecionar data';

  @override
  String get selectGender => 'selecionar gênero';

  @override
  String get signInAfterVerifiedEmailMessage =>
      'e-mail verificado. entrar agora?';

  @override
  String get signUp => 'inscrever-se';

  @override
  String get syncWithSystem => 'sincronizar com o sistema';

  @override
  String get tellUserSignUpInSignInPage => 'novo usuário? inscreva-se agora!';

  @override
  String get terabyte => 'terabyte';

  @override
  String get termsOfUse => 'termos de uso';

  @override
  String get unValidEmailMessage => 'e-mail inválido';

  @override
  String get userCanceled => 'usuário cancelado.';

  @override
  String get verifyingEmail => 'verificando e-mail...';

  @override
  String get yottabyte => 'yottabyte';

  @override
  String get profile => 'perfil';

  @override
  String get edit => 'editar';

  @override
  String get alreadyHaveAnAccount => 'já tem uma conta? Entrar';

  @override
  String get showPassword => 'mostrar senha';

  @override
  String get bio => 'biografia';

  @override
  String get createTopic => 'criar tópico';

  @override
  String get topics => 'tópicos';

  @override
  String get settings => 'configurações';

  @override
  String get home => 'início';

  @override
  String get signIn => 'entrar';

  @override
  String get apply => 'aplicar';

  @override
  String get topic => 'tópico';

  @override
  String get content => 'conteúdo';

  @override
  String get errorLoadingImage => 'erro ao carregar imagem';

  @override
  String get cropImage => 'cortar imagem';

  @override
  String get contactUs => 'contate-nos';

  @override
  String get sendFeedback => 'enviar feedback';

  @override
  String get contactUsWithEmail => 'contate-nos por e-mail';

  @override
  String elementCreatedSuccessfully(Object element) {
    return '$element criado com sucesso.';
  }

  @override
  String elementDeletedSuccessfully(Object element) {
    return '$element excluído com sucesso.';
  }

  @override
  String elementRetrievedSuccessfully(Object element) {
    return '$element recuperado com sucesso.';
  }

  @override
  String elementUpdatedSuccessfully(Object element) {
    return '$element atualizado com sucesso.';
  }

  @override
  String get feedbackTitleMessage =>
      'sinta-se à vontade para enviar seu feedback.';

  @override
  String get pickCategory => 'escolher categoria';

  @override
  String get feedback => 'feedback';

  @override
  String get submit => 'enviar';

  @override
  String get bugs => 'bugs';

  @override
  String get featureRequest => 'solicitação de recurso';

  @override
  String get question => 'pergunta';

  @override
  String get pricing => 'preços';

  @override
  String get other => 'outro';

  @override
  String get userFeedback => 'feedback do usuário';

  @override
  String get clearCache => 'limpar cache';

  @override
  String get signOut => 'sair';

  @override
  String get emptyHistoryRoutes => 'rotas de histórico vazias.';

  @override
  String get sorryAppFacingIssue =>
      'desculpe, o aplicativo está enfrentando um problema. esse problema provavelmente é do nosso servidor ou fora do controle do desenvolvedor.';

  @override
  String get noPermissionMessage => 'sem permissão para visualizar';

  @override
  String get comingSoon => 'em breve';

  @override
  String get loadingMessage => 'carregando, por favor aguarde...';

  @override
  String get noSelectionMessage => 'você não selecionou nada.';

  @override
  String get changeImage => 'alterar imagem';

  @override
  String get invalidData => 'dados inválidos.';

  @override
  String get pickImage => 'escolher imagem';

  @override
  String get done => 'concluído';

  @override
  String get confirmDeletionAction => 'confirmar exclusão';

  @override
  String get confirmThisActionMessage =>
      'tem certeza de que deseja realizar esta ação? isso não pode ser desfeito.';

  @override
  String get discard => 'descartar';

  @override
  String get delete => 'excluir';

  @override
  String get doYouWantToContinue => 'deseja continuar?';

  @override
  String get retry => 'tentar novamente';

  @override
  String get goToSubscriptions => 'ir para assinaturas';

  @override
  String errorCode(Object code) {
    return 'código de erro: $code';
  }

  @override
  String get noData => 'sem dados para mostrar.';

  @override
  String get or => 'ou';

  @override
  String get poweredByAtheerio => 'desenvolvido por atheerio';

  @override
  String get reCaptchaMessage =>
      'este site é protegido pelo recaptcha e pelo google';

  @override
  String get and => 'e';

  @override
  String get badRequestException => 'solicitação inválida';

  @override
  String get netWorkConnectionErrorMessage => 'sem conexão com a internet';

  @override
  String get sessionExpiredFailureMessage =>
      'sua sessão expirou, faça login novamente';

  @override
  String get paymentRequiredFailureMessage => 'pagamento necessário';

  @override
  String get forbiddenFailureMessage =>
      'você não tem permissão para executar esta ação';

  @override
  String get cacheFailure => 'falha de cache';

  @override
  String get metaAuthErrorMessage => 'erro de autenticação meta';

  @override
  String get unKnownErrorMessage => 'ocorreu um erro desconhecido';

  @override
  String get logout => 'sair';

  @override
  String get optional => 'opcional';

  @override
  String get youChangesWillBeLost => 'suas alterações serão perdidas';

  @override
  String versionInfo(Object version) {
    return 'versão $version';
  }

  @override
  String get general => 'geral';

  @override
  String get appTheme => 'tema do aplicativo';

  @override
  String get language => 'idioma';

  @override
  String get more => 'mais';

  @override
  String get editNotificationPreferences =>
      'editar preferências de notificação';

  @override
  String get cancel => 'cancelar';

  @override
  String get legal => 'legal';

  @override
  String get chooseLanguage => 'escolher idioma';

  @override
  String get notification => 'notificação';

  @override
  String get markAllAsRead => 'marcar tudo como lido';

  @override
  String get notifications => 'notificações';

  @override
  String get settingsUpdatedSuccessfully =>
      'configurações atualizadas com sucesso.';

  @override
  String get welcomeBack => 'bem-vindo de volta!';

  @override
  String get acceptLegalNotesSuffix => '.';

  @override
  String get addBalance => 'recarregar carteira';

  @override
  String get acceptLegalNotesAnd => ' e o ';

  @override
  String createItem(Object item) {
    return 'criar $item';
  }

  @override
  String get emailVerifiedMessage =>
      'ótimo! seu e-mail foi verificado com sucesso.';

  @override
  String get notValidLinkMessage =>
      'este link não é válido. tente enviar um novo ou faça login se já confirmou seu e-mail.';

  @override
  String get yourProfile => 'seu perfil';

  @override
  String get pay => 'pagar';

  @override
  String get createdAt => 'criado em';

  @override
  String get recommended => 'recomendado';

  @override
  String get total => 'total';

  @override
  String get annualDiscountDescription =>
      'Pague por 10 meses, ganhe um ano completo.';

  @override
  String get createdBy => 'criado por';

  @override
  String get paidAt => 'pago em';

  @override
  String get description => 'descrição';

  @override
  String get sendInvoiceToEmail =>
      'este e-mail será usado para enviar a fatura.';

  @override
  String get paymentPhoneNumber =>
      'seu número de telefone registrado com o método de pagamento.';

  @override
  String get addFunds => 'adicionar fundos';

  @override
  String get fillFollowingFields => 'preencha os seguintes campos:';

  @override
  String get confirm => 'confirmar';

  @override
  String get copiedToClipboard => 'copiado para a área de transferência!';

  @override
  String get amount => 'quantia';

  @override
  String get invoiceDescription => 'notas para esta fatura (opcional)';

  @override
  String get purchaseService => 'comprar um serviço';

  @override
  String pricingPageTitleFromPaid(Object planName) {
    return 'Você está atualmente no plano $planName. Explore outras opções ou gerencie seu faturamento abaixo.';
  }

  @override
  String get acceptLegalNotesPrefix => 'ao marcar esta caixa, você aceita o ';

  @override
  String get zettabyte => 'zettabyte';

  @override
  String itemDetails(Object item) {
    return 'detalhes do $item';
  }

  @override
  String get invoiceCurrency => 'moeda da fatura';

  @override
  String get payMonthly => 'pagar mensalmente';

  @override
  String get payYearly => 'pagar anualmente';

  @override
  String itemNo(Object item) {
    return 'número do $item';
  }

  @override
  String itemType(Object item) {
    return 'tipo de $item';
  }

  @override
  String get dollar => 'dólar (\$)';

  @override
  String get annualDiscountBadge => '2 Meses Grátis';

  @override
  String get continuing => 'continuando';

  @override
  String get payment => 'pagamento';

  @override
  String get pricingPageTitle =>
      'Coloque suas redes sociais no piloto automático.\nComece a automatizar gratuitamente.';

  @override
  String daysRemaining(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dias restantes',
      one: '$count dia restante',
      zero: 'Nenhum dia restante',
    );
    return '$_temp0';
  }

  @override
  String get forgetPasswordMessage => 'esqueceu a senha?';

  @override
  String get youCanCloseThisPage => 'você pode fechar esta página agora.';

  @override
  String get signInWithNewPassword => 'entrar com nova senha';

  @override
  String get operationCompletedSuccessfully =>
      'operação concluída com sucesso.';

  @override
  String get pricingPageTitleFromFree =>
      'Pronto para desbloquear mais poder? Escolha o plano que melhor se adapta às suas necessidades crescentes.';

  @override
  String get invoice => 'fatura';

  @override
  String get invoices => 'faturas';

  @override
  String get currentSubscription => 'assinatura atual';

  @override
  String get activeSubscription => 'assinatura ativa';

  @override
  String get manage => 'gerenciar';

  @override
  String get upgrade => 'atualizar';

  @override
  String get neverExpires => 'nunca expira';

  @override
  String get personal => 'pessoal';

  @override
  String get subscription => 'assinatura';

  @override
  String get selectCountry => 'selecione o país';

  @override
  String get betterExperienceAvailable => 'melhor experiência disponível';

  @override
  String get continueWithGoogle => 'continuar com o google';

  @override
  String get betterExperienceDescription =>
      'para a melhor experiência, recomendamos abrir este aplicativo no seu navegador padrão.';

  @override
  String get messageAfterSendingResetPasswordLink =>
      'enviamos um link de redefinição de senha para o seu endereço de e-mail. verifique sua caixa de entrada (incluindo a pasta de spam) e siga as instruções.';

  @override
  String get messageSuccessResetPasswordLink =>
      'tudo pronto! sua senha foi redefinida com sucesso. agora você pode fazer login com sua nova senha.';

  @override
  String get month => 'mês';

  @override
  String get unpaid => 'não pago';

  @override
  String get paid => 'pago';

  @override
  String get canceled => 'cancelado';

  @override
  String get free => 'grátis';

  @override
  String get aboutApp => 'sobre o aplicativo';

  @override
  String get copyUrlDescription =>
      'alternativamente, você pode copiar a url atual e colar no seu navegador.';

  @override
  String get copyUrl => 'copiar url';

  @override
  String get urlCopied => 'url copiada para a área de transferência!';

  @override
  String get continueHere => 'continue aqui';

  @override
  String get uploadMaterial => 'fazer upload de material';

  @override
  String get noFilesUploaded => 'nenhum arquivo foi enviado ainda.';

  @override
  String get pressToUploadNow => 'pressione para enviar agora';

  @override
  String get materials => 'materiais';

  @override
  String get male => 'masculino';

  @override
  String get female => 'feminino';

  @override
  String get notSpecified => 'não especificado';

  @override
  String get newFreeTrial => 'preciso de um novo teste grátis';

  @override
  String get switchingTool => 'quero usar outra ferramenta';

  @override
  String get notSatisfied => 'não gostei';

  @override
  String get hadAnIssue => 'tive um problema técnico';

  @override
  String get lackOfSupport => 'falta de suporte';

  @override
  String get deleteAccount => 'excluir conta';

  @override
  String get tooExpensive => 'é muito caro';

  @override
  String get missingFeatures => 'faltam recursos que eu preciso';

  @override
  String get justDeleteIt => 'apenas exclua';

  @override
  String get noMaterials =>
      'nenhum material enviado ainda!\nVocê precisa de pelo menos um material para estudar.';

  @override
  String get noMaterialInTopic =>
      'Este tópico ainda não possui nenhum material. Faça o upload para começar.';

  @override
  String get authFlowConflictFailureMessage =>
      'há um conflito com o fluxo de autenticação atual.';

  @override
  String get emailVerificationRequiredFailureMessage =>
      'é necessária a verificação de e-mail para continuar.';

  @override
  String get deleteYourAccount => 'exclua sua conta';

  @override
  String get important => 'importante';

  @override
  String get weValueYourFeedback => 'valorizamos o seu feedback...';

  @override
  String deleteAccountWarningText(String justDelete, int days) {
    return 'selecionar \'$justDelete\' agendará sua conta para exclusão permanente em $days dias. Todos os seus dados serão apagados.';
  }

  @override
  String get whyAreYouLeaving =>
      'por favor, nos diga por que você está saindo:';

  @override
  String get tellUsMoreAboutTheIssue =>
      'você pode nos dar mais detalhes sobre o problema?';
}
