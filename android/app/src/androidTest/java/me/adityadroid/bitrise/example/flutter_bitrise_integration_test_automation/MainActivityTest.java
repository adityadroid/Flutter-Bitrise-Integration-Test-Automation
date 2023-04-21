package me.adityadroid.bitrise.example.flutter_bitrise_integration_test_automation;

import androidx.test.rule.ActivityTestRule;
import dev.flutter.plugins.integration_test.FlutterTestRunner;
import org.junit.Rule;
import org.junit.runner.RunWith;
import me.adityadroid.bitrise.example.flutter_bitrise_integration_test_automation.MainActivity;

@RunWith(FlutterTestRunner.class)
public class MainActivityTest {
    @Rule
    public ActivityTestRule<MainActivity> rule = new ActivityTestRule<>(MainActivity.class, true, false);
}
