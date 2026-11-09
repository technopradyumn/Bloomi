// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Portuguese (`pt`).
class AppLocalizationsPt extends AppLocalizations {
  AppLocalizationsPt([String locale = 'pt']) : super(locale);

  @override
  String get app_name => 'Flori';

  @override
  String get nav_home => 'Página inicial';

  @override
  String get nav_today => 'Hoje';

  @override
  String get nav_plan => 'Plano';

  @override
  String get nav_food => 'Comida';

  @override
  String get nav_food_diary => 'Diário Alimentar';

  @override
  String get nav_workout => 'Registro de treino';

  @override
  String get nav_health => 'Saúde';

  @override
  String get nav_profile => 'Perfil';

  @override
  String get save => 'Salvar';

  @override
  String get cancel => 'Cancelar';

  @override
  String get delete => 'Excluir';

  @override
  String get edit => 'Editar';

  @override
  String get done => 'Concluído';

  @override
  String get close => 'Fechar';

  @override
  String get back => 'Voltar';

  @override
  String get next => 'Próximo';

  @override
  String get continue_btn => 'Continuar';

  @override
  String get confirm => 'Confirmar';

  @override
  String get search => 'Pesquisar';

  @override
  String get filter => 'Filtro';

  @override
  String get all => 'Todos';

  @override
  String get active => 'Ativo';

  @override
  String get today => 'Hoje';

  @override
  String get yesterday => 'Ontem';

  @override
  String get tomorrow => 'Amanhã';

  @override
  String get add => 'Adicionar';

  @override
  String get remove => 'Remover';

  @override
  String get refresh => 'Atualizar';

  @override
  String get retry => 'Tentar novamente';

  @override
  String get error => 'Erro';

  @override
  String get success => 'Sucesso';

  @override
  String get loading => 'Carregando...';

  @override
  String get no_data => 'Não há dados disponíveis';

  @override
  String get offline => 'Modo off-line';

  @override
  String get offline_sub =>
      'As alterações serão sincronizadas quando reconectadas';

  @override
  String get undo => 'Desfazer';

  @override
  String get portion => 'Porção';

  @override
  String get quantity => 'Quantidade';

  @override
  String get unit => 'Unidade';

  @override
  String get clear => 'Limpar';

  @override
  String get select => 'Selecione';

  @override
  String get apply => 'Aplicar';

  @override
  String get reset => 'Redefinir';

  @override
  String get ok => 'OK';

  @override
  String get yes => 'Sim';

  @override
  String get no => 'Não';

  @override
  String get optional => 'Opcional';

  @override
  String get calories => 'Calorias';

  @override
  String get protein => 'Proteína';

  @override
  String get carbs => 'Carboidratos';

  @override
  String get fat => 'Gordo';

  @override
  String get fiber => 'Fibra';

  @override
  String get water => 'Água';

  @override
  String get steps => 'Passos';

  @override
  String get kcal => 'calorias';

  @override
  String get grams => 'g';

  @override
  String get milliliters => 'ml';

  @override
  String get kilograms => 'kg';

  @override
  String get pounds => 'libras';

  @override
  String get centimeters => 'centímetros';

  @override
  String get inches => 'em';

  @override
  String get bpm => 'bpm';

  @override
  String get hours => 'horas';

  @override
  String get minutes => 'minutos';

  @override
  String get serving => 'Servindo';

  @override
  String get servings => 'Porções';

  @override
  String get serving_size => 'Tamanho da porção';

  @override
  String get per_100g => 'por 100g';

  @override
  String get india => 'Índia';

  @override
  String get asia => 'Ásia';

  @override
  String get europe => 'Europa';

  @override
  String get middle_east => 'Médio Oriente';

  @override
  String get africa => 'África';

  @override
  String get americas => 'Américas';

  @override
  String get home_title => 'Página inicial';

  @override
  String get home_greeting_morning => 'Bom dia';

  @override
  String get home_greeting_afternoon => 'Boa tarde';

  @override
  String get home_greeting_evening => 'Boa noite';

  @override
  String get home_streak_title => 'Faixa de flor';

