defmodule Lesson_06.Task_06_02_TypedEvent do

  defmodule Event do
    @type t :: %__MODULE__{
      title: String.t,
      datetime: Datetime.t,
      location: Location.t,
      participants: list(Participant.t),
      agenda: list(Topic.t)
    }
    defstruct [
      :title,
      :datetime,
      :location,
      :participants,
      :agenda
    ]
  end

  defmodule Address do
    @type t :: %__MODULE__{
      country: String.t,
      city: String.t,
      street: String.t,
      house_number: String.t
    }
    @enforce_keys [:city, :street, :house_number]
    defstruct [
      {:country, "Belarus"},
      :city,
      :street,
      :house_number
    ]
  end

  defmodule Room do
    @type t :: %__MODULE__{
      floor: integer,
      number: integer
    }
    @enforce_keys [:number]
    defstruct [:floor, :number]
  end

  defmodule Location do
    @type t :: %__MODULE__{
      address: Address.t,
      room: Broom.t
    }
    @enforce_keys [:address, :room]
    defstruct [:address, :room]
  end

  defmodule Participant do
    @type t :: %__MODULE__{
      species: atom,
      name: String.t,
      role: atom
    }
    @enforce_keys [:name, :role]
    defstruct [
      {:species, :human},
      :name,
      :role
    ]
  end

  defmodule Topic do
    @type t :: %__MODULE__{
      priority: :high | :medium | :low,
      title: String.t
    }
    @enforce_keys [:title]
    defstruct [
      {:priority, :medium},
      :title
    ]
  end

end

