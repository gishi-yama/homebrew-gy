cask 'oracle-openjdk11' do
  version '11,28'
  sha256 "6b969d2df6a9758d9458f5ba47939250e848dfba8b49e41c935cf210606b6d38"
  url "https://download.java.net/java/GA/jdk11/28/GPL/openjdk-11+28_osx-x64_bin.tar.gz"
  name "Production-ready open-source builds of the Java Development Kit, from Oracle"
  homepage "http://jdk.java.net/11"
  
  # auto_updates true: JDK does not auto-update
  depends_on macos: '>= :yosemite'

  postflight do
    system_command '/bin/cp',
                   args: ['-Rf', "/usr/local/Caskroom/oracle-openjdk11/#{version}/jdk-#{version.before_comma}.jdk", "/Library/Java/JavaVirtualMachines/"],
                   sudo: true
    system_command '/usr/sbin/chown',
                   args: ['-Rf', "root:wheel", "/Library/Java/JavaVirtualMachines/jdk-#{version.before_comma}.jdk"],
                   sudo: true
    system_command '/usr/libexec/PlistBuddy',
                   args: ['-c', 'Add :JavaVM:JVMCapabilities: string BundledApp', "/Library/Java/JavaVirtualMachines/jdk-#{version.before_comma}.jdk/Contents/Info.plist"],
                   sudo: true
    system_command '/usr/libexec/PlistBuddy',
                   args: ['-c', 'Add :JavaVM:JVMCapabilities: string JNI', "/Library/Java/JavaVirtualMachines/jdk-#{version.before_comma}.jdk/Contents/Info.plist"],
                   sudo: true
    system_command '/usr/libexec/PlistBuddy',
                   args: ['-c', 'Add :JavaVM:JVMCapabilities: string WebStart', "/Library/Java/JavaVirtualMachines/jdk-#{version.before_comma}.jdk/Contents/Info.plist"],
                   sudo: true
    system_command '/usr/libexec/PlistBuddy',
                   args: ['-c', 'Add :JavaVM:JVMCapabilities: string Applets', "/Library/Java/JavaVirtualMachines/jdk-#{version.before_comma}.jdk/Contents/Info.plist"],
                   sudo: true
    system_command '/bin/ln',
                   args: ['-nsf', '--', "/Library/Java/JavaVirtualMachines/jdk-#{version.before_comma}.jdk/Contents/Home", '/Library/Java/Home'],
                   sudo: true
    system_command '/bin/ln',
                   args: ['-nsf', '--', "/Library/Java/JavaVirtualMachines/jdk-#{version.before_comma}.jdk/Contents/MacOS", '/Library/Java/MacOS'],
                   sudo: true
    system_command '/bin/mkdir',
                   args: ['-p', '--', "/Library/Java/JavaVirtualMachines/jdk-#{version.before_comma}.jdk/Contents/Home/bundle/Libraries"],
                   sudo: true
    system_command '/bin/ln',
                   args: ['-nsf', '--', "/Library/Java/JavaVirtualMachines/jdk-#{version.before_comma}.jdk/Contents/Home/lib/server/libjvm.dylib", "/Library/Java/JavaVirtualMachines/jdk-#{version.before_comma}.jdk/Contents/Home/bundle/Libraries/libserver.dylib"],
                   sudo: true
  end

  uninstall delete:    [
                         '/Library/Internet Plug-Ins/JavaAppletPlugin.plugin',
                         "/Library/Java/JavaVirtualMachines/jdk-#{version.before_comma}.jdk/Contents",
                         '/Library/PreferencePanes/JavaControlPanel.prefPane',
                         '/Library/Java/Home',
                         '/Library/Java/MacOS',
                       ],
            rmdir:     "/Library/Java/JavaVirtualMachines/jdk-#{version.before_comma}.jdk"

  zap trash: [
               '/Library/Application Support/Oracle/Java',
               '/Library/Preferences/com.oracle.java.Deployment.plist',
               '/Library/Preferences/com.oracle.java.Helper-Tool.plist',
               '~/Library/Application Support/Java/',
               '~/Library/Application Support/Oracle/Java',
               '~/Library/Caches/com.oracle.java.Java-Updater',
               '~/Library/Caches/Oracle.MacJREInstaller',
               '~/Library/Caches/net.java.openjdk.cmd',
               '~/Library/Preferences/com.oracle.java.Java-Updater.plist',
               '~/Library/Preferences/com.oracle.java.JavaAppletPlugin.plist',
               '~/Library/Preferences/com.oracle.javadeployment.plist',
             ],
      rmdir: [
               '/Library/Application Support/Oracle/',
               '~/Library/Application Support/Oracle/',
             ]

  caveats do
    license 'http://openjdk.java.net/legal/gplv2+ce.html'
  end
end
