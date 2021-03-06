/*
 * Copyright 2000-2014 JetBrains s.r.o.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package jetbrains.buildServer.clouds.azure;

import org.jetbrains.annotations.NotNull;

import java.io.File;

/**
 * Created by Maarten on 6/5/2014.
 */
public class AzureCloudConstants {
  @NotNull
  public static final String CLOUD_CODE = "azure";
  @NotNull
  public static final String CLOUD_DISPLAY_NAME = "Microsoft Azure";
  @NotNull
  public static final String PARAM_NAME_PUBLISHSETTINGS = "cloud.azure.publishsettings";
  @NotNull
  public static final String PARAM_NAME_SUBSCRIPTION = "cloud.azure.subscription";
  @NotNull
  public static final String PARAM_NAME_VMNAMES = "cloud.azure.vmnames";
  @NotNull
  public static final String KEYSTORE_NAME = "azkst.kst";
  @NotNull
  public static final String KEYSTORE_PWD = "azkst";

  private AzureCloudConstants() {
  }

  public static String getKeyStorePath() {
    // TODO: Right now the keystore can be used for one cloud profile only. Either support for multiple should be added or a keystore-per-cloud should be created
    return new File(System.getProperty("java.io.tmpdir"), KEYSTORE_NAME).getPath();
  }
}

