# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Foster.Repo.insert!(%Foster.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

alias Foster.Repo
alias Foster.Answers

answers = [
  %{
    body: %{
      heard_about_fostering: "friend",
      where_heard_about: "social_media",
      agespan: "18-25",
      gender: "feminino",
      family_situation: "single",
      children: "nao",
      pt_region: "norte",
      motive_for_fostering: "altruism",
      motive_against_fostering: "financial",
      challenges: "time management"
    }
  },
  %{
    body: %{
      heard_about_fostering: "website",
      where_heard_about: "blog",
      agespan: "26-35",
      gender: "masculino",
      family_situation: "married",
      children: "sim",
      pt_region: "centro",
      motive_for_fostering: "talent/love for children",
      motive_against_fostering: "fear of attach/loss",
      challenges: "emotional attachment"
    }
  },
  %{
    body: %{
      heard_about_fostering: "community_event",
      where_heard_about: "radio",
      agespan: "36-49",
      gender: "feminino",
      family_situation: "living with partner",
      children: "sim",
      pt_region: "lisboa",
      motive_for_fostering: "money support",
      motive_against_fostering: "home condition",
      challenges: "financial stability"
    }
  },
  %{
    body: %{
      heard_about_fostering: "family_member",
      where_heard_about: "newspaper",
      agespan: "50-65",
      gender: "masculino",
      family_situation: "divorced",
      children: "nao",
      pt_region: "alentejo",
      motive_for_fostering: "altruism",
      motive_against_fostering: "fear of difficult child",
      challenges: "legal procedures"
    }
  },
  %{
    body: %{
      heard_about_fostering: "brochure",
      where_heard_about: "church",
      agespan: "26-35",
      gender: "feminino",
      family_situation: "single",
      children: "nao",
      pt_region: "algarve",
      motive_for_fostering: "talent/love for children",
      motive_against_fostering: "financial",
      challenges: "time management"
    }
  },
  %{
    body: %{
      heard_about_fostering: "seminar",
      where_heard_about: "school",
      agespan: "18-25",
      gender: "masculino",
      family_situation: "single",
      children: "nao",
      pt_region: "madeira",
      motive_for_fostering: "altruism",
      motive_against_fostering: "fear of attach/loss",
      challenges: "forming connections"
    }
  },
  %{
    body: %{
      heard_about_fostering: "coworker",
      where_heard_about: "office",
      agespan: "36-49",
      gender: "feminino",
      family_situation: "married",
      children: "sim",
      pt_region: "acores",
      motive_for_fostering: "money support",
      motive_against_fostering: "home condition",
      challenges: "adjusting schedules"
    }
  },
  %{
    body: %{
      heard_about_fostering: "advertisement",
      where_heard_about: "TV",
      agespan: "50-65",
      gender: "feminino",
      family_situation: "retired",
      children: "sim",
      pt_region: "norte",
      motive_for_fostering: "talent/love for children",
      motive_against_fostering: "fear of difficult child",
      challenges: "health"
    }
  },
  %{
    body: %{
      heard_about_fostering: "online_forum",
      where_heard_about: "Facebook",
      agespan: "18-25",
      gender: "masculino",
      family_situation: "living with partner",
      children: "nao",
      pt_region: "centro",
      motive_for_fostering: "altruism",
      motive_against_fostering: "financial",
      challenges: "finding resources"
    }
  },
  %{
    body: %{
      heard_about_fostering: "charity_event",
      where_heard_about: "local_market",
      agespan: "26-35",
      gender: "feminino",
      family_situation: "in a relationship",
      children: "sim",
      pt_region: "lisboa",
      motive_for_fostering: "money support",
      motive_against_fostering: "fear of attach/loss",
      challenges: "work-life balance"
    }
  },
  %{
    body: %{
      heard_about_fostering: "friend",
      where_heard_about: "local_news",
      agespan: "50-65",
      gender: "masculino",
      family_situation: "divorced",
      children: "sim",
      pt_region: "alentejo",
      motive_for_fostering: "talent/love for children",
      motive_against_fostering: "fear of difficult child",
      challenges: "time"
    }
  },
  %{
    body: %{
      heard_about_fostering: "support_group",
      where_heard_about: "community_center",
      agespan: "36-49",
      gender: "feminino",
      family_situation: "widowed",
      children: "nao",
      pt_region: "algarve",
      motive_for_fostering: "altruism",
      motive_against_fostering: "financial",
      challenges: "space"
    }
  },
  %{
    body: %{
      heard_about_fostering: "charity_event",
      where_heard_about: "newspaper",
      agespan: "26-35",
      gender: "masculino",
      family_situation: "living with partner",
      children: "sim",
      pt_region: "madeira",
      motive_for_fostering: "money support",
      motive_against_fostering: "fear of attach/loss",
      challenges: "emotional preparedness"
    }
  },
  %{
    body: %{
      heard_about_fostering: "coworker",
      where_heard_about: "email",
      agespan: "18-25",
      gender: "feminino",
      family_situation: "single",
      children: "nao",
      pt_region: "acores",
      motive_for_fostering: "altruism",
      motive_against_fostering: "home condition",
      challenges: "legal requirements"
    }
  },
  %{
    body: %{
      heard_about_fostering: "advertisement",
      where_heard_about: "website",
      agespan: "50-65",
      gender: "masculino",
      family_situation: "married",
      children: "sim",
      pt_region: "norte",
      motive_for_fostering: "talent/love for children",
      motive_against_fostering: "fear of difficult child",
      challenges: "support"
    }
  },
  %{
    body: %{
      heard_about_fostering: "seminar",
      where_heard_about: "radio",
      agespan: "36-49",
      gender: "feminino",
      family_situation: "widowed",
      children: "sim",
      pt_region: "centro",
      motive_for_fostering: "money support",
      motive_against_fostering: "financial",
      challenges: "stigma"
    }
  },
  %{
    body: %{
      heard_about_fostering: "brochure",
      where_heard_about: "school",
      agespan: "18-25",
      gender: "masculino",
      family_situation: "single",
      children: "nao",
      pt_region: "lisboa",
      motive_for_fostering: "altruism",
      motive_against_fostering: "fear of attach/loss",
      challenges: "legal knowledge"
    }
  },
  %{
    body: %{
      heard_about_fostering: "website",
      where_heard_about: "social_media",
      agespan: "26-35",
      gender: "feminino",
      family_situation: "living with partner",
      children: "sim",
      pt_region: "alentejo",
      motive_for_fostering: "talent/love for children",
      motive_against_fostering: "home condition",
      challenges: "time"
    }
  },
  %{
    body: %{
      heard_about_fostering: "community_event",
      where_heard_about: "news",
      agespan: "50-65",
      gender: "masculino",
      family_situation: "divorced",
      children: "sim",
      pt_region: "algarve",
      motive_for_fostering: "money support",
      motive_against_fostering: "fear of difficult child",
      challenges: "building trust"
    }
  },
  %{
    body: %{
      heard_about_fostering: "TV_program",
      where_heard_about: "workplace",
      agespan: "36-49",
      gender: "feminino",
      family_situation: "married",
      children: "sim",
      pt_region: "madeira",
      motive_for_fostering: "altruism",
      motive_against_fostering: "financial",
      challenges: "cultural barriers"
    }
  }
]



Enum.each(answers, fn answer ->
  Answers.create_answer(answer)
end)
