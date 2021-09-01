package com.example.practical_3;
import android.os.Bundle;
import android.os.SystemClock;
import android.view.View;
import android.widget.Button;
import android.widget.Chronometer;

import androidx.appcompat.app.AppCompatActivity;

public class MainActivity extends AppCompatActivity {

    Chronometer simpleChronometer;
    Button start, stop, restart;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        // initiate views
        simpleChronometer = (Chronometer) findViewById(R.id.simpleChronometer);
        start = (Button) findViewById(R.id.startButton);
        stop = (Button) findViewById(R.id.stopButton);
        restart = (Button) findViewById(R.id.restartButton);

        start.setOnClickListener(new View.OnClickListener() {

            @Override
            public void onClick(View v) {


                simpleChronometer.start();
            }
        });


        stop.setOnClickListener(new View.OnClickListener() {

            @Override
            public void onClick(View v) {

                simpleChronometer.stop();
            }
        });

        restart.setOnClickListener(new View.OnClickListener() {

            @Override
            public void onClick(View v) {

                simpleChronometer.setBase(SystemClock.elapsedRealtime());
            }
        });
    }
}