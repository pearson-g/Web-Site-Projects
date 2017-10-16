(function()
{
    CKEDITOR.plugins.add( 'gemelpage',
    {
        init : function( editor )
        {
            // Register the command.
            editor.addCommand( 'gemelpage',{
                exec : function( editor )
                {
                    // Create the element that represents a print break.
                   
                    editor.insertHtml("#p#副标题#e#");
                }
            });
            // alert('gemelpage!');
            // Register the toolbar button.
            editor.ui.addButton( 'MyPage',
            {
                label : '插入分页符',
                command : 'gemelpage',
                icon: 'images/page.gif'
            });
            // alert(editor.name);
        },
        requires : [ 'fakeobjects' ]
    });
})();
