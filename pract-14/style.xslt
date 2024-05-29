<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <!-- Define variables for common elements -->
  <xsl:variable name="borderColor" select="'#cccccc'" />
  <xsl:variable name="bgColor" select="'#f2f2f2'" />
  <xsl:variable name="textColor" select="'#333333'" />
  <xsl:variable name="fontFamily" select="'Arial, sans-serif'" />
  
  <!-- Define styles -->
  <xsl:template match="/">
    <html>
      <head>
        <title>Registration Form</title>
        <style type="text/css">
          body {{
            font-family: {$fontFamily};
            color: {$textColor};
            margin: 0;
            padding: 0;
            background-color: #f5f5f5;
          }}
          h2 {{
            text-align: center;
            margin-top: 20px;
          }}
          .container {{
            max-width: 600px;
            margin: 20px auto;
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
            padding: 20px;
          }}
          table {{
            border-collapse: collapse;
            width: 100%;
            margin-bottom: 20px;
          }}
          th, td {{
            border: 1px solid {$borderColor};
            padding: 10px;
          }}
          th {{
            background-color: {$bgColor};
            text-align: left;
          }}
          input[type="text"], select {{
            width: calc(100% - 22px);
            padding: 8px 10px;
            margin: 4px 0;
            box-sizing: border-box;
            border: 1px solid {$borderColor};
            border-radius: 4px;
          }}
          input[type="checkbox"] {{
            margin-right: 10px;
          }}
          input[type="submit"] {{
            background-color: #4CAF50;
            color: white;
            padding: 12px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            float: right;
          }}
          input[type="submit"]:hover {{
            background-color: #45a049;
          }}
        </style>
      </head>
      <body>
        <div class="container">
          <h2>Registration Form</h2>
          <form>
            <table>
              <tr>
                <th colspan="2">Personal Information</th>
              </tr>
              <tr>
                <td>Name:</td>
                <td><input type="text" name="name" value="{registration_form/personal_information/name}" readonly="readonly"/></td>
              </tr>
              <tr>
                <td>Email:</td>
                <td><input type="text" name="email" value="{registration_form/personal_information/email}" readonly="readonly"/></td>
              </tr>
              <tr>
                <td>Phone:</td>
                <td><input type="text" name="phone" value="{registration_form/personal_information/phone}" readonly="readonly"/></td>
              </tr>
              <tr>
                <td>Address:</td>
                <td>
                  <input type="text" name="street" value="{registration_form/personal_information/address/street}" readonly="readonly"/><br/>
                  <input type="text" name="city" value="{registration_form/personal_information/address/city}" readonly="readonly"/>,
                  <input type="text" name="state" value="{registration_form/personal_information/address/state}" readonly="readonly"/>
                  <input type="text" name="zip" value="{registration_form/personal_information/address/zip}" readonly="readonly"/>
                </td>
              </tr>
              <tr>
                <th colspan="2">Additional Information</th>
              </tr>
              <tr>
                <td>Age:</td>
                <td><input type="text" name="age" value="{registration_form/additional_information/age}" readonly="readonly"/></td>
              </tr>
              <tr>
                <td>Gender:</td>
                <td><input type="text" name="gender" value="{registration_form/additional_information/gender}" readonly="readonly"/></td>
              </tr>
              <tr>
                <td>Interests:</td>
                <td>
                  <ul>
                    <xsl:for-each select="registration_form/additional_information/interests/interest">
                      <li><xsl:value-of select="."/></li>
                    </xsl:for-each>
                  </ul>
                </td>
              </tr>
              <tr>
                <td>Subscription:</td>
                <td>
                  <label><input type="checkbox" name="newsletter" value="{registration_form/additional_information/subscription/newsletter}" checked="checked" disabled="disabled"/> Newsletter</label><br/>
                  <label><input type="checkbox" name="updates" value="{registration_form/additional_information/subscription/updates}" disabled="disabled"/> Updates</label>
                </td>
              </tr>
            </table>
            <input type="submit" value="Submit"/>
          </form>
        </div>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
