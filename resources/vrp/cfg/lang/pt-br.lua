
-- define all language properties

local lang = {
  common = {
    welcome = "Bem vindo. Aperte F9 para abrir o menu.~n~ultimo login: {1}",
    no_player_near = "~r~Nenhum jogador perto de você.",
    invalid_value = "~r~Valor inválido.",
    invalid_name = "~r~Nome inválido.",
    not_found = "~r~Não encontrado.",
    request_refused = "~r~Pedido recusado.",
    wearing_uniform = "~r~Tenha cuidado, você está vestindo um uniforme.",
    not_allowed = "~r~Não permitido."
  },
  survival = {
    starving = "fome",
    thirsty = "sede"
  },
  money = {
    display = "{1} <span class=\"symbol\">R$</span>",
    given = "Dar ~r~{1}R$.",
    received = "Recebeu ~g~{1}R$.",
    not_enough = "~r~Dinheiro insuficiente.",
    paid = "Pagar ~r~{1}R$.",
    give = {
      title = "Dar dinheiro",
      description = "Dê dinheiro ao jogador mais próximo.",
      prompt = "Quantidade para dar:"
    }
  },
  inventory = {
    title = "Iventário",
    description = "Abra o iventário.",
    iteminfo = "({1})<br /><br />{2}<br /><em>{3} kg</em>",
    info_weight = "peso {1}/{2} kg",
    give = {
      title = "Dar",
      description = "Dar um item para o jogador mais próximo.",
      prompt = "Quantidade para dar (max {1}):",
      given = "Dar ~r~{1} ~s~{2}.",
      received = "Recebeu ~g~{1} ~s~{2}.",
    },
    trash = {
      title = "Lixo",
      description = "Destruir item.",
      prompt = "Quantidade para destruir (max {1}):",
      done = "Destruido ~r~{1} ~s~{2}."
    },
    missing = "~r~Está Faltando {2} {1}.",
    full = "~r~Inventário cheio.",
    chest = {
      title = "Baú",
      already_opened = "~r~Este baú já foi aberto por outra pessoa.",
      full = "~r~Baú cheio.",
      take = {
        title = "Pegar",
        prompt = "Quantidade para pegar (max {1}):"
      },
      put = {
        title = "Colocar",
        prompt = "Quantidade para colocar (max {1}):"
      }
    }
  },
  atm = {
    title = "Caixa Eletrônico",
    info = {
      title = "Informações",
      bank = "Banco: {1} R$"
    },
    deposit = {
      title = "Depositar",
      description = "Carteira para o banco",
      prompt = "Insira o valor do depósito:",
      deposited = "~r~{1}R$~s~ Depositado."
    },
    withdraw = {
      title = "Retirar",
      description = "Banco para Carteira",
      prompt = "Insira o valor da retirada:",
      withdrawn = "~g~{1}R$ ~s~Retirou.",
      not_enough = "~r~Você não tem dinheiro suficiente no banco."
    }
  },
  business = {
    title = "Câmara do Comércio",
    directory = {
      title = "Diretório",
      description = "Diretório de negócios.",
      dprev = "> Anterior",
      dnext = "> Próximo",
      info = "<em>capital: </em>{1} R$<br /><em>proprietário: </em>{2} {3}<br /><em>cadastro n°: </em>{4}<br /><em>telefone: </em>{5}"
    },
    info = {
      title = "Informações comerciais",
      info = "<em>name: </em>{1}<br /><em>capital: </em>{2} R$<br /><em>Transferência de capital: </em>{3} R$<br /><br/>A transferência de capital é a quantia de dinheiro transferida para um período econômico comercial, o máximo é o capital da empresa."
    },
    addcapital = {
      title = "Adicionar capital",
      description = "Adicione capital ao seu negócio.",
      prompt = "Montante para adicionar ao capital da empresa:",
      added = "~r~{1}R$ ~s~Adicionado ao capital comercial."
    },
    launder = {
      title = "Lavagem de dinheiro",
      description = "Use seu negócio para lavar dinheiro sujo.",
      prompt = "Quantidade de dinheiro sujo para lavagem (max {1} R$): ",
      laundered = "~g~{1}R$ ~s~Lavado.",
      not_enough = "~r~Não há dinheiro sujo suficiente."
    },
    open = {
      title = "Abrir Negógcios",
      description = "Abra seu negócio, o capital mínimo é {1} R$.",
      prompt_name = "Nome da empresa (Não pode mudar depois, max {1} Caracteres):",
      prompt_capital = "Capital Inicial (min {1})",
      created = "~g~Empresa Aberta."
      
    }
  },
  cityhall = {
    title = "Prefeitura",
    identity = {
      title = "Nova identidade",
      description = "Crie uma nova identidade, custa = {1} R$.",
      prompt_firstname = "Inserir seu nome:",
      prompt_name = "Inserir seu sobre nome :",
      prompt_age = "Inserir sua idade:",
    },
    menu = {
      title = "Identidade",
      info = "<em>Sobre nome: </em>{1}<br /><em>Nome: </em>{2}<br /><em>Idade: </em>{3}<br /><em>Registro n°: </em>{4}<br /><em>Celular: </em>{5}<br /><em>Endereço: </em>{7}, {6}"
    }
  },
  police = {
    title = "Policia",
    wanted = "classificação de procurado {1}",
    not_handcuffed = "~r~Não algemado",
    cloakroom = {
      title = "vestiário",
      uniform = {
        title = "Uniforme",
        description = "Vestir Uniforme."
      }
    },
    pc = {
      title = "PC",
      searchreg = {
        title = "Pesquisa de registro",
        description = "Procurar identidade por registro.",
        prompt = "Insira o número de registro:"
      },
      closebusiness = {
        title = "Fechar Empresa",
        description = "Fechar o Empresa do jogador mais próximo.",
        request = "Você tem certeza de fechar a empresa? {3} propriedade de {1} {2} ?",
        closed = "~g~Empresa Fechada."
      },
      trackveh = {
        title = "Localizar Veículo",
        description = "Localizar um veículo pelo seu número de registro.",
        prompt_reg = "Inserir numero de registro:",
        prompt_note = "inserir nota / razão de localizamento:",
        tracking = "~b~Localização iniciada.",
        track_failed = "~b~Localização do {1}~s~ ({2}) ~n~~r~Falhou.",
        tracked = "Localizado {1} ({2})"
      },
      records = {
        show = {
          title = "Mostrar registros",
          description = "Mostrar os registros da polícia por número de registro."
        },
        delete = {
          title = "Limpar Registros",
          description = "Limpar registros policiais por número de registro.",
          deleted = "~b~Registro da Policia deletado"
        }
      }
    },
    menu = {
      handcuff = {
        title = "Algemar",
        description = "Algemar/Desalgemar Jogador mais próximo."
      },
      putinveh = {
        title = "Colocar no veículo",
        description = "Colocar o jogador mais próximo algemado no veículo, como passageiro."
      },
      getoutveh = {
        title = "Tirar do veículo",
        description = "tirar do veículo o jogador algemado mais próximo."
      },
      askid = {
        title = "Pedir identidade",
        description = "Pedir identidade do jogador mais próximo.",
        request = "Identidade por favor ?",
        request_hide = "Pode Guardar.",
        asked = "Pedindo identidade..."
      },
      check = {
        title = "verificar jogador",
        description = "Verifique dinheiro, estoque e armas do jogador mais próximo.",
        request_hide = "Ocultar o relatório.",
        info = "<em>Dinheiro: </em>{1} R$<br /><br /><em>Inventário: </em>{2}<br /><br /><em>Armas: </em>{3}",
        checked = "Você tomou um baculeijo."
      },
      seize = {
        seized = "apreender {2} ~r~{1}",
        weapons = {
          title = "apreender armas",
          description = "apreender armas do jogador mais próximo.",
          seized = "~b~Suas armas foram apreendidas."
        },
        items = {
          title = "apreender ilegais",
          description = "apreender itens ilegais",
          seized = "~b~Seus itens ilegais foram apreendidos."
        }
      },
      jail = {
        title = "Prender",
        description = "prender/soltar jogador mais próximo dentro da delegacia mais próxima.",
        not_found = "~r~Nenhuma prisão encontrada.",
        jailed = "~b~Preso.",
        unjailed = "~b~Solto.",
        notify_jailed = "~b~Você foi preso.",
        notify_unjailed = "~b~Você foi solto."
      },
      fine = {
        title = "Multar",
        description = "Multar jogador mais próximo.",
        fined = "~b~Multado ~s~{2} R$ por ~b~{1}.",
        notify_fined = "~b~Você foi multado ~s~ {2} $ por ~b~{1}.",
        record = "[Multa] {2} R$ por {1}"
      },
      store_weapons = {
        title = "Guardar Armas",
        description = "Guarde suas armas no baú."
      }
    },
    identity = {
      info = "<em>Sobre nome: </em>{1}<br /><em>Nome: </em>{2}<br /><em>Idade: </em>{3}<br /><em>Registro n°: </em>{4}<br /><em>Celular: </em>{5}<br /><em>Empresa: </em>{6}<br /><em>Capital da empresa: </em>{7} R$<br /><em>Endereço: </em>{9}, {8}"
    }
  },
  emergency = {
    menu = {
      revive = {
        title = "Reanimar",
        description = "Reanimar jogador mais próximo.",
        not_in_coma = "~r~Não está em coma."
      }
    }
  },
  phone = {
    title = "Celular",
    directory = {
      title = "lista telefônica",
      description = "Abrir lista telefônica.",
      add = {
        title = "> Adicionar",
        prompt_number = "Inserir número para adicionar:",
        prompt_name = "Inserir nome:",
        added = "~g~Adicionado com sucesso."
      },
      sendsms = {
        title = "Enviar SMS",
        prompt = "Inserir mensagem (max {1} Caracteres):",
        sent = "~g~ Enviar para n°{1}.",
        not_sent = "~r~ n°{1} indisponível."
      },
      sendpos = {
        title = "Enviar posição",
      },
      remove = {
        title = "Remover"
      }
    },
    sms = {
      title = "SMS histórico",
      description = "SMS.",
      info = "<em>{1}</em><br /><br />{2}",
      notify = "SMS~b~ {1}:~s~ ~n~{2}"
    },
    smspos = {
      notify = "SMS-posição ~b~ {1}"
    },
    service = {
      title = "Serviço",
      description = "Ligar para Serviço ou numero de emergência.",
      prompt = "Se precisar, inserir mensagem para o serviço:",
      ask_call = "Recebeu {1} ligação, você quer atender ? <em>{2}</em>",
      taken = "~r~Esta chamada já está sendo tomada."
    },
    announce = {
      title = "Anunciar",
      description = "Poste um anuncio para todos por tempo limitido.",
      item_desc = "{1} R$<br /><br/>{2}",
      prompt = "conteúdo do anúncio (10-1000 caracteres): "
    }
  },
  emotes = {
    title = "animação",
    clear = {
      title = "> Limpar",
      description = "Limpar todas as animações."
    }
  },
  home = {
    buy = {
      title = "Comprar",
      description = "Compre um apartamento aqui, preço {1} R$.",
      bought = "~g~Comprado.",
      full = "~r~Lugar está cheio.",
      have_home = "~r~Você já tem um apartamento."
    },
    sell = {
      title = "Vender",
      description = "Vender sua casa por {1} R$",
      sold = "~g~Vendido.",
      no_home = "~r~Você não tem apartamento aqui."
    },
    intercom = {
      title = "Interfone",
      description = "Use o interfone para entrar.",
      prompt = "Número:",
      not_available = "~r~Não disponível.",
      refused = "~r~Recusado para entrar.",
      prompt_who = "Diga quem você é:",
      asked = "Perguntando...",
      request = "Alguém está batendo na sua porta: <em>{1}</em>"
    },
    slot = {
      leave = {
        title = "Sair"
      },
      ejectall = {
        title = "Retirar todos",
        description = "Ejetar todos os visitantes domésticos, incluindo você, e fechar a casa."
      }
    },
    wardrobe = {
      title = "Guarda Roupa",
      save = {
        title = "> Salvar",
        prompt = " Nome para salvar:"
      }
    },
    gametable = {
      title = "Jogos de Tabela",
      bet = {
        title = "Aposta inicial",
        description = "Comece uma aposta com jogadores perto de você, o vencedor será selecionado aleatoriamente.",
        prompt = "Valor da aposta:",
        request = "[BET] Você quer apostar {1} R$ ?",
        started = "~g~Aposta iniciada."
      }
    }
  },
  garage = {
    title = "Garagem ({1})",
    owned = {
      title = "Possuído",
      description = "Seus Veículos."
    },
    buy = {
      title = "Comprar",
      description = "Comprar Veículo.",
      info = "{1} R$<br /><br />{2}"
    },
    sell = {
      title = "Vender",
      description = "Vender Veículo."
    },
    rent = {
      title = "Alugar",
      description = "Alugue um veículo para a sessão (até você se desconectar)."
    },
    store = {
      title = "Loja",
      description = "Coloque seu veículo atual na garagem."
    }
  },
  vehicle = {
    title = "Veículo",
    no_owned_near = "~r~Nenhum veículo de pessoal perto.",
    trunk = {
      title = "Baú",
      description = "Abrir baú"
    },
    detach_trailer = {
      title = "Retirar trailer",
      description = "Retirar trailer."
    },
    detach_towtruck = {
      title = "Descarte caminhão de reboque",
      description = "Descarte caminhão de reboque."
    },
    detach_cargobob = {
      title = "Desanexar carga",
      description = "Desanexar carga."
    },
    lock = {
      title = "Trancar/Destrancar",
      description = "Trancar ou destrancar veículo."
    },
    engine = {
      title = "Motor Ligar/Desligar",
      description = "Ligar ou desligar motor."
    },
    asktrunk = {
      title = "Pedir para abrir Porta mala",
      asked = "~g~Pedindo...",
      request = "Abra o porta mala por favor ?"
    },
    replace = {
      title = "Substituir veículo",
      description = "Substituir No solo o veículo mais próximo."
    },
    repair = {
      title = "Reparar veículo",
      description = "Reparar veículo mais próximo."
    }
  },
  gunshop = {
    title = "Loja de Armas ({1})",
    prompt_ammo = "Quantidade de munição a comprar para {1}:",
    info = "<em>body: </em> {1} R$<br /><em>munição: </em> {2} R$/u<br /><br />{3}"
  },
  market = {
    title = "Mercado ({1})",
    prompt = "Quantidade de {1} para comprar:",
    info = "{1} R$<br /><br />{2}"
  },
  skinshop = {
    title = "Loja de roupas"
  },
  cloakroom = {
    title = "guarda-roupa ({1})",
    undress = {
      title = "> Despir"
    }
  },
  itemtr = {
    informer = {
      title = "Informante ilegal",
      description = "{1} R$",
      bought = "~g~Posição mandada para o seu GPS."
    }
  },
  mission = {
    blip = "Missão ({1}) {2}/{3}",
    display = "<span class=\"name\">{1}</span> <span class=\"step\">{2}/{3}</span><br /><br />{4}",
    cancel = {
      title = "Cancelar missão"
    }
  },
  aptitude = {
    title = "Aptidões",
    description = "Show Aptidões.",
    lose_exp = "Aptidão ~b~{1}/{2} ~r~-{3} ~s~exp.",
    earn_exp = "Aptidão ~b~{1}/{2} ~g~+{3} ~s~exp.",
    level_down = "Aptidões ~b~{1}/{2} ~r~Perda de nível ({3}).",
    level_up = "Aptidões ~b~{1}/{2} ~g~subir nível ({3}).",
    display = {
      group = "{1}: ",
      aptitude = "--- {1} | exp {2} | lvl {3} | progresso {4}%"
    }
  }
}

return lang