  @override
  String home_streak_days(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dias consecutivos',
      one: 'Sequência de 1 dia',
      zero: 'sequência de 0 dias',
    );
    return '$_temp0';
  }

  @override
  String get home_calories_burned => 'Queimado';

  @override
  String get home_calories_budget => 'Orçamento de calorias';

  @override
  String home_calories_remaining(Object kcal) {
    return '$kcal kcal restantes';
  }

  @override
  String get home_water_title => 'Hidratação Diária';

  @override
  String home_water_goal(Object current, Object target) {
    return '$current / $target ml';
  }

  @override
  String get home_steps_title => 'Passos percorridos';

  @override
  String get home_quick_actions => 'Ações rápidas';

  @override
  String get home_log_meal => 'Refeição de registro';

  @override
  String get home_log_water => 'Registrar água';

  @override
  String get home_log_workout => 'Registrar treino';

  @override
  String get home_log_weight => 'Peso do registro';

  @override
  String get home_insights_title => 'Insights de hoje';

  @override
  String get home_quote =>
      'Pequenas escolhas saudáveis criam transformações florescentes.';

  @override
  String get home_ai_coach_tip => 'Treinador de IA Bloomi';

  @override
  String get home_surroundings => 'Ambiente e Ar';

  @override
  String get home_notifications => 'Notificações';

  @override
  String get home_daily_score => 'Pontuação diária de bem-estar';

  @override
  String get home_view_all => 'Ver tudo';

  @override
  String get food_diary_title => 'Diário Alimentar';

  @override
  String get food_breakfast => 'Café da manhã';

  @override
  String get food_lunch => 'Almoço';

  @override
  String get food_dinner => 'Jantar';

  @override
  String get food_snacks => 'Lanches';

  @override
  String get food_add_food => 'Adicionar comida';

  @override
  String get food_edit_food => 'Editar comida';

  @override
  String get food_add_breakfast => 'Adicionar café da manhã';

  @override
  String get food_add_lunch => 'Adicionar almoço';

  @override
  String get food_add_dinner => 'Adicionar jantar';

  @override
  String get food_add_snack => 'Adicionar lanche';

  @override
  String get food_total_calories => 'Calorias totais';

  @override
  String get food_empty_meal =>
      'Nenhum alimento registrado para esta refeição ainda';

  @override
  String get food_empty_diary => 'Nenhuma refeição registrada neste dia';

  @override
  String get food_log_first_meal =>
      'Toque em + para registrar sua primeira refeição deliciosa';

  @override
  String get food_quick_add => 'Adição rápida';

  @override
  String get food_search_hint => 'Pesquise pratos, frutas, dal, roti...';

  @override
  String get food_custom_recipe => 'Comida e receita personalizada';

  @override
  String get food_scan_barcode => 'Digitalizar código de barras';

  @override
  String get food_camera_scan => 'Scanner de alimentos com IA';

  @override
  String get food_recent => 'Alimentos recentes';

  @override
  String get food_favourites => 'Favoritos';

  @override
  String get food_macro_summary => 'Repartição de Macronutrientes';

  @override
  String get food_delete_meal_confirm =>
      'Tem certeza de que deseja remover este item?';

  @override
  String get food_item_deleted => 'Alimento removido';

  @override
  String get food_remaining => 'restante';

  @override
  String get food_consumed => 'consumido';

  @override
  String food_of_target(Object target) {
    return 'de $target kcal';
  }

  @override
  String get foodSearch_title => 'Pesquisar alimentos';

  @override
  String get foodSearch_scan_barcode => 'Digitalizar código de barras';

  @override
  String get foodSearch_take_photo => 'Foto instantânea de comida';

  @override
  String get foodSearch_custom_food => 'Crie comida personalizada';

  @override
  String get foodSearch_recent_searches => 'Pesquisas recentes';

  @override
  String get foodSearch_popular => 'Pratos Populares';

  @override
  String get foodSearch_no_results =>
      'Nenhum alimento que corresponda à sua pesquisa';

  @override
  String get barcode_title => 'Leitor de código de barras';

  @override
  String get barcode_align =>
      'Alinhe o código de barras dentro da moldura da câmera';

  @override
  String get barcode_not_found => 'Produto não encontrado no banco de dados';

  @override
  String get barcode_premium_feature =>
      'A leitura de código de barras está disponível com Bloomi Pro';

  @override
  String get camera_title => 'Scanner de alimentos com IA';

  @override
  String get camera_tap_hint => 'Tire uma foto nítida do seu prato';

  @override
  String get camera_analysing => 'Analisando prato de comida...';

  @override
  String get camera_detected => 'Itens detectados';

  @override
  String get camera_flash => 'Alternar Flash';

  @override
  String get camera_retake => 'Retirar foto';

  @override
  String get camera_confirm_food => 'Confirmar itens';

  @override
  String get customFood_title => 'Comida e receita personalizada';

  @override
  String get customFood_name_hint => 'Nome do prato ou ingrediente';

  @override
  String get customFood_calories_hint => 'Calorias (kcal)';

  @override
  String get customFood_protein_hint => 'Proteína (g)';

  @override
  String get customFood_carbs_hint => 'Carboidratos (g)';

  @override
  String get customFood_fat_hint => 'Gordura (g)';

  @override
  String get customFood_save => 'Salvar receita';

  @override
  String get water_tracker_title => 'Rastreador de água';

  @override
  String get water_daily_target => 'Meta diária de hidratação';

  @override
  String get water_logged_today => 'Registrado hoje';

  @override
  String get water_add_glass => 'Copo +250 ml';

  @override
  String get water_add_bottle => 'Garrafa +500 ml';

  @override
  String get water_custom_amount => 'Valor personalizado';

  @override
  String get water_reminder_tip =>
      'Beba água regularmente ao longo do dia para obter energia constante.';

  @override
  String water_logged_toast(Object amount) {
    return 'Registrado $amount ml de água 💧';
  }

  @override
  String get workout_title => 'Registro de treino';

  @override
  String get workout_add_exercise => 'Adicionar treino';

  @override
  String get workout_cardio => 'Cardiovascular';

  @override
  String get workout_strength => 'Força';

  @override
  String get workout_yoga => 'Ioga e flexibilidade';

  @override
  String get workout_duration => 'Duração';

  @override
  String get workout_intensity => 'Intensidade';

  @override
  String get workout_calories_burned => 'Calorias queimadas';

  @override
  String get workout_empty => 'Nenhum treino registrado hoje';

  @override
  String get workout_save_success => 'Treino salvo com sucesso!';

  @override
  String get workout_type => 'Tipo de treino';

  @override
  String get workout_notes => 'Notas e reflexões';

  @override
  String get health_overview_title => 'Saúde e sinais vitais';

  @override
  String get health_heart_rate => 'Frequência cardíaca';

  @override
  String get health_blood_oxygen => 'Oxigênio no sangue (SpO2)';

  @override
  String get health_blood_pressure => 'Pressão Arterial';

  @override
  String get health_blood_glucose => 'Glicose no sangue';

  @override
  String get health_body_temperature => 'Temperatura Corporal';

  @override
  String get health_sleep_tracking => 'Rastreamento do sono';

  @override
  String get health_weight_tracking => 'Peso e composição corporal';

  @override
  String get health_waist_hip => 'Relação cintura-quadril';

  @override
  String get health_devices_hub => 'Dispositivos e hub de smartwatch';

  @override
  String get health_sync_now => 'Sincronizar dados de saúde';

  @override
  String health_last_synced(Object time) {
    return 'Última sincronização: $time';
  }

  @override
  String get health_manual_entry => 'Entrada Manual de Saúde';

  @override
  String get health_metric_detail => 'Detalhes da métrica';

  @override
  String get health_connected_sensors => 'Sensores de saúde conectados';

  @override
  String get plan_title => 'Plano Diário';

  @override
  String get plan_weekly_title => 'Plano semanal de bem-estar';

  @override
  String get plan_calorie_target => 'Alvo de calorias';

  @override
  String get plan_water_target => 'Alvo de hidratação';

  @override
  String get plan_step_target => 'Etapa alvo';

  @override
  String get plan_sleep_target => 'Alvo de sono';

  @override
  String get plan_meal_suggestions => 'Sugestões de refeições';

  @override
  String get plan_healthy_habits => 'Hábitos e dicas saudáveis';

  @override
  String get plan_coach_advice => 'Recomendações do treinador Bloomi AI';

  @override
  String get plan_generated_title => 'Programação Diária Personalizada';

  @override
  String get profile_title => 'Perfil';

  @override
  String get profile_edit => 'Editar perfil';

  @override
  String get profile_name => 'Nome';

  @override
  String get profile_age => 'Idade';

  @override
  String get profile_gender => 'Gênero';

  @override
  String get profile_height => 'Altura';

  @override
  String get profile_weight => 'Peso';

  @override
  String get profile_goal => 'Objetivo principal';

  @override
  String get profile_activity_level => 'Nível de atividade';

  @override
  String get profile_stats => 'Minhas estatísticas de bem-estar';

  @override
  String get profile_saved => 'Perfil atualizado com sucesso';

  @override
  String get profile_bmi => 'Índice de Massa Corporal (IMC)';

  @override
  String get profile_membership => 'Associação';

  @override
  String get settings => 'Configurações';

  @override
  String get preferences_habits => 'PREFERÊNCIAS E HÁBITOS';

  @override
  String get appearance_theme => 'Aparência e tema';

  @override
  String get appearance_theme_sub =>
      'Opções de fundo escuro, claro, modo de sistema e plano de fundo do aplicativo';

  @override
  String get permissions => 'Permissões e acesso ao sistema';

  @override
  String get permissions_sub =>
      'Health Connect, sensores de passo, GPS, notificações e câmera';

  @override
  String get reminders_notifications => 'Lembretes e notificações';

  @override
  String get reminders_sub =>
      'Horário das refeições, água, verificação de peso e lembretes da hora de dormir';

  @override
  String get units_of_measurement => 'Unidades de medida';

  @override
  String get units_sub =>
      'Métrico (kg, cm, ml, km) ou Imperial (lbs, ft/in, fl oz)';

  @override
  String get app_language => 'Idioma do aplicativo';

  @override
  String get language_sub =>
      'Inglês, हिन्दी (Hindi), Hinglish e mais de 195 idiomas globais';

  @override
  String get home_screen_widgets => 'Widgets da tela inicial';

  @override
  String get widgets_sub =>
      'Widgets Android ao vivo: Hub, Passos, Água, Nutrição e Mascote';

  @override
  String get wear_os_watch_app => 'Aplicativo Wear OS Watch';

  @override
  String get wear_os_sub =>
      'Companheiro Smartwatch, blocos, complicações e sinais vitais ao vivo';

  @override
  String get goals_wellness => 'OBJETIVOS E INSIGHTS DE BEM-ESTAR';

  @override
  String get nutrition_targets => 'Metas nutricionais e divisão macro';

  @override
  String get nutrition_targets_sub =>
      'Meta de calorias, meta de proteínas, carboidratos, gordura e água';

  @override
  String get weekly_recap => 'Resumo semanal de bem-estar';

  @override
  String get weekly_recap_sub =>
      'Média de calorias em 7 dias, proporção macro e melhor dia';

  @override
  String get streaks_milestones => 'Sequências e marcos';

  @override
  String get streaks_sub => 'Estrias de flores ativas, emblemas e conquistas';

  @override
  String get connected_devices => 'DISPOSITIVOS CONECTADOS E ECOSSISTEMA';

  @override
  String get devices_hub => 'Dispositivos e hub de smartwatch';

  @override
  String get devices_hub_sub =>
      'Conexão Saúde, Galaxy Watch, Pixel Watch, Garmin';

  @override
  String get surroundings_weather => 'Ambiente e clima';

  @override
  String get surroundings_sub =>
      'Qualidade do ar (AQI), índice UV e dicas de hidratação climática';

  @override
  String get bloomi_pro => 'Assinatura Bloomi Pro';

  @override
  String get bloomi_pro_sub =>
      'AI Plan Coach, 5 widgets na tela inicial e rastreamento de sinais vitais';

  @override
  String get about_security => 'SOBRE E SEGURANÇA';

  @override
  String get about_bloomi => 'Sobre Bloom';

  @override
  String get about_bloomi_sub =>
      'Especificações de compilação, versão, atribuições';

  @override
  String get privacy_policy => 'Política de Privacidade';

  @override
  String get privacy_policy_sub =>
      'Arquitetura de dados off-line primeiro no dispositivo';

  @override
  String get terms_conditions => 'Termos e Condições';

  @override
  String get terms_conditions_sub =>
      'Termos de serviço e diretrizes de bem-estar';

  @override
  String get delete_account => 'Excluir conta e dados';

  @override
  String get delete_account_sub =>
      'Apague irreversivelmente dados SQLite locais e backups na nuvem';

  @override
  String get healthy_habits => 'Crie hábitos de bem-estar suaves e duradouros';

  @override
  String get all_logs => 'Meus dados e registros rastreados';

  @override
  String get search_language => 'Pesquise por idioma ou escrita nativa...';

  @override
  String get languages_available => 'Idiomas disponíveis';

  @override
  String get no_matching_languages => 'Nenhum idioma correspondente encontrado';

  @override
  String get try_searching =>
      'Tente pesquisar por escrita nativa ou ortografia em inglês';

  @override
  String get partially_translated => 'Parcialmente traduzido';

  @override
  String get complete_translation => 'Completo';

  @override
  String language_changed_toast(Object name, Object nativeName) {
    return 'Idioma definido como $name ( $nativeName )';
  }

  @override
  String get surroundings_title => 'Entorno e Meio Ambiente';

  @override
  String get surroundings_aqi => 'Índice de Qualidade do Ar';

  @override
  String get surroundings_uv => 'Índice UV';

  @override
  String get surroundings_temp => 'Temperatura';

  @override
  String get surroundings_humidity => 'Umidade';

  @override
  String get surroundings_hydration_advice =>
      'Mantenha-se bem hidratado nas condições climáticas atuais.';

  @override
  String get surroundings_refresh => 'Update Environmental Data';

  @override
  String get food_quick_search => 'Pesquisar comida';

  @override
  String get food_quick_barcode => 'Digitalize o código de barras 👑';

  @override
  String get food_quick_water => 'Adicionar água';

  @override
  String get food_quick_custom => 'Comida Personalizada';

  @override
  String get surroundings_good => 'Bom';

  @override
  String get surroundings_moderate => 'Moderado';

  @override
  String get surroundings_unhealthy => 'Não saudável';

  @override
  String get notifications_title => 'Notificações e alertas';

  @override
  String get notifications_empty => 'Nenhuma nova notificação';

  @override
  String get notifications_mark_read => 'Marcar tudo como lido';

  @override
  String get notifications_clear => 'Limpar tudo';

  @override
  String get reminders => 'Configurações de lembrete';

  @override
  String get notifications => 'Push Notifications';

  @override
  String get reminders_breakfast_title => 'Lembrete de café da manhã 🍳';

  @override
  String reminders_breakfast_body(Object time) {
    return 'Bom dia! É hora de um café da manhã nutritivo às $time.';
  }

  @override
  String get reminders_lunch_title => 'Lembrete de almoço 🥗';

  @override
  String reminders_lunch_body(Object time) {
    return 'Faça uma pausa e desfrute de um almoço equilibrado e consciente às $time .';
  }

  @override
  String get reminders_dinner_title => 'Lembrete de Jantar 🍲';

  @override
  String reminders_dinner_body(Object time) {
    return 'É hora de um jantar leve e satisfatório às $time .';
  }

  @override
  String get reminders_water_title => 'Nudge de hidratação 💧';

  @override
  String reminders_water_body(Object time) {
    return 'Hora de beber um copo de água fresca! ($time)';
  }

  @override
  String get reminders_weight_title => 'Pesagem Semanal ⚖️';

  @override
  String reminders_weight_body(Object time) {
    return 'Acompanhe suas métricas corporais semanais no Bloomi ($time).';
  }

  @override
  String get reminders_sleep_title => 'Relaxamento na hora de dormir 🌙';

  @override
  String reminders_sleep_body(Object time) {
    return 'Descontraia-se e prepare-se para um sono reparador ( $time ).';
  }

  @override
  String get onboard_welcome => 'Bem-vindo à Bloomi';

  @override
  String get onboard_sub =>
      'Seu companheiro de saúde e nutrição amigável e offline.';

  @override
  String get onboard_get_started => 'Comece';

  @override
  String get onboard_sign_in => 'Entrar';

  @override
  String get onboard_skip => 'Pular';

  @override
  String get onboard_choose_goal =>
      'Qual é o seu principal objetivo de bem-estar?';

  @override
  String get onboard_goal_weight_loss => 'Perda de peso suave';

  @override
  String get onboard_goal_muscle => 'Ganho e força muscular';

  @override
  String get onboard_goal_energy => 'Energia e Vitalidade Diária';

  @override
  String get onboard_goal_habits => 'Alimentação Saudável e Consciente';

  @override
  String get onboard_about_you => 'Conte-nos sobre você';

  @override
  String get onboard_lifestyle => 'Sua rotina diária';

  @override
  String get onboard_permissions_title => 'Permissões e acesso ao sistema';

  @override
  String get onboard_permissions_sub =>
      'Conceda acesso para sincronizar etapas, treinos e lembretes.';

  @override
  String get onboard_plan_ready_title => 'Seu plano personalizado está pronto!';

  @override
  String get onboard_plan_ready_sub =>
      'Elaboramos um roteiro de nutrição e bem-estar suave e personalizado só para você.';

  @override
  String get onboard_enter_bloomi => 'Entra Bloomi';

  @override
  String get insights_weekly_report => 'Resumo semanal de bem-estar';

  @override
  String insights_best_day(Object day) {
    return 'Melhor Dia de Consistência: $day';
  }

  @override
  String get insights_streaks_badges => 'Sequências e marcos';

  @override
  String insights_unlocked_on(Object date) {
    return 'Desbloqueado em $date';
  }

  @override
  String get insights_keep_going => 'Continue com o fantástico progresso!';

  @override
  String get widgets_title => 'Widgets da tela inicial';

  @override
  String widgets_active_count(Object count) {
    return 'Widgets ativos: $count';
  }

  @override
  String get widgets_hub_title => 'Centro de Bem-Estar Bloomi';

  @override
  String get widgets_steps_title => 'Passos e anel ativo';

  @override
  String get widgets_water_title => 'Registro rápido de hidratação';

  @override
  String get widgets_mascot_title => 'Companheiro Mascote Bloomi';

  @override
  String get wear_os_title => 'Use smartwatch com sistema operacional';

  @override
  String get wear_os_connected => 'Conectado para assistir';

  @override
  String get wear_os_sync => 'Sincronizar dados do relógio';

  @override
  String get theme_title => 'Aparência e tema';

  @override
  String get theme_mode => 'Modo Tema';

  @override
  String get theme_light => 'Luz';

  @override
  String get theme_dark => 'Escuro';

  @override
  String get theme_system => 'System';

  @override
  String get theme_background_palette => 'Paleta de fundo';

  @override
  String get units_title => 'Unidades de medida';

  @override
  String get units_metric => 'Métrico (kg, cm, ml)';

  @override
  String get units_imperial => 'Imperial (lbs, in, fl oz)';

  @override
  String get home_unable_load => 'Não foi possível carregar o painel';

  @override
  String get home_health_permission_req =>
      'Permissão do Health Connect necessária';

  @override
  String get home_health_permission_desc =>
      'Bloomi requer permissão do Health Connect para obter etapas reais, frequência cardíaca e sincronizar widgets de casa móvel em tempo real.';

  @override
  String get home_allow_health => 'Permitir Conexão Saúde';

  @override
  String get home_ready_mindful_day => 'Pronto para um dia consciente? ✨';

  @override
  String get home_quick_add => 'Adição rápida';

  @override
  String get home_live_gps => 'GPS ao vivo';

  @override
  String get home_calories_remaining_label => 'CALORIAS RESTANTES';

  @override
  String home_eaten_target(Object consumed, Object target) {
    return 'Consumido: $consumed / $target kcal';
  }

  @override
  String get home_tap_water_tracker => 'Toque para rastreador de água 💧';

  @override
  String get home_water_goal_reached => 'Meta diária alcançada 🎉';

  @override
  String home_water_to_daily_goal(Object remaining) {
    return '$remaining ml para meta diária';
  }

  @override
  String get home_details => 'Detalhes';

  @override
  String get home_upgrade_plan_desc =>
      'Atualize para desbloquear metas diárias personalizadas e plano de IA';

  @override
  String get home_unlock => 'Desbloquear 👑';

  @override
  String get home_quick_log_hint =>
      'Grave rapidamente uma entrada de bem-estar';

  @override
  String get food_serving_size => 'Tamanho da porção';

  @override
  String get food_serving_grams => 'Servindo (g)';

  @override
  String get food_number_servings => 'Número de porções';

  @override
  String get food_calories_per_serving => 'Calorias por porção';

  @override
  String get food_recipe_ingredients => 'Ingredientes';

  @override
  String get food_recipe_add_ingredient => 'Adicionar ingrediente';

  @override
  String get food_recipe_directions => 'Instruções e Notas';

  @override
  String get food_recipe_total => 'Nutrição Total de Receitas';

  @override
  String get food_recipe_per_serving => 'Nutrição por porção';

  @override
  String get food_recipe_saved_toast =>
      'Comida personalizada salva com sucesso!';

  @override
  String get food_barcode_found => 'Produto encontrado!';

  @override
  String get food_barcode_not_found_desc =>
      'Não foi possível encontrar este código de barras no banco de dados aberto. Você pode adicioná-lo como um alimento personalizado.';

  @override
  String get food_add_custom_btn => 'Adicionar comida personalizada';

  @override
  String get food_scan_again => 'Digitalizar novamente';

  @override
  String get food_review_items => 'Revise os alimentos detectados';

  @override
  String get food_review_hint =>
      'Ajuste quantidades ou remova qualquer item não reconhecido';

  @override
  String get food_log_selected => 'Registrar alimentos selecionados';

  @override
  String get food_favourites_title => 'Comidas favoritas';

  @override
  String get food_recent_title => 'Alimentos recentes';

  @override
  String get food_no_favourites =>
      'Ainda não há comida favorita. Toque com o coração em qualquer alimento para salvar aqui.';

  @override
  String get food_no_recents =>
      'Nenhum alimento registrado recentemente foi encontrado.';

  @override
  String get food_nutrition_details_title => 'Detalhes nutricionais diários';

  @override
  String get food_macro_protein_label => 'Repartição de proteínas';

  @override
  String get food_macro_carbs_label => 'Repartição de carboidratos';

  @override
  String get food_macro_fat_label => 'Repartição de gordura';

  @override
  String get food_macro_fiber_label => 'Quebra de fibra';

  @override
  String get food_daily_target_comparison => 'Comparação de metas';

  @override
  String food_target_label(Object target) {
    return 'Alvo: $target';
  }

  @override
  String get food_edit_entry => 'Editar entrada do diário';

  @override
  String get food_delete_entry => 'Excluir entrada';

  @override
  String food_grams_short(Object grams) {
    return '${grams}g';
  }

  @override
  String food_kcal_short(Object kcal) {
    return '${kcal}kcal';
  }

  @override
  String water_progress(Object current, Object target) {
    return '$current de $target ml';
  }

  @override
  String get water_intake_history => 'Registros de água de hoje';

  @override
  String get water_no_logs_today =>
      'Nenhuma água registrada ainda hoje. Hidrate-se e toque em um botão de adição rápida!';

  @override
  String get water_adjust_goal => 'Ajustar meta diária';

  @override
  String get health_connect_banner => 'Conectado ao Health Connect';

  @override
  String get health_vitals_summary => 'Sinais vitais diários de saúde';

  @override
  String get health_latest_heart_rate => 'Última frequência cardíaca';

  @override
  String get health_latest_bp => 'Pressão Arterial';

  @override
  String get health_latest_spo2 => 'Oxigênio no sangue';

  @override
  String get health_latest_glucose => 'Glicose no sangue';

  @override
  String get health_latest_weight => 'Peso';

  @override
  String get health_latest_sleep => 'Duração do sono';

  @override
  String get health_add_manual => 'Adicionar medição manual';

  @override
  String get health_history_trends => 'Tendências Históricas';

  @override
  String get health_sync_success => 'Dados de saúde sincronizados com sucesso!';

  @override
  String health_metric_sleep_hours(Object hours, Object mins) {
    return '$hours horas $mins minutos';
  }

  @override
  String health_metric_weight_val(Object val) {
    return '${val}kg';
  }

  @override
  String health_metric_hr_val(Object bpm) {
    return '$bpm bpm';
  }

  @override
  String health_metric_spo2_val(Object pct) {
    return '$pct%';
  }

  @override
  String health_metric_bp_val(Object diastolic, Object systolic) {
    return '$systolic / $diastolic mmHg';
  }

  @override
  String health_metric_glucose_val(Object val) {
    return '${val}mg/dL';
  }

  @override
  String get health_devices_title => 'Dispositivos conectados e wearables';

  @override
  String get health_devices_desc =>
      'Gerencie smartwatches, rastreadores de condicionamento físico e sensores de saúde emparelhados.';

  @override
  String get health_workout_editor_title => 'Editar treino';

  @override
  String get health_workout_name_label => 'Nome do treino';

  @override
  String get health_workout_duration_label => 'Duração (minutos)';

  @override
  String get health_workout_calories_label => 'Calorias estimadas (kcal)';

  @override
  String get health_workout_date_label => 'Data e hora';

  @override
  String get plan_daily_wellness_roadmap => 'Seu roteiro personalizado';

  @override
  String get plan_morning_routine => 'Rotina Matinal';

  @override
  String get plan_afternoon_routine => 'Bem-estar do meio-dia';

  @override
  String get plan_evening_routine => 'Relaxamento noturno';

  @override
  String get plan_coach_badge => 'Treinador de IA Bloomi';

  @override
  String get plan_weekly_overview => 'Foco no bem-estar de 7 dias';

  @override
  String get plan_targets_title => 'Metas e objetivos de bem-estar';

  @override
  String get plan_calorie_budget_label => 'Orçamento diário de calorias';

  @override
  String get plan_water_budget_label => 'Meta diária de água';

  @override
  String get plan_step_budget_label => 'Meta diária de passos';

  @override
  String get plan_macro_split_label => 'Proporção de Macronutrientes';

  @override
  String get profile_personal_details => 'Detalhes pessoais';

  @override
  String get profile_body_stats => 'Medidas Corporais';

  @override
  String get profile_app_preferences =>
      'Preferências e configurações do aplicativo';

  @override
  String get profile_edit_name_hint => 'Seu nome';

  @override
  String profile_edit_height_hint(Object unit) {
    return 'Altura ($unit)';
  }

  @override
  String profile_edit_weight_hint(Object unit) {
    return 'Peso ($unit)';
  }

  @override
  String get profile_edit_age_hint => 'Idade';

  @override
  String get profile_gender_male => 'Masculino';

  @override
  String get profile_gender_female => 'Feminino';

  @override
  String get profile_gender_other => 'Outro / Prefiro não dizer';

  @override
  String get profile_activity_sedentary =>
      'Sedentário (pouco ou nenhum exercício)';

  @override
  String get profile_activity_light => 'Levemente ativo (1-3 dias/semana)';

  @override
  String get profile_activity_moderate =>
      'Moderadamente ativo (3-5 dias/semana)';

  @override
  String get profile_activity_very => 'Muito ativo (6-7 dias/semana)';

  @override
  String get settings_wear_os_header => 'Aplicativo complementar do Wear OS';

  @override
  String get settings_wear_os_desc =>
      'Instale o bloco Bloomi e a complicação em seu relógio Wear OS para ver calorias, água e passos.';

  @override
  String get settings_widgets_header => 'Widgets interativos para Android';

  @override
  String get settings_widgets_desc =>
      'Fixe widgets em tempo real na tela inicial do seu dispositivo para atualizações instantâneas.';

  @override
  String get settings_about_header => 'Sobre Bloom';

  @override
  String get settings_about_version => 'Version';

  @override
  String get settings_about_build => 'Construir 100';

  @override
  String get settings_about_credits =>
      'Criado com cuidado para uma vida consciente e saudável.';

  @override
  String get settings_terms_header => 'Termos e Condições';

  @override
  String get settings_privacy_header => 'Política de Privacidade';

  @override
  String get settings_delete_header => 'Excluir conta e dados';

  @override
  String get settings_delete_warning =>
      'Esta ação não pode ser desfeita. Todas as suas refeições, treinos, sinais vitais e perfil serão excluídos permanentemente.';

  @override
  String get settings_delete_confirm_btn => 'Excluir permanentemente';

  @override
  String get onboard_welcome_headline => 'Bem-vindo à Bloomi ✨';

  @override
  String get onboard_welcome_tagline =>
      'Acompanhamento de bem-estar suave e cuidadoso, projetado para sua vida.';

  @override
  String get onboard_step_about => 'Sobre você';

  @override
  String get onboard_step_goals => 'Seus objetivos';

  @override
  String get onboard_step_lifestyle => 'Hábitos Diários';

  @override
  String get onboard_step_permissions => 'Permissões';

  @override
  String get onboard_step_plan => 'Pronto!';

  @override
  String get onboard_health_connect_perm => 'Acesso ao Health Connect';

  @override
  String get onboard_step_sensors_perm => 'Sensor de contador de passos';

  @override
  String get onboard_notif_perm => 'Lembretes e notificações conscientes';

  @override
  String get onboard_camera_perm =>
      'Câmera (código de barras e scanner de alimentos)';

  @override
  String get onboard_grant_permissions => 'Conceder permissões';

  @override
  String get onboard_continue_dashboard => 'Abra o painel';

  @override
  String get notif_channel_hydration_name => 'Dicas de hidratação';

  @override
  String get notif_channel_hydration_desc =>
      'Lembretes suaves de água ao longo do dia';

  @override
  String get notif_channel_nutrition_name =>
      'Lembretes de refeições e nutrição';

  @override
  String get notif_channel_nutrition_desc =>
      'Alertas de lembrete de café da manhã, almoço e jantar';

  @override
  String get notif_channel_steps_name => 'Marcos de etapas';

  @override
  String get notif_channel_steps_desc =>
      'Comemorações ao atingir metas diárias de passos';

  @override
  String get notif_channel_vitals_name =>
      'Verificações de saúde e sinais vitais';

  @override
  String get notif_channel_vitals_desc =>
      'Lembretes de redução de peso e hora de dormir';

  @override
  String get notif_action_log_water => '💧 Registro +250ml';

  @override
  String get notif_action_snooze => 'Soneca 15m';

  @override
  String get notif_action_log_meal => '🥗 Registro de refeição';

  @override
  String get language => 'Language';

  @override
  String get share => 'Share';

  @override
  String common_days(Object count) {
    return '${count}d ago';
  }
}
