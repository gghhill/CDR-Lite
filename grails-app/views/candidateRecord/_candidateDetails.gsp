<table style="width:100%;">
    <tbody>
        <tr class="prop">
            <td colspan="4">                                
              <h2>Candidate Details</h2>
            </td>
        </tr>
        <tr class="prop">
            <td valign="top">
              <div class="clearfix">
                <dl class="formdetails left">
                    <dt>Candidate ID:</dt><dd><g:link controller="candidateRecord" action="show" id="${candidateRecord.id}">${candidateRecord.candidateId.encodeAsHTML()}</g:link></dd>
                </dl>                
                <dl class="formdetails left">
                    <dt>BSS:</dt><dd>${candidateRecord.bss.name}</dd>
                </dl>
               
              </div>
            </td>
        </tr>      
    </tbody>
</table>