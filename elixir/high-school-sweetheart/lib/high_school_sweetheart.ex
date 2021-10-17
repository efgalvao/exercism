defmodule HighSchoolSweetheart do
  def first_letter(name) do
    String.at(String.trim(name), 0)
  end

  def initial(name) do
    String.upcase(first_letter(name)) <> "."
  end

  def initials(full_name) do
    names = String.split(full_name, " ", trim: true)
    initials = Enum.map(names, fn name -> String.upcase(initial(name)) end)
    Enum.join(initials, " ")
  end

  def pair(full_name1, full_name2) do
    """
         ******       ******
       **      **   **      **
     **         ** **         **
    **            *            **
    **                         **
    **     #{initials(full_name1)}  +  #{initials(full_name2)}     **
     **                       **
       **                   **
         **               **
           **           **
             **       **
               **   **
                 ***
                  *
    """
  end
end
