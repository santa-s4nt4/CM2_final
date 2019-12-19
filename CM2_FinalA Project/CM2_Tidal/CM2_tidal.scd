Quarks.checkForUpdates({Quarks.install("SuperDirt", "v1.1.1"); thisProcess.recompile()})

Platform.userExtensionDir

SuperDirt.start;

Quarks.gui;


MIDIClient.init;

~midiOut = MIDIOut.newByName("Microsoft GS Wavetable Synth", "Microsoft GS Wavetable Synth"); // substitute your own device here

~dirt.soundLibrary.addMIDI(\midi, ~midiOut);

~midiOut.latency = 0.0;

(
//forward OSC message (localhost, port 3333)
var addr = NetAddr.new("192.168.1.6", 3333);
OSCdef(\tidalplay2, {
  arg msg;
  // addr.sendMsg("", *msg //max
  addr.sendMsg("/play2", *msg
	);
}, '/play2', n);
)