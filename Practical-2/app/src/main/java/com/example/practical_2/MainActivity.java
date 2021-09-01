package com.example.practical_2;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;

public class MainActivity extends AppCompatActivity {
    public EditText etext1 ;
    public EditText etext2;
    public Button button;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        etext1=(EditText) findViewById(R.id.editText1);
        etext2=(EditText) findViewById(R.id.editText2);
        button=(Button)findViewById(R.id.button);
        button. setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                float number1=Float.parseFloat(String.valueOf(etext1.getText()));
                float number2=Float.parseFloat(String.valueOf(etext2.getText()));
                double sum;
                sum=  (double)(number1+number2);

                Context context=getApplicationContext();
                CharSequence text=String.valueOf(sum);
                Toast toast=Toast.makeText(context,text,Toast.LENGTH_LONG);
                toast.show();


            }
        });
    }
}