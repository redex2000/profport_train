addTerm = (e) ->
  $('.add-term').click (e) ->
    e.preventDefault()
    count = $('#terms-count').val()
    $('#terms-count').val(++count)
    template = '<div class="term">\n' +
      '<div class="form-group string optional competence_terms_title">' +
      '<label class="control-label string optional" for="competence_terms_attributes_'+count+'_title">Название</label>' +
      '<input class="form-control string optional" type="text" name="competence[terms_attributes]['+count+'][title]" id="competence_terms_attributes_'+count+'_title"></div>\n' +
      '<div class="form-group text optional competence_terms_definition">' +
      '<label class="control-label text optional" for="competence_terms_attributes_'+count+'_definition">Определение</label>' +
      '<textarea class="form-control text optional" name="competence[terms_attributes]['+count+'][definition]" id="competence_terms_attributes_'+count+'_definition"></textarea>' +
      '</div>\n' +
      '<div class="form-group boolean optional competence_terms__destroy">' +
      '<div class="checkbox">' +
      '<input value="0" type="hidden" name="competence[terms_attributes]['+count+'][_destroy]">' +
      '<label class="boolean optional" for="competence_terms_attributes_'+count+'__destroy">' +
      '<input class="boolean optional" type="checkbox" value="1" name="competence[terms_attributes]['+count+'][_destroy]" id="competence_terms_attributes_'+count+'__destroy">' +
      'Удалить</label></div></div>\n' +
      '</div>'
    $('.terms').append(template)

# Необходимо обрабатывать это событие вместо ready, при использовании turbolinks
$(document).on 'turbolinks:load', addTerm
